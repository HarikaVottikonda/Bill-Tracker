<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GenerateBillPage.aspx.cs" Inherits="assignment_github.GenerateBillPage" %>

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
            width: 1291px;
        }
        .newStyle1 {
            background-color: #008080;
            font-size: x-large;
            font-weight: bold;
            color: #FFFFFF;
        }
        .auto-style4 {
            background-color: #008080;
            font-size: x-large;
            font-weight: bold;
            color: #FFFFFF;
            height: 62px;
            margin-top: 0px;
        }
        .auto-style5 {
            width: 100%;
            height: 92px;
        }
        .auto-style6 {
            height: 50px;
            text-align: center;
        }
        .auto-style7 {
            width: 100%;
        }
        .newStyle2 {
            background-color: #006666;
            font-size: large;
            font-weight: bold;
            color: #00FF00;
        }
        .newStyle3 {
            background-color: #CC0000;
            color: #FFFF99;
            font-weight: bold;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table cellpadding="2" class="auto-style4">
                <tr>
                    <td class="auto-style3">GENERATE NEW BILL FORM</td>
                </tr>
            </table>
            <br />
            <table cellpadding="5" class="auto-style1">
                <tr>
                    <td>BIll Title:</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Height="38px" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Bill Category:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>Personal</asp:ListItem>
                            <asp:ListItem>Social</asp:ListItem>
                            <asp:ListItem>Family</asp:ListItem>
                            <asp:ListItem>Office</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Bill Amount:</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Height="38px" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Date of Entry:</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" Height="38px" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Bill Due Date:</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" Height="38px" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Bill Payment Mode:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>CC</asp:ListItem>
                            <asp:ListItem>Cash</asp:ListItem>
                            <asp:ListItem>Bank Transfer</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Bill Status:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>Paid</asp:ListItem>
                            <asp:ListItem>Unpaid</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" BackColor="#339966" Height="33px" OnClick="Button1_Click" Text="Generate Bill" Width="247px" />
                    </td>
                    <td>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <table class="auto-style5">
                <tr class="newStyle2">
                    <td class="auto-style6">Bill Report</td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="768px" OnPageIndexChanging="GridView1_PageIndexChanging">
                            <AlternatingRowStyle BackColor="White" />
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F8FAFA" />
                            <SortedAscendingHeaderStyle BackColor="#246B61" />
                            <SortedDescendingCellStyle BackColor="#D4DFE1" />
                            <SortedDescendingHeaderStyle BackColor="#15524A" />
                        </asp:GridView>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <table class="auto-style7">
                <tr class="newStyle3">
                    <td class="auto-style6">List all bills by due date</td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="770px" OnPageIndexChanging="GridView2_PageIndexChanging">
                            <AlternatingRowStyle BackColor="White" />
                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                            <SortedAscendingCellStyle BackColor="#FDF5AC" />
                            <SortedAscendingHeaderStyle BackColor="#4D0000" />
                            <SortedDescendingCellStyle BackColor="#FCF6C0" />
                            <SortedDescendingHeaderStyle BackColor="#820000" />
                        </asp:GridView>
                    </td>
                </tr>
            </table>
            <br />
        </div>
    </form>
</body>
</html>
