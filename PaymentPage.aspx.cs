using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RapidBillPay
{
    public partial class PaymentPage : System.Web.UI.Page
    {
        void Page_Load(Object sender, EventArgs e)
        {
            UserInfo aUser = (UserInfo)Session["currentUser"];

            try
            {
                if (aUser.MyBillPayments.Count() == 0)
                {
                    aUser.MyBillPayments = new List<BillPayEntry>();

                    TableRow row = new TableRow();
                    TableCell cell1 = new TableCell();
                    cell1.Text = "No records";
                    row.Cells.Add(cell1);
                    TransTable.Rows.Add(row);
                }
                else
                {
                    foreach (BillPayEntry val in aUser.MyBillPayments)
                    {
                        TableRow row = new TableRow();

                        TableCell cell1 = new TableCell();
                        cell1.Text = val.PaymentTransactionDate;
                        row.Cells.Add(cell1);

                        TableCell cell2 = new TableCell();
                        cell2.Text = val.RecipientBusinessName;
                        row.Cells.Add(cell2);

                        TableCell cell3 = new TableCell();
                        cell3.Text = val.RecipientBusinessAddress;
                        row.Cells.Add(cell3);

                        TableCell cell4 = new TableCell();
                        cell4.Text = val.AmountPaid;
                        row.Cells.Add(cell4);

                        TableCell cell5 = new TableCell();
                        cell5.Text = "Completed";
                        row.Cells.Add(cell5);

                        TransTable.Rows.Add(row);
                    }
                }
            }
            catch (Exception ex)
            {

                aUser.MyBillPayments = new List<BillPayEntry>();

                TableRow row = new TableRow();
                TableCell cell1 = new TableCell();
                cell1.Text = "No records";
                row.Cells.Add(cell1);
                TransTable.Rows.Add(row);
                
            }

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
                Response.Redirect("PaymentPage.aspx");
            }
            else
            {

            }
        }

        public void Logout(object sender, EventArgs e)
        {
            string confirmValue = Request.Form["confirm_value"];
            if (confirmValue == "Yes")
            {
                Session.Abandon();
                Response.Redirect("Home.aspx");
            }
        }

        public void ScheduleTransaction(object sender, EventArgs e)
        {
            BillPayEntry userBillPayEntry = new BillPayEntry();
            userBillPayEntry.PaymentTransactionDate = datepicker.Text;
            userBillPayEntry.RecipientBusinessName = Name.Text;
            userBillPayEntry.RecipientBusinessAddress = Address.Text;
            userBillPayEntry.AmountPaid = Money.Text;
            userBillPayEntry.PaymentDetails = DescribePayment.Text;
            userBillPayEntry.Status = 0;

            UserInfo aUser = (UserInfo)Session["currentUser"];

            aUser.AddBillPayment(datepicker.Text, Name.Text, Address.Text, Money.Text, DescribePayment.Text, 0);

            DisplayError(sender, e, "Payment Scheduled");

            TableRow row = new TableRow();

            TableCell cell1 = new TableCell();
            cell1.Text = datepicker.Text;
            row.Cells.Add(cell1);

            TableCell cell2 = new TableCell();
            cell2.Text = Name.Text;
            row.Cells.Add(cell2);

            TableCell cell3 = new TableCell();
            cell3.Text = Address.Text;
            row.Cells.Add(cell3);

            TableCell cell4 = new TableCell();
            cell4.Text = Money.Text;
            row.Cells.Add(cell4);

            TableCell cell5 = new TableCell();
            cell5.Text = "In Progress";
            row.Cells.Add(cell5);

            TransTable.Rows.Add(row);
            
            string[,] tempRows = new string[TransTable.Rows.Count, 5];
            string[,] tempNewRows = new string[TransTable.Rows.Count, 5];
            int r = TransTable.Rows.Count;

            for (int i = 1; i < TransTable.Rows.Count; i++)
            {
                if (TransTable.Rows[i].Cells.Count == 1)
                {
                    //TransTable.Rows.Remove(TransTable.Rows[i]);
                }
                else if (TransTable.Rows[i].Cells[4].Text.Equals("In Progress"))
                {
                    tempNewRows[i, 0] = TransTable.Rows[i].Cells[0].Text;
                    tempNewRows[i, 1] = TransTable.Rows[i].Cells[1].Text;
                    tempNewRows[i, 2] = TransTable.Rows[i].Cells[2].Text;
                    tempNewRows[i, 3] = TransTable.Rows[i].Cells[3].Text;
                    tempNewRows[i, 4] = TransTable.Rows[i].Cells[4].Text;
                }
                else
                {
                    tempRows[i, 0] = TransTable.Rows[i].Cells[0].Text;
                    tempRows[i, 1] = TransTable.Rows[i].Cells[1].Text;
                    tempRows[i, 2] = TransTable.Rows[i].Cells[2].Text;
                    tempRows[i, 3] = TransTable.Rows[i].Cells[3].Text;
                    tempRows[i, 4] = TransTable.Rows[i].Cells[4].Text;
                }

                TransTable.Rows.Remove(TransTable.Rows[i]);
                i--;
            }

            for(int i = tempNewRows.GetLength(0)-1; i > -1; i--)
            {
                try
                {
                    if (tempNewRows[i, 4].Equals("In Progress"))
                    {
                        TableRow Row = new TableRow();

                        TableCell Cell1 = new TableCell();
                        Cell1.Text = tempNewRows[i, 0];
                        Row.Cells.Add(Cell1);

                        TableCell Cell2 = new TableCell();
                        Cell2.Text = tempNewRows[i, 1];
                        Row.Cells.Add(Cell2);

                        TableCell Cell3 = new TableCell();
                        Cell3.Text = tempNewRows[i, 2];
                        Row.Cells.Add(Cell3);

                        TableCell Cell4 = new TableCell();
                        Cell4.Text = tempNewRows[i, 3];
                        Row.Cells.Add(Cell4);

                        TableCell Cell5 = new TableCell();
                        Cell5.Text = tempNewRows[i, 4];
                        Row.Cells.Add(Cell5);

                        TransTable.Rows.Add(Row);
                    }
                }
                catch (Exception ex)
                {

                }

                
            }

            for (int i = 0;  i < tempRows.GetLength(0); i++)
            {
                try
                {
                    if (tempRows[i, 4].Equals("Completed"))
                    {
                        TableRow Row = new TableRow();

                        TableCell Cell1 = new TableCell();
                        Cell1.Text = tempRows[i, 0];
                        Row.Cells.Add(Cell1);

                        TableCell Cell2 = new TableCell();
                        Cell2.Text = tempRows[i, 1];
                        Row.Cells.Add(Cell2);

                        TableCell Cell3 = new TableCell();
                        Cell3.Text = tempRows[i, 2];
                        Row.Cells.Add(Cell3);

                        TableCell Cell4 = new TableCell();
                        Cell4.Text = tempRows[i, 3];
                        Row.Cells.Add(Cell4);

                        TableCell Cell5 = new TableCell();
                        Cell5.Text = tempRows[i, 4];
                        Row.Cells.Add(Cell5);

                        TransTable.Rows.Add(Row);
                    }
                }
                catch (Exception ex)
                {

                }

                
            }




            datepicker.Text = "";
            Name.Text = "";
            Address.Text = "";
            Money.Text = "";
            DescribePayment.Text = "";

        }
    }
}