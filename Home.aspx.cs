using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RapidBillPay
{
    public partial class Home : System.Web.UI.Page
    {
        void Page_Load(Object sender, EventArgs e)
        {
            if (Label1.Text.Equals("Login to Pay Your Bills Online"))
            {
                Btn_LOGIN.Visible = false;
            }
        }

        public void Email_TextChanged(Object sender, EventArgs e)
        {
            List<UserInfo> allUsersList = Application["AllUsersList"] as List<UserInfo>;

            if (Btn_Submit.Text.Equals("NEXT"))
            {
                foreach (UserInfo val in allUsersList)
                   if (Email.Text == val.EmailAddress)
                   {
                       DisplayError(sender, e, "User " + Email.Text + " already exists. Please login.");
                   }
                
            }
        }

        public void SignUp_Click(Object sender, EventArgs e)
        {

            Label1.Text = "New To Rapid Bill Pay?";
            Label2.Text = "Create an Account to Pay Your Bills Online";
            Btn_ForgotPassword.Visible = false;
            Btn_CreateAccount.Visible = false;
            AlreadyAMember.Text = "Already a member?";
            Btn_LOGIN.Visible = true;
            Btn_Submit.Text = "NEXT";

        }

        public void Login_Click(Object sender, EventArgs e)
        {

            Label1.Text = "Login to Pay Your Bills Online";
            Label2.Text = "";
            Btn_ForgotPassword.Visible = true;
            Btn_CreateAccount.Visible = true;
            AlreadyAMember.Text = "";
            Btn_LOGIN.Visible = false;
            Btn_Submit.Text = "USER LOGIN";
        }

        public void ForgotPassword_Click(Object sender, EventArgs e)
        {
            Response.Redirect("RecoverPassword.aspx");
        }

        public void Submit(Object sender, EventArgs e)
        {

            List<UserInfo> allUsersList = Application["AllUsersList"] as List<UserInfo>;

            if (Btn_Submit.Text.Equals("USER LOGIN")) // Clicked Login
            {
                if (allUsersList.Count() == 0)
                {
                    DisplayError(sender, e, "This account does not exist. Please Sign Up.");
                }
                else
                {
                    foreach (UserInfo val in allUsersList)
                        if (Email.Text == val.EmailAddress && Password.Text == val.Password)
                        {
                            Session["currentUser"] = val;

                            ScriptManager.RegisterStartupScript(this, this.GetType(),
                                "alert",
                                "alert('You are now logged in as " + Email.Text + ".');window.location ='PaymentPage.aspx';",
                                true);
                        }
                        else
                        {
                            DisplayError(sender, e, "This account does not exist. Please Sign Up.");
                        }
                }
            }
            else // Clicked Sign Up
            {
                if (allUsersList.Count() == 0)
                {
                    Session["newEmail"] = Email.Text;
                    Session["newPassword"] = Password.Text;

                    Response.Redirect("SignUp.aspx");
                }
                else
                {
                    foreach (UserInfo val in allUsersList)
                        if (Email.Text == val.EmailAddress)
                        {
                            DisplayError(sender, e, "User " + Email.Text + " already exists. Please login.");
                        }
                        else
                        {
                            Session["newEmail"] = Email.Text;
                            Session["newPassword"] = Password.Text;

                            Response.Redirect("SignUp.aspx");
                        }
                }
            }

        }

        public void DisplayError(Object sender, EventArgs e, String message)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
        }
    }
}