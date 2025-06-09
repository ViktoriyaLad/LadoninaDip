using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Apteka.ApplicationData;

namespace Apteka.Views
{
    /// <summary>
    /// Логика взаимодействия для PageRegistr.xaml
    /// </summary>
    public partial class PageRegistr 
    {
        public PageRegistr()
        {
            InitializeComponent();
        }

        private void Vxod_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();

            if (string.IsNullOrEmpty(txtBoxLogin.Text))
                errors.AppendLine("Поле \"Логин\" должно быть заполнено!");
            if (string.IsNullOrEmpty(passBoxPassword.Password))
                errors.AppendLine("Поле \"Пароль\" должно быть заполнено!");

            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString(), "Ошибка",
                    MessageBoxButton.OK, MessageBoxImage.Error);
                passBoxPassword.Password = string.Empty;
            }
            else
            {
                User _currentUser = AptekaEntities.GetContext().User.FirstOrDefault(x => x.UserLogin == txtBoxLogin.Text || x.UserPassword == passBoxPassword.Password);

                if (_currentUser != null)
                {
                    Manager.AuthUser = _currentUser;
                    MessageBox.Show($"Здраствуйте, {Manager.AuthUser.FullName}!", "Информация", MessageBoxButton.OK, MessageBoxImage.Information);
                    Manager.FrameMain.Navigate(new PageGlavnaya());
                }
                else
                {
                    MessageBox.Show("Пользователь с такими данными не найден!", "Ошибка",
                        MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }

            Manager.FrameMain.Navigate(new PageGlavnaya());
        }
    }
}
