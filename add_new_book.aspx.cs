using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class add_new_book : System.Web.UI.Page
{
    string BookName;
    string BookAuthor;
    string BookStat;
    string Category;
    int BookID;
    int BookYear;
    

        protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
             TextBox2.Text = TextBox3.Text = "";
        }
    }

    protected void Button1_clicked(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           BookName= TextBox1.Text ;
           BookAuthor= TextBox2.Text;
           BookStat = TextBox3.Text;
           BookID = int.Parse(TextBox4.Text);
           BookYear = int.Parse(TextBox5.Text);
           BookCategory = TextBox6.Text;


        SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=Library;Integrated Security=True");
        SqlCommand command = new SqlCommand();
        command.Connection = conn;
        command.CommandText = String.Format("insert into Books values ('{0}','{1}','{2}','{3}','{4}','{5}')",BookID,BookName,BookAuthor,BookYear,BookCategory);
        conn.Open();

       int n =  command.ExecuteNonQuery();

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
