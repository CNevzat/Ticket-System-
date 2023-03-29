using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Data.OleDb;

namespace Onlice_Ticket_System
{
    public partial class Register : System.Web.UI.Page
    {
        
       
    
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    public void addUser()

    {
            bool readerHasRows = false;
            string TC = TextBox5.Text;
            string Phone = TextBox6.Text;
            string EMail = TextBox4.Text;
           
            string line = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("App_Data\\OnlineTicket.mdb");
            OleDbConnection connection = new OleDbConnection(line);
            connection.Open();
            //  string avoidDuplicate = "SELECT TC  FROM UserInformation WHERE TC = '" + TextBox5.Text+"' ";
            string commandQuery = "SELECT TC FROM UserInformation WHERE TC = @TC or Phone = @Phone or EMail = @EMail";
            using (OleDbCommand avoidDuplicateData = new OleDbCommand(commandQuery, connection))
            {
                avoidDuplicateData.Parameters.AddWithValue("@TC", TextBox5.Text);
                avoidDuplicateData.Parameters.AddWithValue("@Phone", TextBox6.Text);
                avoidDuplicateData.Parameters.AddWithValue("@EMail", TextBox4.Text);



                using (OleDbDataReader reader = avoidDuplicateData.ExecuteReader())
                {
                    readerHasRows = (reader != null && reader.HasRows);
                }
            }
            if (readerHasRows)
            {
                Label3.Text = "User with this information already exists";
                
            }
            else
            {
                
                OleDbCommand cmd = new OleDbCommand("INSERT INTO UserInformation (Name, Surname, [Password], EMail, TC, Phone, Gender) VALUES (@Name, @Surname, @Password, @EMail, @TC, @Phone, @Gender)", connection);
                cmd.Parameters.AddWithValue("Name", TextBox1.Text);
                cmd.Parameters.AddWithValue("Surname", TextBox2.Text);
                cmd.Parameters.AddWithValue("Password", TextBox3.Text);
                cmd.Parameters.AddWithValue("Mail", TextBox4.Text);
                cmd.Parameters.AddWithValue("TC", TextBox5.Text);
                cmd.Parameters.AddWithValue("Phone", TextBox6.Text);
                string gender = "";
                if (RadioButton1.Checked == true)
                {
                    RadioButton2.Checked = false;
                    gender = "Female";
                }
                if (RadioButton2.Checked == true)
                {
                    RadioButton1.Checked = false;
                    gender = "Male";
                }
                cmd.Parameters.AddWithValue("Gender", gender);
                try
                {
                    
                    cmd.ExecuteNonQuery();
                    Label3.Text = "<font color=green> Registration is completed </font>";
                }
                catch (Exception ex)
                {
                    Label3.Text = "<font color=green> Error has been occured </font>" +ex;

                }
                finally
                {
                    connection.Close();
                }
            }
          
    }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
           
           
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {                  
            addUser();

           
        }
    }
}