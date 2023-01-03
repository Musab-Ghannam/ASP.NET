<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication15.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>

</head>
<body>
    <form id="form1" runat="server">
            <asp:ScriptManager runat="server" />
        <div>
            <h1>how you see our services?</h1>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem Value="1">Excelent</asp:ListItem>
                <asp:ListItem Value="2">very good</asp:ListItem>
                <asp:ListItem Value="3">good</asp:ListItem>
                <asp:ListItem Value="4">poor</asp:ListItem>
            </asp:RadioButtonList>
       
   

   <asp:Label ID="Label1" runat="server" Text="" ></asp:Label>
             



            </div>

         
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />


            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>

 
       
    </form>
</body>
</html>
