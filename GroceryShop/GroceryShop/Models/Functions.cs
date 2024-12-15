using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Data;
using System.Web;

namespace GroceryShop.Models
{
    public class Functions
    {
        private SqlConnection Con;
        private SqlCommand cmd;
        private DataTable dt;
        private SqlDataAdapter sda;
        private string ConnString;

        public Functions() {
            ConnString =@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\soham\OneDrive\Documents\GroceryShopDb.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
            Con=new SqlConnection(ConnString);
            cmd = new SqlCommand();
            cmd.Connection = Con;

        }
        public DataTable getData(string Query){
        dt=new DataTable();
            sda=new SqlDataAdapter(Query,ConnString);
            sda.Fill(dt);
             return dt;

        }
        public int SetData(string Query){
        int Cnt=0;
            if(Con.State==ConnectionState.Closed){
            Con.Open();
            }
        cmd.CommandText=Query;
            Cnt=cmd.ExecuteNonQuery();
            Con.Close();
            return Cnt;
        }

        internal DataTable getData(string Query, Dictionary<string, object> parameters)
        {
            throw new NotImplementedException();
        }
    }
}