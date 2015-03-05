using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using System.Configuration;

namespace ConsoleApplication1
{
    class Program
    {
        static void Main(string[] args)
        {
            Program CF = new Program();
            CF.Run();
        }
        public void Run()
        {

            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Arbetsprov\WebApplication1\App_Data\Database1.mdf;Integrated Security=True;User Instance=True";
                conn.Open();
                try
                {
                    SqlCommand Insertcommand = new SqlCommand("INSERT INTO Message (Message, WrittingDate) VALUES (@Message, @WrittingDate)", conn);
                    Console.WriteLine("Type a Message:");
                    string Message = Console.ReadLine();

                    Insertcommand.Parameters.Add(new SqlParameter("@Message", Message));
                    Insertcommand.Parameters.Add(new SqlParameter("@WrittingDate", DateTime.Now));
                    Console.WriteLine("Done! Press enter to close this console ", Insertcommand.ExecuteNonQuery());

                }
                catch (SqlException ex)
                {
                    Console.WriteLine("Count not insert." + ex);
                }
            }
            Console.ReadLine();
        }
    }
}
