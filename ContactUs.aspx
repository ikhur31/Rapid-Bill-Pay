<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="RapidBillPay.ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>
        Rapid Bill Pay
    </title>
    <link href="ContactUs.css" rel="stylesheet" />


    <script type="text/javascript">

var xhttp = new XMLHttpRequest();

xhttp.open("GET", "contactinfo.xml", false);
xhttp.send();
xmlDoc = xhttp.responseXML;

function loadData() {
    var item = xmlDoc.getElementsByTagName("info");

    toll_free_phone = "Toll Free Phone Number: " + item[0].getAttribute("toll_free_phone");
    direct_phone = "Direct Phone Number: " + item[0].getAttribute("direct_phone");
    fax = "Fax: " + item[0].getAttribute("fax");
    email = "Email: " + item[0].getAttribute("email")
    address_line1 = "Address Line 1: " + item[0].getAttribute("address_line1");
    address_line2 = "Address Line 2: " + item[0].getAttribute("address_line2");
    city = "City: " + item[0].getAttribute("city");
    state = "State: " + item[0].getAttribute("state");
    zip = "Zip: " + item[0].getAttribute("zip");

    document.getElementById("hgroup1").innerHTML = toll_free_phone + "<br/>" + fax + "<br/>" + address_line1 + "<br/>" + city + "<br/>" + zip;
    document.getElementById("hgroup2").innerHTML = direct_phone + "<br/>" + email + "<br/>" + address_line2 + "<br/>" + state;
}


    </script>



</head>
<body onload="loadData()">
    <form id="form1" runat="server">
    <div id="big_wrapper">
        <header id="top_header">
            <h1>Rapid Bill Pay</h1>

            <a href="Home.aspx">Home</a>
            <a href="AboutUs.html">About Us</a>
            <a href="Security.html">Security</a>
            <a href="ContactUs.aspx">Contact Us</a>
            <a href="FAQs.html">FAQ</a>

            </div>

        </header>

        <section id="main_section">
            <article id="article1">
                <hgroup id="hgroup1">

                </hgroup>

            </article>

            <article id="article2">
                <div id="theD">

                </div>

            </article>

            <article id="article3">


                <hgroup id="hgroup2">

                </hgroup>

            </article>
        </section>
    </div>

    <section id="section2">
        <article>
            <p>
                <h1>Rapid Bill Pay Support Staff</h1>
            </p>

                <asp:TextBox ID="FirstName" placeholder='First Name' runat="server"></asp:TextBox>
                <asp:TextBox ID="LastName" placeholder='Last Name' runat="server"></asp:TextBox>
                <asp:TextBox ID="Email" placeholder='Email Address' runat="server"></asp:TextBox>


            <p>
                <asp:TextBox ID="Message" runat="server" TextMode="MultiLine" style="height: 70px; width: 710px;" name="Text1" cols="40" rows="5" placeholder='Type your message here'></asp:TextBox>

            </p>
            
            <p>
                <asp:Button ID="Btn_Submit" runat="server" onClick="DisplayError" Text="Submit your message to support staff" style="height: 40px; width: 710px;" ></asp:Button>
            </p>



        </article>

    </section>
        </form>


    <footer id="the_footer"></footer>




</body>

<footer id="bottom_footer">
    Created by Ilyas Khurshid 2017
</footer>
</html>