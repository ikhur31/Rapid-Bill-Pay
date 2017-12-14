<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecoverPassword.aspx.cs" Inherits="RapidBillPay.RecoverPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        Rapid Bill Pay
    </title>
    <link href="StyleSheet.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
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
        <section style="width: 700px; margin-left: auto; margin-right: auto; border: solid 1px black;"">
            <article>

                <asp:Label ID="Label1"
                    runat="server" 
                    Text="RECOVER PASSWORD"
                />

                <p>
                    <asp:ImageButton style="vertical-align: middle;" ID="EmailButton" runat="server" ImageUrl="~/images/email.png" Height="25px" Width="25px" ToolTip="A valid email address" />

                    <asp:TextBox ID="Email" width="500px" runat="server" placeholder='Email'></asp:TextBox>

                    <br>

                    <asp:RequiredFieldValidator id="RFVPassword" runat="server"
                      ControlToValidate="Email"
                      ErrorMessage="Email can't be empty"
                      ForeColor="Red"
                      display="Dynamic"
                      Font-Size="12">
                </asp:RequiredFieldValidator>


                <asp:RegularExpressionValidator id="REVPassword" runat="server" 
                      ErrorMessage="Invalid Email" 
                      ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"
                      ForeColor ="Red" 
                      display="Dynamic"
                      ControlToValidate="Email" />

                </p>

                <p>
                    <h6>
                        The email you are typing must match the email in records. If the emails match, you will recieve an email with login information.
                    </h6>
                </p>

                <p>
                    <asp:Button ID="Btn_Cancel"
                        runat="server"
                        Text="CANCEL AND GO BACK"
                        onClick="Cancel"
                        CausesValidation="False" />

                    <asp:Button ID="Btn_RecoverPassword"
                        runat="server"
                        Text="RECOVER PASSWORD"
                        onClick="GoToRecoverPassword" />
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