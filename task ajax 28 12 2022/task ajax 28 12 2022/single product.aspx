<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="single product.aspx.cs" Inherits="task_ajax_28_12_2022.single_product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            margin-left: 459px;
        }
        #Button2{
            border-radius:5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            
        </div>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        <asp:Label ID="Label3" runat="server" ></asp:Label>
            <asp:Button ID="Button2" runat="server" Text="categories" CssClass="auto-style1" Height="74px" Width="400px" OnClick="Button2_Click" />

        <p>
            &nbsp;</p>
        
        <p>

            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                 <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="884px"></asp:TextBox>
              <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />

                    </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Button2" EventName="click" />
                </Triggers>
            </asp:UpdatePanel>

       
        </p>


    </form>
    
</body>
</html>
