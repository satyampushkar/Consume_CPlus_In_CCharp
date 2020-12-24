using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
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



namespace CalculatorClient
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        [DllImport(@"..\..\..\..\..\Calculator\x64\Release\Calculator.dll", CallingConvention = CallingConvention.StdCall) ]
        private static extern int Add(int a, int b);
        [DllImport(@"..\..\..\..\..\Calculator\x64\Release\Calculator.dll", CallingConvention = CallingConvention.StdCall)]
        private static extern int Subtract(int a, int b);
        [DllImport(@"..\..\..\..\..\Calculator\x64\Release\Calculator.dll", CallingConvention = CallingConvention.StdCall)]
        private static extern int Multiply(int a, int b);
        [DllImport(@"..\..\..\..\..\Calculator\x64\Release\Calculator.dll", CallingConvention = CallingConvention.StdCall)]
        private static extern int Divide(int a, int b);
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            int input1, input2;

            label_Error.Content = "";
            label_Result.Content = "";

            if (!int.TryParse(txtBox_Input1.Text.ToString(), out input1))
            {
                label_Error.Content = "Please enter appropriate integer value in 1st textbox!";
                return;
            }

            if (!int.TryParse(txtBox_Input2.Text.ToString(), out input2))
            {
                label_Error.Content = "Please enter appropriate integer value  in 2nd textbox!";
                return;
            }

            var cbi = (ComboBoxItem)comboBox_Ops.SelectedItem;
            if (cbi == null)
            {
                label_Error.Content = "Please select either of +, -, *, / from dropdown!";
                return;
            }
            var operation = cbi.Content.ToString();

            if (!string.IsNullOrWhiteSpace(operation))
            {
                switch (operation)
                {
                    case "+":
                        label_Result.Content = Add(input1, input2);
                        break;
                    case "-":
                        label_Result.Content = input1 - input2;
                        break;
                    case "*":
                        label_Result.Content = input1 * input2;
                        break;
                    case "/":
                        if (input2 == 0)
                        {
                            label_Error.Content = "Divide by '0' is not allowed!!";
                        }
                        else
                        {
                            label_Result.Content = input1 / input2;
                        }                        
                        break;
                    default:
                        label_Error.Content = "Please select either of +, -, *, / from dropdown!";
                        break;
                }
            }
        }
    }
}
