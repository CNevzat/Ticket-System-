using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace Onlice_Ticket_System
{
    public partial class Login : System.Web.UI.Page
    {
        public void login()
        {
            OleDbConnection connection = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("App_Data\\OnlineTicket.mdb"));
            connection.Open();
            string mail = TextBox1.Text;
            string password = TextBox2.Text;
            OleDbCommand cmd = new OleDbCommand("select * from UserInformation where EMail= '" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'", connection);
            OleDbDataReader read = cmd.ExecuteReader();
            if (read.Read())
            {
                Session.Add("EMail", TextBox1.Text);
                Response.Redirect("Main.aspx");
            }
            else
            {
                Label4.Text = "E-mail or password incorrect";
            }
            connection.Close();
            connection.Dispose();

        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            login();
            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}