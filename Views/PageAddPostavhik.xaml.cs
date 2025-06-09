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
    /// Логика взаимодействия для PageDobavit.xaml
    /// </summary>
    public partial class PageAddPostavhik
    {
        private Postavshik _currentPostavhik = new Postavshik();
        public PageAddPostavhik(Postavshik selecdPostavhik)
        {
            InitializeComponent();
            if (selecdPostavhik != null)
                _currentPostavhik = selecdPostavhik;

            DataContext = _currentPostavhik;
        }

        

        private void Nazad_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void Soxranit_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();

            if (string.IsNullOrWhiteSpace(_currentPostavhik.NamePostavshik))
                errors.AppendLine("Укажите название поставщика");
            if (string.IsNullOrWhiteSpace(_currentPostavhik.Address))
                errors.AppendLine("Укажите адрес");
            if (string.IsNullOrWhiteSpace(_currentPostavhik.Telephone))
                errors.AppendLine("Введите номер телефона");

            

            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }

            {
                AptekaEntities.GetContext().Postavshik.Add(_currentPostavhik);
            }
            try
            {
                AptekaEntities.GetContext().SaveChanges();
                MessageBox.Show("Информация сохранена");
                NavigationService.GoBack();

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }
    }
}
