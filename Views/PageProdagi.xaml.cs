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
    /// Логика взаимодействия для PageProdagi.xaml
    /// </summary>
    public partial class PageProdagi 
    {
        public PageProdagi()
        {
            InitializeComponent();
            DtGridProdagi.ItemsSource = AptekaEntities.GetContext().Prodagi.ToList();
        }

        private void Ydalit_Click(object sender, RoutedEventArgs e)
        {
            var tovarForRemoving = DtGridProdagi.SelectedItems.Cast<Prodagi>().ToList();
            if (MessageBox.Show($"Вы точно хотите удалить следующее {tovarForRemoving.Count()} элементов?", "Внимание",
                MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {
                    AptekaEntities.GetContext().Prodagi.RemoveRange(tovarForRemoving);
                    AptekaEntities.GetContext().SaveChanges();
                    MessageBox.Show("Данные удалены");

                    DtGridProdagi.ItemsSource = AptekaEntities.GetContext().Prodagi.ToList();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString());
                }
            }
        }

        private void Dobavit_Click(object sender, RoutedEventArgs e)
        {
            Manager.FrameMain.Navigate(new PageAddProdagi(null));
        }

        private void Nazad_Click(object sender, RoutedEventArgs e)
        {
            Manager.FrameMain.Navigate(new PageGlavnaya());
        }

        private void Redact_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
