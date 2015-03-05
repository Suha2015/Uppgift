using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Collections;

namespace WebApplication1
{
    public class DB
    {
        //If I want to Insert, update, delete I should use the storedprocedure, but the only thing I want
        //do now is to select alla the data from the database and show it in my Datalist orderd by the latest date
        /*SqlConnection conn;
        SqlCommand cmd;
        DataTable tbl;
        private void Initialize(CommandType CT, string DBCall)
        {
            //Declare
            conn = new SqlConnection();
            cmd = new SqlCommand();

            //Requirement
            conn.ConnectionString = ConfigurationManager.ConnectionStrings[1].ToString();
            cmd.Connection = conn;
            cmd.CommandType = CT;
            cmd.CommandText = DBCall;
            conn.Open();


        }*/
    }
}