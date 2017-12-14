<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="RapidBillPay.SignUp" %>

<!DOCTYPE html>

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
                    Text="Complete Your Full Mailing Address"
                />

                <p>
                    <asp:ImageButton style="vertical-align: middle;" ID="StateButton" runat="server" ImageUrl="~/images/address.png" Height="25px" Width="25px" ToolTip="United States Postal abbreviations for states" />

                    <asp:DropDownList ID="State" width="610px" runat="server" placeholder='Select State/Province'>
	                    <asp:ListItem Value="">Select State/Province</asp:ListItem>
                        <asp:ListItem Value="AL">AL</asp:ListItem>
	                    <asp:ListItem Value="AK">AK</asp:ListItem>
	                    <asp:ListItem Value="AZ">AZ</asp:ListItem>
	                    <asp:ListItem Value="AR">AR</asp:ListItem>
	                    <asp:ListItem Value="CA">CA</asp:ListItem>
	                    <asp:ListItem Value="CO">CO</asp:ListItem>
	                    <asp:ListItem Value="CT">CT</asp:ListItem>
	                    <asp:ListItem Value="DC">DC</asp:ListItem>
	                    <asp:ListItem Value="DE">DE</asp:ListItem>
	                    <asp:ListItem Value="FL">FL</asp:ListItem>
	                    <asp:ListItem Value="GA">GA</asp:ListItem>
	                    <asp:ListItem Value="HI">HI</asp:ListItem>
	                    <asp:ListItem Value="ID">ID</asp:ListItem>
	                    <asp:ListItem Value="IL">IL</asp:ListItem>
	                    <asp:ListItem Value="IN">IN</asp:ListItem>
	                    <asp:ListItem Value="IA">IA</asp:ListItem>
	                    <asp:ListItem Value="KS">KS</asp:ListItem>
	                    <asp:ListItem Value="KY">KY</asp:ListItem>
	                    <asp:ListItem Value="LA">LA</asp:ListItem>
	                    <asp:ListItem Value="ME">ME</asp:ListItem>
	                    <asp:ListItem Value="MD">MD</asp:ListItem>
	                    <asp:ListItem Value="MA">MA</asp:ListItem>
	                    <asp:ListItem Value="MI">MI</asp:ListItem>
	                    <asp:ListItem Value="MN">MN</asp:ListItem>
	                    <asp:ListItem Value="MS">MS</asp:ListItem>
	                    <asp:ListItem Value="MO">MO</asp:ListItem>
	                    <asp:ListItem Value="MT">MT</asp:ListItem>
	                    <asp:ListItem Value="NE">NE</asp:ListItem>
	                    <asp:ListItem Value="NV">NV</asp:ListItem>
	                    <asp:ListItem Value="NH">NH</asp:ListItem>
	                    <asp:ListItem Value="NJ">NJ</asp:ListItem>
	                    <asp:ListItem Value="NM">NM</asp:ListItem>
	                    <asp:ListItem Value="NY">NY</asp:ListItem>
	                    <asp:ListItem Value="NC">NC</asp:ListItem>
	                    <asp:ListItem Value="ND">ND</asp:ListItem>
	                    <asp:ListItem Value="OH">OH</asp:ListItem>
	                    <asp:ListItem Value="OK">OK</asp:ListItem>
	                    <asp:ListItem Value="OR">OR</asp:ListItem>
	                    <asp:ListItem Value="PA">PA</asp:ListItem>
	                    <asp:ListItem Value="RI">RI</asp:ListItem>
	                    <asp:ListItem Value="SC">SC</asp:ListItem>
	                    <asp:ListItem Value="SD">SD</asp:ListItem>
	                    <asp:ListItem Value="TN">TN</asp:ListItem>
	                    <asp:ListItem Value="TX">TX</asp:ListItem>
	                    <asp:ListItem Value="UT">UT</asp:ListItem>
	                    <asp:ListItem Value="VT">VT</asp:ListItem>
	                    <asp:ListItem Value="VA">VA</asp:ListItem>
	                    <asp:ListItem Value="WA">WA</asp:ListItem>
	                    <asp:ListItem Value="WV">WV</asp:ListItem>
	                    <asp:ListItem Value="WI">WI</asp:ListItem>
	                    <asp:ListItem Value="WY">WY</asp:ListItem>
                    </asp:DropDownList>

                    <br>

                    <span style="padding-left:30px">

                    <asp:RequiredFieldValidator id="RFVState" runat="server"
                      ControlToValidate="State"
                      ErrorMessage="State can't be empty"
                      ForeColor="Red"
                      display="Dynamic"
                      Font-Size="12">
                </asp:RequiredFieldValidator>

                </p>

                <p>
                    <asp:ImageButton style="vertical-align: middle;" ID="StreetButton" runat="server" ImageUrl="~/images/address.png" Height="25px" Width="25px" ToolTip="Customer Mailing Street Address" />

                    <asp:TextBox ID="Street" width="450px" runat="server" placeholder='Street Address'></asp:TextBox>

                    <asp:ImageButton style="vertical-align: middle;" ID="ZipCodeButton" runat="server" ImageUrl="~/images/address.png" Height="25px" Width="25px" ToolTip="Customer Mailing Zip Code" />

                    <asp:TextBox ID="ZipCode" width="120px" runat="server" placeholder='Zip Code'></asp:TextBox>

                    <br>

                    <span style="padding-left:30px">

                    <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server"
                      ControlToValidate="Street"
                      ErrorMessage="Street can't be empty"
                      ForeColor="Red"
                      display="Dynamic"
                      Font-Size="12">
                </asp:RequiredFieldValidator>

                    <span style="padding-left:320px">

                    <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server"
                      ControlToValidate="ZipCode"
                      ErrorMessage="Zip code can't be empty"
                      ForeColor="Red"
                      display="Dynamic"
                      Font-Size="12">
                </asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator id="REVZipCode" runat="server" 
                      ErrorMessage="Invalid Zip code" 
                      ValidationExpression="^(\d{5}-\d{4}|\d{5}|\d{9})$|^([a-zA-Z]\d[a-zA-Z] \d[a-zA-Z]\d)$"
                      ForeColor ="Red"
                      display="Dynamic" 
                      ControlToValidate="ZipCode" />

                </p>

                <p>
                    <asp:ImageButton style="vertical-align: middle;" ID="ProfileButton" runat="server" ImageUrl="~/images/profile.png" Height="25px" Width="25px" ToolTip="Customer First Name" />

                    <asp:TextBox ID="FirstName" width="285px" runat="server" placeholder='First Name'></asp:TextBox>

                    <asp:ImageButton style="vertical-align: middle;" ID="ProfileButton2" runat="server" ImageUrl="~/images/profile.png" Height="25px" Width="25px" ToolTip="Customer Last Name" />

                    <asp:TextBox ID="LastName" width="285px" runat="server" placeholder='Last Name'></asp:TextBox>

                    <br>

                    <span style="padding-left:30px">

                    <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server"
                      ControlToValidate="FirstName"
                      ErrorMessage="First Name can't be empty"
                      ForeColor="Red"
                      display="Dynamic"
                      Font-Size="12">
                </asp:RequiredFieldValidator>

                        <span style="padding-left:150px">

                    <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server"
                      ControlToValidate="LastName"
                      ErrorMessage="Last Name can't be empty"
                      ForeColor="Red"
                      display="Dynamic"
                      Font-Size="12">
                </asp:RequiredFieldValidator>

                </p>

                <p>
                    <asp:ImageButton style="vertical-align: middle;" ID="Phone" runat="server" ImageUrl="~/images/phone.png" Height="25px" Width="25px" ToolTip="Customer Home Phone" />

                    <asp:TextBox ID="HomePhone" width="285px" runat="server" placeholder='Home Phone'></asp:TextBox>

                    <asp:ImageButton style="vertical-align: middle;" ID="Cell" runat="server" ImageUrl="~/images/phone.png" Height="25px" Width="25px" ToolTip="Customer Cell Phone" />

                    <asp:TextBox ID="CellPhone" width="285px" runat="server" placeholder='Cell Phone'></asp:TextBox>

                     <br>

                    <span style="padding-left:30px">

                    <asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server"
                      ControlToValidate="HomePhone"
                      ErrorMessage="Home phone can't be empty"
                      ForeColor="Red"
                      display="Dynamic"
                      Font-Size="12">
                </asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" 
                      ErrorMessage="Invalid Home phone" 
                      ValidationExpression="^(?:(?:\+?1\s*(?:[.-]\s*)?)?(?:(\s*([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]‌​)\s*)|([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]))\s*(?:[.-]\s*)?)([2-9]1[02-9]‌​|[2-9][02-9]1|[2-9][02-9]{2})\s*(?:[.-]\s*)?([0-9]{4})$"
                      ForeColor ="Red"
                      display="Dynamic" 
                      ControlToValidate="HomePhone" />

                        <span style="padding-left:140px">

                    <asp:RequiredFieldValidator id="RequiredFieldValidator6" runat="server"
                      ControlToValidate="CellPhone"
                      ErrorMessage="Cell phone can't be empty"
                      ForeColor="Red"
                      display="Dynamic"
                      Font-Size="12">
                </asp:RequiredFieldValidator>

                            <asp:RegularExpressionValidator id="RegularExpressionValidator2" runat="server" 
                      ErrorMessage="Invalid Cell Phone" 
                      ValidationExpression="^(?:(?:\+?1\s*(?:[.-]\s*)?)?(?:(\s*([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]‌​)\s*)|([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]))\s*(?:[.-]\s*)?)([2-9]1[02-9]‌​|[2-9][02-9]1|[2-9][02-9]{2})\s*(?:[.-]\s*)?([0-9]{4})$"
                      ForeColor ="Red"
                      display="Dynamic" 
                      ControlToValidate="CellPhone" />

                </p>

                <p>
                    Note: Your e-mail address will be your username
                </p>

                <p>
                    <asp:ImageButton style="vertical-align: middle;" ID="EmailIcon" runat="server" ImageUrl="~/images/email.png" Height="25px" Width="25px" ToolTip="A valid Email Address" />

                    <asp:TextBox ID="Email" width="285px" runat="server" AutoPostBack="true" placeholder='Email Address'></asp:TextBox>

                    <asp:ImageButton style="vertical-align: middle;" ID="Email2" runat="server" ImageUrl="~/images/email.png" Height="25px" Width="25px" ToolTip="Retype the email address" />

                    <asp:TextBox ID="ReTypeEmail" width="285px" runat="server" placeholder='Retype Email Address'></asp:TextBox>

                    <br>

                    <span style="padding-left:30px">

                    <asp:RequiredFieldValidator id="RequiredFieldValidator7" runat="server"
                      ControlToValidate="Email"
                      ErrorMessage="Email can't be empty"
                      ForeColor="Red"
                      display="Dynamic"
                      Font-Size="12">
                </asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator id="RegularExpressionValidator3" runat="server" 
                      ErrorMessage="Invalid Email" 
                      ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"
                      ForeColor ="Red"
                      display="Dynamic" 
                      ControlToValidate="Email" />

                        <span style="padding-left:185px">

                    <asp:RequiredFieldValidator id="RequiredFieldValidator8" runat="server"
                      ControlToValidate="ReTypeEmail"
                      ErrorMessage="Retype Email"
                      ForeColor="Red"
                      display="Dynamic"
                      Font-Size="12">
                </asp:RequiredFieldValidator>

                            <asp:RegularExpressionValidator id="RegularExpressionValidator4" runat="server" 
                      ErrorMessage="Invalid Email" 
                      ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"
                      ForeColor ="Red"
                      display="Dynamic" 
                      ControlToValidate="ReTypeEmail" />

                            <asp:CompareValidator id="Compare1" 
                    ControlToValidate="ReTypeEmail" 
                    ControlToCompare="Email" 
                    Type="String" 
                    Text="Email does not match"
                    display="Dynamic"
                    ForeColor="Red" 
                    runat="server"/>

                </p>

                <p>
                    <asp:ImageButton style="vertical-align: middle;" ID="Key" runat="server" ImageUrl="~/images/key.png" Height="25px" Width="25px" ToolTip="Password must be between 8 and 10 characters, contain at least one digit and one alphabetic character, and must not contain special character" />

                    <asp:TextBox ID="Password" width="285px" runat="server" placeholder='Password'></asp:TextBox>

                    <asp:ImageButton style="vertical-align: middle;" ID="Key2" runat="server" ImageUrl="~/images/key.png" Height="25px" Width="25px" ToolTip="Retype the password" />

                    <asp:TextBox ID="RetypePassword" width="285px" runat="server" placeholder='Retype Password'></asp:TextBox>

                    <br>

                    <span style="padding-left:30px">

                    <asp:RequiredFieldValidator id="RequiredFieldValidator9" runat="server"
                      ControlToValidate="Password"
                      ErrorMessage="Password can't be empty"
                      ForeColor="Red"
                      display="Dynamic"
                      Font-Size="12">
                </asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator id="RegularExpressionValidator5" runat="server" 
                      ErrorMessage="Invalid Password" 
                      ValidationExpression="^(?=.*\d)(?=.*[a-z | A-Z]).{8,10}$"
                      ForeColor ="Red"
                      display="Dynamic" 
                      ControlToValidate="Password" />

                        <span style="padding-left:160px">

                    <asp:RequiredFieldValidator id="RequiredFieldValidator10" runat="server"
                      ControlToValidate="RetypePassword"
                      ErrorMessage="Retype Password"
                      ForeColor="Red"
                      display="Dynamic"
                      Font-Size="12">
                </asp:RequiredFieldValidator>

                            <asp:RegularExpressionValidator id="RegularExpressionValidator6" runat="server" 
                      ErrorMessage="Invalid Password" 
                      ValidationExpression="^(?=.*\d)(?=.*[a-z | A-Z]).{8,10}$"
                      ForeColor ="Red"
                      display="Dynamic" 
                      ControlToValidate="RetypePassword" />

                            <asp:CompareValidator id="CompareValidator1" 
                    ControlToValidate="RetypePassword" 
                    ControlToCompare="Password" 
                    Type="String" 
                    Text="Password does not match"
                    display="Dynamic"
                    ForeColor="Red" 
                    runat="server"/>

                </p>

                <p>
                    Select a security question
                </p>

                <p>
                    <asp:ImageButton style="vertical-align: middle;" ID="Question1Icon" runat="server" ImageUrl="~/images/question.png" Height="25px" Width="25px" ToolTip="Select a security question" />

                    <asp:DropDownList ID="SecurityQuestion" width="610px" runat="server" placeholder='Select State/Province'>
	                    <asp:ListItem Value="1">What is your mother's maiden name?</asp:ListItem>
                        <asp:ListItem Value="2">What was your childhood nickname?</asp:ListItem>
                        <asp:ListItem Value="3">What is the name of your favorite childhood friend?</asp:ListItem>
                        <asp:ListItem Value="4">What is your favorite sport team?</asp:ListItem>
                        <asp:ListItem Value="5">What was the make and model of your first car?</asp:ListItem>
                        <asp:ListItem Value="6">What school did you attend for sixth grade?</asp:ListItem>
                        <asp:ListItem Value="7">What was the last name of your third grade teacher?</asp:ListItem>
                        <asp:ListItem Value="8">In what town was your first job?</asp:ListItem>
                        <asp:ListItem Value="9">What is your favorite movie?</asp:ListItem>
                        <asp:ListItem Value="10">Who is your childhood sports hero?</asp:ListItem>
                        <asp:ListItem Value="11">In what year was your father born?</asp:ListItem>
                    </asp:DropDownList>

                </p>

                <p>
                    <asp:ImageButton style="vertical-align: middle;" ID="Question2ICon" runat="server" ImageUrl="~/images/question.png" Height="25px" Width="25px" ToolTip="Enter an answer to the security question" />

                    <asp:TextBox ID="securityQuestion2" width="610px" runat="server" placeholder='Type answer to the security question'></asp:TextBox>

                    <br>

                    <span style="padding-left:30px">

                    <asp:RequiredFieldValidator id="RequiredFieldValidator11" runat="server"
                      ControlToValidate="securityQuestion2"
                      ErrorMessage="Answer can't be empty"
                      ForeColor="Red"
                      display="Dynamic"
                      Font-Size="12">
                </asp:RequiredFieldValidator>

                </p>

                <p>
                    <a href="PrivacyPolicy.html" target="_blank">Privacy Policy</a>

                    &nbsp;

                    <asp:CheckBox ID="CheckBox1" runat="server" Text="I have read and agreed to the Terms and Conditions in the Privacy Policy" />
                </p>

                <p>
                    <asp:Button ID="btnConfirm"
                        runat="server"
                        Text="CANCEL"
                        OnClick="OnConfirm"
                         OnClientClick="Confirm()" />


                    <asp:Button ID="Btn_CreateAccount"
                        runat="server"
                        Text="CreateAccount"
                        onClick="isChecked" />
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