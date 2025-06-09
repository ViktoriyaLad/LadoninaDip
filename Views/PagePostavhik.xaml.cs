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
    /// Логика взаимодействия для PagePostavhik.xaml
    /// </summary>
    public partial class PagePostavhik
    {
        public PagePostavhik()
        {
            InitializeComponent();
            DtGridPostavhik.ItemsSource = AptekaEntities.GetContext().Postavshik.ToList();
        }

        private void Ydalit_Click(object sender, RoutedEventArgs e)
        {
            var tovarForRemoving = DtGridPostavhik.SelectedItems.Cast<Postavshik>().ToList();
            if (MessageBox.Show($"Вы точно хотите удалить следующее {tovarForRemoving.Count()} элементов?", "Внимание",
                MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {
                    AptekaEntities.GetContext().Postavshik.RemoveRange(tovarForRemoving);
                    AptekaEntities.GetContext().SaveChanges();
                    MessageBox.Show("Данные удалены");

                    DtGridPostavhik.ItemsSource = AptekaEntities.GetContext().Postavshik.ToList();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString());
                }
            }
        }

        private void Dobavit_Click(object sender, RoutedEventArgs e)
        {
            Manager.FrameMain.Navigate(new PageAddPostavhik(null));
        }

        private void Nazad_Click(object sender, RoutedEventArgs e)
        {
            Manager.FrameMain.Navigate(new PageGlavnaya());
        }

        private void Redact_Click(object sender, RoutedEventArgs e)
        {
            Manager.FrameMain.Navigate(new PageAddPostavhik(null));
        }
    }
}
