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
    /// Логика взаимодействия для PageAddTovar.xaml
    /// </summary>
    public partial class PageAddTovar : Page
    {
        private Tovar _currentTovar = new Tovar();
        public PageAddTovar(Tovar selecdTovar)
        {
            InitializeComponent();
            if (selecdTovar != null)
                _currentTovar = selecdTovar;

            DataContext = _currentTovar;
        }

        private void Soxranit_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();


            if (string.IsNullOrWhiteSpace(_currentTovar.TovarName))
                errors.AppendLine("Укажите название товара");
            if (string.IsNullOrWhiteSpace(_currentTovar.SalePrice))
                errors.AppendLine("Укажите цену товара");
            if (string.IsNullOrWhiteSpace(_currentTovar.Recipe))
                errors.AppendLine("Введите нужен ли рецепт");

            if (_currentTovar.Quantity <= 0)
                errors.AppendLine("Количество не может быть меньше 0");



            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }

            {
                AptekaEntities.GetContext().Tovar.Add(_currentTovar);
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
