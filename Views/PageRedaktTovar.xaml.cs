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
    /// Логика взаимодействия для PageRedaktTovar.xaml
    /// </summary>
    public partial class PageRedaktTovar : Page
    {
        private Tovar _currentApteka = new Tovar();
        public PageRedaktTovar(Tovar selectedTovar)
        {
            InitializeComponent();
            if (selectedTovar != null)
                _currentApteka = selectedTovar;

            DataContext = _currentApteka;
        }

        private void Soxranit_Click(object sender, RoutedEventArgs e)
        {

            StringBuilder errors = new StringBuilder();

            if (string.IsNullOrWhiteSpace(_currentApteka.TovarName))
                errors.AppendLine("Укажите название товара");
            if (_currentApteka.IDPostavshika <= 0)
                errors.AppendLine("Цена не может быть меньше 0");
            if (_currentApteka.Quantity <= 0)
                errors.AppendLine("Выберите вид");


            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
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

        private void Nazad_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }
    }
}
