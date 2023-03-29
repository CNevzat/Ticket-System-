using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

namespace Onlice_Ticket_System
{
   
    public partial class ConfirmationPanel : System.Web.UI.Page
    {
        public void addRecord()
        {
            string line = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("App_Data\\OnlineTicket.mdb");
            OleDbConnection connection = new OleDbConnection(line);
            OleDbCommand cmd = new OleDbCommand("INSERT INTO Records (Name,Surname,TC,Phone,EMail,Team,Tribune,Block,SeatNumber) VALUES(@Name,@Surname,@TC,@Phone,@EMail,@Team,@Tribune,@Block,@SeatNumber)", connection);
       
            cmd.Parameters.AddWithValue("Name",Label10.Text);
            cmd.Parameters.AddWithValue("Surname", Label11.Text);
            cmd.Parameters.AddWithValue("TC", Label12.Text);
            cmd.Parameters.AddWithValue("Phone", Label13.Text);
            cmd.Parameters.AddWithValue("EMail", Label14.Text);
            cmd.Parameters.AddWithValue("Team", Label17.Text);
            cmd.Parameters.AddWithValue("Tribune", Label18.Text);
            cmd.Parameters.AddWithValue("Block", Label19.Text);
            cmd.Parameters.AddWithValue("SeatNumber", Label20.Text);
            try
            {
                connection.Open();
                cmd.ExecuteNonQuery();
              
                Label1.Text = "<font color=green> Your ticket has been purchased </font>";

            }
            catch (Exception ex)
            {

                Label1.Text = "<font color=red> Error has been occured </font>"+ex;
            }
            finally
            {
                connection.Close();
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Label21.Visible = false;
               if (Session["Team"] != null && Session["Tribune"] != null +
               Session["Block"] != null && Session["SeatNumber"] != null 
               || Session["SeatNumber2"] != null)
            {
                Label17.Text = Session["Team"].ToString();
                Label18.Text = Session["Tribune"].ToString();
                Label19.Text = Session["Block"].ToString();
                Label20.Text = Session["SeatNumber"].ToString();
                Label21.Text = Session["EMail"].ToString();
                list();

                
            }
                
        }
        public void list()
        {
            OleDbConnection connection = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("App_Data\\OnlineTicket.mdb"));
            connection.Open();
            OleDbCommand list = new OleDbCommand("SELECT Name,Surname,TC,Phone,EMail from UserInformation WHERE EMail = '"+Label21.Text+"'");
            list.Connection = connection;
            IDataReader read = list.ExecuteReader();
            while (read.Read())
            {
                Label10.Text = read["Name"].ToString();
                Label11.Text = read["Surname"].ToString();
                Label12.Text = read["TC"].ToString();
                Label13.Text = read["Phone"].ToString();
                Label14.Text = read["EMail"].ToString();

            }
            



        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckBox1.Checked== false)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('You need to accept the" +
                    " purchase contract...');</script>");

            }
            if (CheckBox1.Checked == true)
            {
                addRecord();
            }
            
                
            
        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}