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
    /// Логика взаимодействия для PageAddProdagi.xaml
    /// </summary>
    public partial class PageAddProdagi : Page
    {
        private Prodagi _currentProdagi = new Prodagi();
        public PageAddProdagi(Prodagi selecdProdagi)
        {
            InitializeComponent();
            if (selecdProdagi != null)
                _currentProdagi = selecdProdagi;

            DataContext = _currentProdagi;
        }

        private void Nazad_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void Soxranit_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();


            if (_currentProdagi.IDList <= 0)
                errors.AppendLine("Номер листа не может быть меньше 0");
            if (_currentProdagi.IDUser <= 0)
                errors.AppendLine("Номер пользователя не может быть меньше 0");
            if (_currentProdagi.IDTovar <= 0)
                errors.AppendLine("Номер товара не может быть меньше 0");
            if (_currentProdagi.ProductPrice <= 0)
                errors.AppendLine("Цена не может быть меньше 0");





            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }

            {
                AptekaEntities.GetContext().Prodagi.Add(_currentProdagi);
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
