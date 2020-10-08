<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="assignment_github.RegisterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 60%;
        }
        .auto-style2 {
            text-align: center;
        }
        .newStyle1 {
            font-weight: bold;
            font-size: x-large;
            color: #FFFFFF;
            background-color: #808000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" cellpadding="5" class="auto-style1">
                <tr class="newStyle1">
                    <td class="auto-style2" colspan="2">WELCOME TO REGISTRATION FORM</td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="254px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Gender:</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Height="31px" Width="254px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>City:</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Height="31px" Width="254px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>State:</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Height="31px" Width="254px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" Height="31px" Width="254px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" BackColor="#336600" OnClick="Button1_Click" Text="Register" Width="125px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
