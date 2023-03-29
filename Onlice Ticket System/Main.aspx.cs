using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Onlice_Ticket_System
{
    public partial class Main : System.Web.UI.Page
    {

        
       
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["EMail"] != null)
            {
                Label8.Text = Session["EMail"].ToString() ;
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

            Image6.ImageUrl = "~/images/stadiums/Fenerbahce Ulker Stadyumu.jpg";
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Image6.ImageUrl = "~/images/stadiums/GS-STAD.png";
        }
        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Image6.ImageUrl = "~/images/stadiums/BJK STAD.jpg";
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Image6.ImageUrl = "~/images/stadiums/TS Stad.jpg";
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            Image6.ImageUrl = "~/images/stadiums/Başaksehir Stad.jpg";
           
        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
            Image6.ImageUrl = "~/images/stadiums/Default Stad.png";
            
        }

        protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
        {
            Image6.ImageUrl = "~/images/stadiums/Antalya Stad.jpg";
           
        }

        protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
        {
            Image6.ImageUrl = "~/images/stadiums/Default Stad.png";
            
        }

        protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
        {
            Image6.ImageUrl = "~/images/stadiums/Genclerbirligi Stad.png";
           
        }

        protected void ImageButton10_Click(object sender, ImageClickEventArgs e)
        {
            Image6.ImageUrl = "~/images/stadiums/Default Stad.png";
          
        }

        protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
        {
            Image6.ImageUrl = "~/images/stadiums/Default Stad.png";
           
        }

        protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
        {
            Image6.ImageUrl = "~/images/stadiums/Kasimpasa Stad.jpg";
            
        }

        protected void ImageButton13_Click(object sender, ImageClickEventArgs e)
        {
            Image6.ImageUrl = "~/images/stadiums/Kayseri.png";
            
        }

        protected void ImageButton14_Click(object sender, ImageClickEventArgs e)
        {
            Image6.ImageUrl = "~/images/stadiums/New Default Stadium.png";
        
        }

        protected void ImageButton15_Click(object sender, ImageClickEventArgs e)
        {
            Image6.ImageUrl = "~/images/stadiums/New Default Stadium.png";

        }

        protected void ImageButton16_Click(object sender, ImageClickEventArgs e)
        {
            Image6.ImageUrl = "~/images/stadiums/Rize Stad.jpg";
          
        }

        protected void ImageButton17_Click(object sender, ImageClickEventArgs e)
        {
            Image6.ImageUrl = "~/images/stadiums/Sivas Stad.jpg";
          
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
        protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {    
            
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
          
        }

        protected void DropDownList1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList2_TextChanged(object sender, EventArgs e)
        {
           
        }

        protected void DropDownList4_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged2(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex ==1)
            {
                Image6.ImageUrl= "~/images/stadiums/Fenerbahce Ulker Stadyumu.jpg";
                
            }
            if (DropDownList1.SelectedIndex == 2)
            {
                Image6.ImageUrl = "~/images/stadiums/GS-STAD.png";
            }
            if (DropDownList1.SelectedIndex == 3)
            {
                Image6.ImageUrl = "~/images/stadiums/BJK STAD.jpg";
            }
            if (DropDownList1.SelectedIndex == 4)
            {
                Image6.ImageUrl = "~/images/stadiums/TS Stad.jpg";
            }
            if (DropDownList1.SelectedIndex == 5)
            {
                Image6.ImageUrl = "~/images/stadiums/Basaksehir Stad.jpg";
            }
            if (DropDownList1.SelectedIndex == 6)
            {
                Image6.ImageUrl = "~/images/stadiums/Default Stad.png";
            }
            if (DropDownList1.SelectedIndex == 7)
            {
                Image6.ImageUrl = "~/images/stadiums/Antalya Stad.jpg";
            }
            if (DropDownList1.SelectedIndex == 8)
            {
                Image6.ImageUrl = "~/images/stadiums/Default Stad.png";
            }
            if (DropDownList1.SelectedIndex == 9)
            {
                Image6.ImageUrl = "~/images/stadiums/Genclerbirligi Stad.png";
            }
            if (DropDownList1.SelectedIndex == 10)
            {
                Image6.ImageUrl = "~/images/stadiums/Default Stad.png";
            }
            if (DropDownList1.SelectedIndex == 11)
            {
                Image6.ImageUrl = "~/images/stadiums/Default Stad.png";
            }
            if (DropDownList1.SelectedIndex == 12)
            {
                Image6.ImageUrl = "~/images/stadiums/Kasimpasa Stad.jpg";
            }
            if (DropDownList1.SelectedIndex == 13)
            {
                Image6.ImageUrl = "~/images/stadiums/Kayseri Stad.png";
            }
            if (DropDownList1.SelectedIndex == 14)
            {
                Image6.ImageUrl = "~/images/stadiums/New Default Stadium.png";
            }
            if (DropDownList1.SelectedIndex == 15)
            {
                Image6.ImageUrl = "~/images/stadiums/New Default Stadium.png";
            }
            if (DropDownList1.SelectedIndex == 16)
            {
                Image6.ImageUrl = "~/images/stadiums/Rize Stad.jpg";
            }
             if (DropDownList1.SelectedIndex == 17)
            {
                Image6.ImageUrl = "~/images/stadiums/New Default Stadium.png";
            }

        }

        protected void DropDownList3_SelectedIndexChanged1(object sender, EventArgs e)
        {           
        }
        protected void DropDownList4_SelectedIndexChanged2(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (DropDownList1.SelectedIndex!=0 && DropDownList5.SelectedIndex != 0 )
            {
                Session.Add("Team", DropDownList1.SelectedItem.Text);
                Session.Add("Tribune", DropDownList2.SelectedItem.Text);
                Session.Add("Block", DropDownList3.SelectedItem.Text);
                Session.Add("SeatNumber", DropDownList5.SelectedItem.Text);
                Session.Add("EMail", Label8.Text);
                Response.Redirect("ConfirmationPanel.aspx");
            }

                
        }
    }
}