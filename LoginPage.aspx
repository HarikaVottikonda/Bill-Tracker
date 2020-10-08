<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="assignment_github.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
        }
        .auto-style3 {
            text-align: center;
            width: 84px;
        }
        .newStyle1 {
            font-size: x-large;
            background-color: #0000FF;
            color: #FFFFFF;
            font-weight: bold;
        }
        .newStyle2 {
            background-color: #C0C0C0;
        }
        .auto-style5 {
            width: 272px;
        }
        .newStyle3 {
            background-color: #008080;
            font-size: x-large;
            font-weight: bold;
            color: #FFFFFF;
        }
        .auto-style6 {
            background-color: #008080;
            font-size: x-large;
            font-weight: bold;
            color: #FFFFFF;
            height: 67px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" cellpadding="5" class="auto-style1">
                <tr>
                    <td class="auto-style3" rowspan="4">
                        <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl="~/download.jpg" Width="200px" />
                    </td>
                    <td class="auto-style6" colspan="2">LOGIN FORM</td>
                </tr>
                <tr class="newStyle2">
                    <td class="auto-style5">Username:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" BackColor="#99CCFF" Height="28px" Width="206px"></asp:TextBox>
                    </td>
                </tr>
                <tr class="newStyle2">
                    <td class="auto-style5">Password:</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" BackColor="#99CCFF" Height="28px" Width="206px"></asp:TextBox>
                    </td>
                </tr>
                <tr class="newStyle2">
                    <td class="auto-style5">
                        <asp:Button ID="Button1" runat="server" Height="31px" Text="Login" Width="109px" OnClick="Button1_Click" />
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#CC0000" NavigateUrl="~/RegisterPage.aspx">Register?</asp:HyperLink>
                        <asp:Label ID="Label1" runat="server" ForeColor="Black">Create New account</asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                        <br />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
