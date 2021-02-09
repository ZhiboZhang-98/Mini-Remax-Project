<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Remax_Project.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700|Poppins:400,600" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <%--<link rel="stylesheet" href="~/CSS/index.css" type="text/css"/>--%>
    <link rel="stylesheet" href="~/css/bootstrap.css" type="text/css"/>
    <link rel="stylesheet"  href="~/css/list.css" type="text/css" />
    <link rel="stylesheet" type="text/css"/ href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 600px;
            text-align: right;
        }
        .auto-style4 {
            width: 189px;
        }
        .auto-style5 {
            width: 189px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <header id="headers" class="headers">
        <div class="navbox clearfix">
            <div class="logo"><a href="#">Remax Property</a></div>
            <div class="searchico"></div>
        </div>
        </header>

        <div class="auto-style1">
            <br />
            <strong>Login Page</strong></div>
    <table class="auto-style2" style="height: 200px">
        <tr>
            <td class="auto-style3">UserName</td>
            <td class="auto-style4" colspan="1">
                <asp:TextBox ID="TextBoxUserName" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUserName" ErrorMessage="Please enter Username" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Password</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Please enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">
                <asp:Button ID="ButtonLogin" runat="server" OnClick="ButtonLogin_Click" Text="Login" Width="116px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">
                <asp:Label ID="LabelStatus" runat="server" ForeColor="Blue"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>

    <footer class="footer-container">
        <h1>Find your dream home.</h1>
        <div class="footer-1">
            <p>@Copyright 2018-2019<br>All rights reserved. Powered by RE/MAX inc. Canada H7E 8TY</p>
        </div>
        <div class="icon">
            <a class="fa fa-facebook" href="https://www.facebook.com/"></a>
            <a class="fa fa-twitter" href="https://twitter.com/"></a>
            <a class="fa fa-instagram" href="https://www.instagram.com/"></a>
        </div>
    </footer>

    </form>
    </body>
</html>
