<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="RapidBillPay.Home" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title>
        Rapid Bill Pay
    </title>

    <link href="StyleSheet.css" rel="stylesheet" />
</head>

<body>
    <form id="form1" runat="server">
        <div id="big_wrapper">
            <header id="top_header">

                <h1>Rapid Bill Pay</h1>

                <a href="Home.aspx">Home</a>
                <a href="AboutUs.html">About Us</a>
                <a href="Security.html">Security</a>
                <a href="ContactUs.aspx">Contact Us</a>
                <a href="FAQs.html">FAQ</a>

                <asp:Button id="Btn_SignUp"
                    Text="Sign Up"
                    style="float: right; margin: 5px;"
                    OnClick="SignUp_Click"
                    CausesValidation="False" 
                    runat="server"/>

                <asp:Button id="Btn_UserLogin"
                    Text="User Login"
                    OnClick="Login_Click" 
                    style="float: right; margin: 5px;"
                    CausesValidation="False"
                    runat="server"/>

            </header>
        
            <section id="main_section">
                <article>
                    <header>
                        <hgroup>
                            <h1>Tired of signing checks?</h1>
                            <h2>Us too!</h2>
                        </hgroup>
                    </header>
                    
                    <p>Try Rapid Bill Pay today!</p>
                    <p>...What are you waiting for?</p>

                </article>
            </section>

            <aside id="side_news">
                <h4>
                    <asp:Label ID="Label1"
                        runat="server" 
                        Text="Login to Pay Your Bills Online"/>
                </h4>

                <h5>
                    <asp:Label ID="Label2"
                        runat="server" 
                        Text=""/>
                </h5>

                Email Address<font color="red">*</font>

                <br>

                <asp:TextBox ID="Email" 
                    runat="server" 
                    AutoPostBack="true"
                    OnTextChanged="Email_TextChanged">
                </asp:TextBox>

                <br>

                <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server"
                      ControlToValidate="Email"
                      ErrorMessage="Email can't be empty"
                      ForeColor="Red"
                      display="Dynamic"
                      Font-Size="12"
                      >
                </asp:RequiredFieldValidator>


                <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" 
                      ErrorMessage="Invalid Email" 
                      ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"
                      ForeColor ="Red"
                      display="Dynamic" 
                      ControlToValidate="Email" />

                <br>

                Password<font color=red>*</font> 

                <br>

                <asp:TextBox ID="Password" 
                    runat="server">
                </asp:TextBox>
                
                <br>

                <asp:RequiredFieldValidator id="RFVPassword" runat="server"
                      ControlToValidate="Password"
                      ErrorMessage="Password can't be empty"
                      ForeColor="Red"
                      display="Dynamic"
                      Font-Size="12">
                </asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator id="REVPassword" runat="server" 
                      ErrorMessage="Invalid Password" 
                      ValidationExpression="^(?=.*\d)(?=.*[a-z | A-Z]).{8,10}$"
                      ForeColor ="Red"
                      display="Dynamic" 
                      ControlToValidate="Password" />

                <p>

                <asp:Button ID="Btn_Submit"
                    runat="server"
                    Text="USER LOGIN"
                    onClick="Submit" />

                </p>
                
                <p>
                

                    <asp:LinkButton ID="Btn_ForgotPassword"
                        runat="server"
                        Text="Forgot Password"
                        onClick="ForgotPassword_Click"
                        CausesValidation="False"
                        ></asp:LinkButton>

                    <asp:Label ID="AlreadyAMember"
                        runat="server"
                        Text=""
                        ></asp:Label>
                </p>
                <p>
                    <asp:LinkButton ID="Btn_CreateAccount"
                        runat="server"
                        Text="Create a New Account"
                        onClick="SignUp_Click"
                        CausesValidation="False"
                        ></asp:LinkButton>

                    <asp:LinkButton ID="Btn_LOGIN"
                        runat="server"
                        Text="LOGIN"
                        onClick="Login_Click"
                        CausesValidation="False"
                        ></asp:LinkButton>
                </p>
            </aside>

            <footer id="the_footer"></footer>
        
        </div>
    </form>

</body>

<footer id="bottom_footer">
    Created by Ilyas Khurshid 2017
</footer>
</html>