using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class search_by_cat : System.Web.UI.Page
{
    string author;
    string id;
    string name;
    string year;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList.SelectedValue = "";
        }
    }

    protected void Buttonsearch1_click(object sender, EventArgs e)
    {

        id = DropDownList.SelectedValue;
        SqlConnection conn = new SqlConnection("Data Source=.;Integrated Security=True;User Instance=True");
        SqlCommand command = new SqlCommand();
        command.Connection = conn;

        command.CommandText = string.Format("select * from Book_table where Book_id= {0}", DropDownList.SelectedValue);

        conn.Open();

        SqlDataReader dr = command.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                string ID = dr[0].ToString();
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

