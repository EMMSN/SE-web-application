﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class search_by_name : System.Web.UI.Page
{
    string author;
    string id;
    string name;
    string year;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            txtname.Text = "";
        }
    }

    protected void buttonsearch2_Click(object sender, EventArgs e)
    {

        author = txtname.Text;
        SqlConnection conn = new SqlConnection("Data Source=.;Integrated Security=True;User Instance=True");
        SqlCommand command = new SqlCommand();
        command.Connection = conn;

        command.CommandText = string.Format("select * from Book_table where Book_name= {0}", txtname.Text);

        conn.Open();

        SqlDataReader dr = command.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                string id = dr[0].ToString();
                string name = dr[1].ToString();
                string AUTHOR = dr[2].ToString();
                string year = dr[3].ToString();


                Response.Write(GridView1);



            }
        }
        else
        {

        }


        conn.Close();

    }



}

