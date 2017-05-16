using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class add_new_borrower: System.Web.UI.Page
{
    string Fname;
    string Midname;
    string Lname;
    string Address;
    string Dept;
    string Email;
    int BID;
    int phone_numb;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            TextBox2.Text = TextBox3.Text = TextBox4.Text = "";
        }
    }

    protected void Button1_clicked(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BID = int.Parse(TextBox1.Text);
            Fname = TextBox2.Text;
            Midname = TextBox3.Text;
            Lname = TextBox4.Text;
            phone_numb = int.Parse(TextBox5.Text);
            Dept = TextBox6.Text;
            Email= TextBox7.Text;
            Address = TextBox8.Text; ;

            //Will be updated depending on the Sql Queries of our own.. I guess
            SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=Library;Integrated Security=True");
            SqlCommand command = new SqlCommand();
            command.Connection = conn;
            command.CommandText = String.Format("insert into Books values ('{0}','{1}','{2}','{3}')", isbn, name, imagename, edition);
            conn.Open();

            int n = command.ExecuteNonQuery();

            if (n > 0)
            {
                lblResult.ForeColor = Color.Green;
                lblResult.Text = "Success";
            }
            else
            {
                lblResult.ForeColor = Color.Red;
                lblResult.Text = "Failed";

            }
            conn.Close();
        }
    }
}
