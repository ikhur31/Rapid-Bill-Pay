using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RapidBillPay
{
    public partial class ContactUs : System.Web.UI.Page
    {
        void Page_Load(Object sender, EventArgs e)
        {

            Btn_Submit.Click += new EventHandler(this.DisplayError);

        }

        public void DisplayError(Object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Work in Progress" + "');", true);
        }
    }
}