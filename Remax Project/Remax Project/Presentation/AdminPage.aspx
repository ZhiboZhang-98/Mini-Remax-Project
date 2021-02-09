<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="Remax_Project.Presentation.AdminPage" %>

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
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 165px;
            text-align: right;
        }
        .auto-style5 {
            width: 291px;
            text-align: left;
        }
        .auto-style6 {
            width: 243px;
            text-align: right;
        }
        .auto-style7 {
            width: 267px;
            text-align: left;
        }
        .auto-style8 {
            width: 30%;
        }
        .auto-style10 {
            text-align: center;
        }
        .auto-style12 {
            text-align: right;
            height: 26px;
            width: 295px;
        }
        .auto-style13 {
            text-align: center;
            height: 26px;
        }
        .auto-style14 {
            width: 295px;
            text-align: right;
        }
        .auto-style15 {
            text-align: center;
            height: 26px;
            width: 316px;
        }
        .auto-style16 {
            text-align: center;
            width: 316px;
        }
        .auto-style17 {
            width: 291px;
            text-align: right;
        }
        .auto-style18 {
            width: 243px;
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <header id="headers" class="headers">
        <div class="navbox clearfix">
            <div class="logo"><a href="#">Remax Property</a></div>
            <nav>
                <ul id="starlist">
                    <li><a href="Login.aspx">Log Out</a></li>
                </ul>
            </nav>
            <div class="searchico"></div>
        </div>
        </header>

        <div class="auto-style10" style="font-size: xx-large">
            <br />
            <strong>Residential Information - Admin</strong></div>
        <div class="auto-style10" style="position: relative; top: 100px; height: 500px">
            <table class="auto-style3" style="padding: 0px; margin: 0px;">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style17">
                        <asp:Label ID="LabelResidentId" runat="server" Text="Resident Id:"></asp:Label>
                    </td>
                    <td class="auto-style18">
                        <asp:TextBox ID="TextBoxResidentId" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Label ID="LabelResidentName" runat="server" Text="Resident Name:"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBoxResidentName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorResidentName" runat="server" ControlToValidate="TextBoxResidentName" Display="Dynamic" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style6">
                        <asp:Label ID="LabelResidentAddress" runat="server" Text="Resident Address:"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBoxResidentAddress" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorResidentAddress" runat="server" ControlToValidate="TextBoxResidentAddress" Display="Dynamic" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Label ID="LabelRegion" runat="server" Text="Region:"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="DropDownListRegions" runat="server" AutoPostBack="True" placeholder="Regions :" Width="292px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style6">
                        <asp:Label ID="LabelCity" runat="server" Text="City:"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="DropDownListCities" runat="server" AutoPostBack="True" placeholder="Cities / Neighbourhoods :" Width="292px">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Label ID="LabelRoom" runat="server" Text="Room(s):"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBoxNumOfRoom" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorNumOfRoom" runat="server" ControlToValidate="TextBoxNumOfRoom" Display="Dynamic" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidatorNumOfRoom" runat="server" ControlToValidate="TextBoxNumOfRoom" Display="Dynamic" ErrorMessage="Incorrect Format" ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                    </td>
                    <td class="auto-style6">
                        <asp:Label ID="LabelBathroom" runat="server" Text="Bathroom(s):"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBoxNumOfBathroom" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorNumOfBathroom" runat="server" ControlToValidate="TextBoxNumOfBathroom" Display="Dynamic" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBoxNumOfBathroom" Display="Dynamic" ErrorMessage="Incorrect Format" ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Label ID="LabelPrice" runat="server" Text="Price:"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBoxPrice" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPrice" runat="server" ControlToValidate="TextBoxPrice" Display="Dynamic" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidatorPrice" runat="server" ControlToValidate="TextBoxPrice" Display="Dynamic" ErrorMessage="Incorrect Format" ForeColor="Red" Operator="DataTypeCheck" Type="Currency"></asp:CompareValidator>
                    </td>
                    <td class="auto-style6">
                        <asp:Label ID="LabelImage" runat="server" Text="Image:"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:FileUpload ID="FileUploadImage" runat="server" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <table align="center" class="auto-style8">
                <tr>
                    <td class="auto-style12"></td>
                    <td class="auto-style15">Yes</td>
                    <td class="auto-style13">No</td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        <asp:Label ID="LabelGarage" runat="server" Text="Garage:"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        <asp:RadioButton ID="RadioButtonGYes" runat="server" AutoPostBack="True" GroupName="Garage" />
                    </td>
                    <td class="auto-style10">
                        <asp:RadioButton ID="RadioButtonGNo" runat="server" AutoPostBack="True" GroupName="Garage" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        <asp:Label ID="LabelPool" runat="server" Text="Pool:"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        <asp:RadioButton ID="RadioButtonPYes" runat="server" AutoPostBack="True" GroupName="Pool" />
                    </td>
                    <td class="auto-style10">
                        <asp:RadioButton ID="RadioButtonPNo" runat="server" AutoPostBack="True" GroupName="Pool" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        <asp:Label ID="LabelFireplace" runat="server" Text="Fireplace"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        <asp:RadioButton ID="RadioButtonFPYes" runat="server" AutoPostBack="True" GroupName="Fireplace" />
                    </td>
                    <td class="auto-style10">
                        <asp:RadioButton ID="RadioButtonFPNo" runat="server" AutoPostBack="True" GroupName="Fireplace" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <asp:Button ID="ButtonSave" runat="server" Text="Save" OnClick="ButtonSave_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="ButtonUpdate" runat="server" Text="Update" OnClick="ButtonUpdate_Click" />
        &nbsp;&nbsp;&nbsp;
            <asp:Button ID="ButtonDelete" runat="server" OnClick="ButtonDelete_Click" Text="Delete" />
        </div>

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
