using System;
using System.Windows.Forms;
using Library_Management_System;

namespace Hotel
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);

            // إنشاء كائن من Connection وتمريره للفورم
            var connection = new Connection();
            Application.Run(new Form1(connection));
        }
    }
}

