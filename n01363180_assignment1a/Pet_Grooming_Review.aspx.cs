using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace n01363180_assignment1a
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack)
            {
                Page.Validate();
                if(Page.IsValid)
                {
                    string Customer_fname = customer_first_name.Text.ToString();
                    string Customer_lname = customer_last_name.Text.ToString();
                    string Customer_email = customer_email.Text;
                    string Customer_phone = customer_phone.Text.ToString();
                    string Customer_hospitality = customer_hospitality.Text.ToString();
                    string Customer_phone_type = customer_phone_type.Text.ToString();
                    string Review_message = customer_review.Text;
                    
                    confirmationbox.InnerHtml = "thank you for your review:<br>";
                    confirmationbox.InnerHtml += "First Name: " + Customer_fname +"<br>";
                    confirmationbox.InnerHtml += "Last Name: " + Customer_lname + "<br>";
                    confirmationbox.InnerHtml += "Customer email:" + Customer_email + "<br>";
                    confirmationbox.InnerHtml += "customer phone:" + Customer_phone + "<br>";
                    confirmationbox.InnerHtml += "Phone type:" + Customer_phone_type + "<br>";
                    confirmationbox.InnerHtml += "Review:" + Review_message + "<br>";



                    if(Customer_hospitality=="very good")
                    {
                        confirmationbox.InnerHtml += "Rating:5";
                    }
                    else if(Customer_hospitality=="good")
                    {
                        confirmationbox.InnerHtml += "Rating:4";
                    }
                    else if(Customer_hospitality=="ok")
                    {
                        confirmationbox.InnerHtml += "Rating:3";
                    }
                    else if(Customer_hospitality=="not sure")
                    {
                        confirmationbox.InnerHtml += "Rating:2";
                    }
                    else if(Customer_hospitality=="not good")
                    {
                        confirmationbox.InnerHtml += "Rating:1";
                    }
                    else
                    {
                        confirmationbox.InnerHtml += "Rating:0";
                    }

                }
            }

        }
    }
}