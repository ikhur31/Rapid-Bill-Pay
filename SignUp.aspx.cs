using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RapidBillPay
{
    public partial class SignUp : System.Web.UI.Page
    {
        void Page_Load(Object sender, EventArgs e)
        {
            string newEmail = (string)Session["newEmail"];
            string newPassword = (string)Session["newPassword"];

            Email.Text = newEmail;
            Password.Text = newPassword;

        }

        public void DisplayError(Object sender, EventArgs e, String message)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
        }

        public void OnConfirm(object sender, EventArgs e)
        {
            string confirmValue = Request.Form["confirm_value"];
            if (confirmValue == "Yes")
            {
                Response.Redirect("SignUp.aspx");
            }
            else
            {

            }
        }

        public void isChecked(object sender, EventArgs e)
        {
            if (CheckBox1.Checked)
            {
                List<UserInfo> allUsersList = Application["AllUsersList"] as List<UserInfo>;

                UserInfo aUser = new UserInfo();
                aUser.StreetAddress = Street.Text;
                aUser.ZipCode = ZipCode.Text;
                aUser.FirstName = FirstName.Text;
                aUser.LastName = LastName.Text;
                aUser.HomePhone = HomePhone.Text;
                aUser.CellPhone = CellPhone.Text;
                aUser.EmailAddress = Email.Text;
                aUser.Password = Password.Text;
                aUser.SecurityQuestion = SecurityQuestion.Text;
                aUser.SecurityQuestionAnswer = securityQuestion2.Text;

                Session["currentUser"] = aUser;
                allUsersList.Add(aUser);

                ScriptManager.RegisterStartupScript(this, this.GetType(),
                    "alert",
                    "alert('Thank you for signing up. You can now login using the Login option. An email has also been sent to the email address you provided during Sign Up.');window.location ='Home.aspx';",
                    true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Please agree to the privacy policy first." + "');", true);
            }
        }
    }
}