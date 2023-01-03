<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="task 2 29 12 22.aspx.cs" Inherits="cookies.task_2_29_12_22" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 266px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <%-- <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style1" Height="47px" Width="309px"></asp:TextBox>--%>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            
            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem Value="red">red</asp:ListItem>
                <asp:ListItem Value="green">green</asp:ListItem>
                <asp:ListItem Value="black">black</asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            <h1 id="ok">ok</h1>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
        
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
