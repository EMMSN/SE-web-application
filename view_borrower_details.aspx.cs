using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class view_borrower_details : System.Web.UI.Page
{
    string fname;
    string id;
    string mname;
    string lname;
    string phone;
    string department;
    string email;
    string addresse;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            txtborrower.Text = "";
        }
    }

    protected void Button_Click(object sender, EventArgs e)
    {

        id = txtborrower.Text;
        SqlConnection conn = new SqlConnection("Data Source=.;Integrated Security=True;User Instance=True");
        SqlCommand command = new SqlCommand();
        command.Connection = conn;

        command.CommandText = string.Format("select * from Book_table where Borrower_id= {0}", txtborrower.Text);

        conn.Open();

        SqlDataReader dr = command.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                string Id = dr[0].ToString();
                string fname = dr[1].ToString();
                string mname = dr[1].ToString();
                string lname = dr[1].ToString();
                string department = dr[2].ToString();
                string phone = dr[3].ToString();
                string email = dr[1].ToString();
                string addresse = dr[1].ToString();

                Response.Write(GridView1);



            }
        }
        else
        {

        }


        conn.Close();

    }



}

