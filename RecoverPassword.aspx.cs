using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RapidBillPay
{
    public partial class RecoverPassword : System.Web.UI.Page
    {
        void Page_Load(Object sender, EventArgs e)
        {


        }

        public void Cancel(Object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        public void GoToRecoverPassword(Object sender, EventArgs e)
        {
            Response.Redirect("RecoverPassword.aspx");
        }
    }
}