<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentPage.aspx.cs" Inherits="RapidBillPay.PaymentPage" %>

<!DOCTYPE html>


<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
      $( "#datepicker" ).datepicker({
          showOn: "button",
    });
  } );
  </script>


<script type = "text/javascript">
        function Confirm() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            if (confirm("Are you sure you want to cancel this transaction?")) {
                confirm_value.value = "Yes";
            } else {
                confirm_value.value = "No";
            }
            document.forms[0].appendChild(confirm_value);
        }
    </script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        Rapid Bill Pay
    </title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body style="height: 780px;">
   <div id="big_wrapper">
        <header id="top_header">
            <h1>Rapid Bill Pay</h1>

            <a href="Home.aspx">Home</a>
            <a href="AboutUs.html">About Us</a>
            <a href="Security.html">Security</a>
            <a href="ContactUs.aspx">Contact Us</a>
            <a href="FAQs.html">FAQ</a>
        </header>
       <form id="form1" runat="server">
        <section style="width: 700px; margin-left: auto; margin-right: auto; border: solid 1px black; background-color: darkgray"">
            <article>

                <asp:Label ID="Label1"
                    runat="server" 
                    Text="Compose a Payment Request"
                />

                <p>
                    <asp:ImageButton style="vertical-align: middle;" ID="CalenderButton" runat="server" ImageUrl="~/images/calendar.png" Height="25px" Width="25px" ToolTip="Select the date of the transaction" />


                    <asp:TextBox ID="datepicker" size="78" type="text" runat="server" placeholder='Date'></asp:TextBox>

                    <br>

                    <span style="padding-left:30px">

                    <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server"
                      ControlToValidate="datepicker"
                      ErrorMessage="Date can't be empty"
                      ForeColor="Red"
                      display="Dynamic"
                      Font-Size="12">
                </asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator id="REVZipCode" runat="server" 
                      ErrorMessage="Invalid Date" 
                      ValidationExpression="^(0?[1-9]|[12][0-9]|3[01])[\/](0?[1-9]|1[012])[\/]\d{4}$"
                      ForeColor ="Red"
                      display="Dynamic" 
                      ControlToValidate="datepicker" />
                    



                <p>
                    <asp:ImageButton style="vertical-align: middle;" ID="ProfileButton" runat="server" ImageUrl="~/images/profile.png" Height="25px" Width="25px" ToolTip="Funds Receiving Business Name" />

                    <asp:TextBox ID="Name" width="600px" runat="server" placeholder='Recipient/Business Name'></asp:TextBox>

                    <br>

                    <span style="padding-left:30px">

                    <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server"
                      ControlToValidate="Name"
                      ErrorMessage="Name can't be empty"
                      ForeColor="Red"
                      display="Dynamic"
                      Font-Size="12">
                </asp:RequiredFieldValidator>

                </p>

                

                <p>
                    <asp:ImageButton style="vertical-align: middle;" ID="AddressButton" runat="server" ImageUrl="~/images/address.png" Height="25px" Width="25px" ToolTip="Funds Receiving Business's Mailing Address" />

                    <asp:TextBox ID="Address" width="600px" runat="server" placeholder='Recipient/Business Street Address'></asp:TextBox>

                    <br>

                    <span style="padding-left:30px">

                    <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server"
                      ControlToValidate="Address"
                      ErrorMessage="Address can't be empty"
                      ForeColor="Red"
                      display="Dynamic"
                      Font-Size="12">
                </asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" 
                      ErrorMessage="Invalid Address. Format: House/Apt # Street Name City, State Zip" 
                      ValidationExpression="^[ \w]{1,6}([A-Za-z]\.)?([ \w]*\#\d+)?(\r\n| )[ \w]{3,},\x20[A-Za-z]{2}\x20\d{5}(-\d{4})?$"
                      ForeColor ="Red"
                      display="Dynamic" 
                      ControlToValidate="Address" />

                </p>

                <p>
                    <asp:ImageButton style="vertical-align: middle;" ID="MoneyButton" runat="server" ImageUrl="~/images/money.png" Height="25px" Width="25px" ToolTip="Payment About in $$" />

                    <asp:TextBox ID="Money" width="150px" runat="server" placeholder='Amount in $$.cc'></asp:TextBox>

                    <asp:ImageButton style="vertical-align: middle;" ID="ImageButton1" runat="server" ImageUrl="~/images/describe.png" Height="25px" Width="25px" ToolTip="Description of the payment. Eg. Car Payment." />

                    <asp:TextBox ID="DescribePayment" width="410px" runat="server" placeholder='Describe your payment'></asp:TextBox>

                    <br>

                    <span style="padding-left:30px">

                    <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server"
                      ControlToValidate="Money"
                      ErrorMessage="Money can't be empty"
                      ForeColor="Red"
                      display="Dynamic"
                      Font-Size="12">
                </asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator id="RegularExpressionValidator2" runat="server" 
                      ErrorMessage="Invalid Amount" 
                      ValidationExpression="^\$(\d{1,3}(\,\d{3})*|(\d+))(\.\d{2})?$"
                      ForeColor ="Red"
                      display="Dynamic" 
                      ControlToValidate="Money" />

                        <span style="padding-left:40px">

                    <asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server"
                      ControlToValidate="DescribePayment"
                      ErrorMessage="Description can't be empty"
                      ForeColor="Red"
                      display="Dynamic"
                      Font-Size="12">
                </asp:RequiredFieldValidator>

                </p>


                <p>
                    <asp:Button ID="btnConfirm"
                        runat="server"
                        Text="CANCEL TRANSACTION"
                        OnClick="OnConfirm"
                         OnClientClick="Confirm()"
                        CausesValidation="False" />


                    <asp:Button ID="Btn_ScheduleTransaction"
                        runat="server"
                        Text="SCHEDULE TRANSACTION"
                        onClick="ScheduleTransaction" />
                </p>

                <p>
                    My Previous Transactions

                    <asp:Table ID="TransTable" runat="server" CellPadding="10">
                        <asp:TableHeaderRow ID="TransTableHeader" runat="server" Font-Bold="true" >
                            <asp:TableHeaderCell>Transaction Date</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Receipient Name</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Receipient Address</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Amount</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Status</asp:TableHeaderCell>
                        </asp:TableHeaderRow>
                    </asp:Table>
                </p>


                <p>
                    <asp:Button style="margin: auto; display: block;" ID="Btn_OK" runat="server" Text="OK" OnClick="Logout"
                         OnClientClick="Confirm()" CausesValidation="False"/>
                </p>

            </article>
        </section>
           </form>




    </div>


</body>

<footer id="bottom_footer">
    Created by Ilyas Khurshid 2017
</footer>
</html>