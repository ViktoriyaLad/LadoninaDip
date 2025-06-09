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
    /// Логика взаимодействия для PageGlavnaya.xaml
    /// </summary>
    public partial class PageGlavnaya 
    {
        public PageGlavnaya()
        {
            InitializeComponent();
            Manager.SecondFrame = SecondFrame;
        }

        private void Postav_Click(object sender, RoutedEventArgs e)
        {
            Manager.SecondFrame.Navigate(new PagePostavhik());
        }

        private void Polzov_Click(object sender, RoutedEventArgs e)
        {
            Manager.SecondFrame.Navigate(new PageUser());
        }

        private void Tovar_Click(object sender, RoutedEventArgs e)
        {
            Manager.SecondFrame.Navigate(new PageTovar());
        }

        private void Prodagi_Click(object sender, RoutedEventArgs e)
        {
            Manager.SecondFrame.Navigate(new PageProdagi());
        }

        private void btnExit_Click(object sender, RoutedEventArgs e)
        {
            Manager.FrameMain.Navigate(new PageRegistr());
        }

        private void SecondFrame_Navigated(object sender, NavigationEventArgs e)
        {

        }
    }
}
