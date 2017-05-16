using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class search_by_year : System.Web.UI.Page
{
    string author;
    string id;
    string name;
    string year;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            txtyear.Text = "";
        }
    }

    protected void Buttonsearch3_click(object sender, EventArgs e)
    {

        year =txtyear.Text;
        SqlConnection conn = new SqlConnection("Data Source=.;Integrated Security=True;User Instance=True");
        SqlCommand command = new SqlCommand();
        command.Connection = conn;

        command.CommandText = string.Format("select * from Book_table where Year_published= {0}", txtyear.Text);

        conn.Open();

        SqlDataReader dr = command.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                string id = dr[0].ToString();
                string name = dr[1].ToString();
                string AUTHOR = dr[2].ToString();
                string YEAR = dr[3].ToString(); ;


                Response.Write(GridView1);



            }
        }
        else
        {

        }


        conn.Close();

    }



}

