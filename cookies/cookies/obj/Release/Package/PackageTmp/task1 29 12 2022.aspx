<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="task1 29 12 2022.aspx.cs" Inherits="cookies.task1_29_12_2022" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
        #pass{
            border-radius:5px;
            border:1px solid black;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <section class="vh-100" style="background-color: #508bfc;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card shadow-2-strong" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">

            <h3 class="mb-5">Sign in</h3>

            <div class="form-outline mb-4">
              <input type="email" id="FNAME" class="form-control form-control-lg" runat="server" />
              <label class="form-label" for="typeEmailX-2">Email</label>
            </div>

            <div class="form-outline mb-4">
             <%-- <input type="password" id="pass" class="form-control form-control-lg" runat="server"/>--%>
                <asp:TextBox ID="pass" runat="server" CssClass="auto-style1" Height="52px" Width="438px" type="text"></asp:TextBox>
                <br />
              <label class="form-label" for="typePasswordX-2">Password</label>
            </div>

            <!-- Checkbox -->
            <div class="form-check d-flex justify-content-start mb-4">
                <asp:CheckBox ID="CheckBox1" runat="server" />
            <%--  <input class="form-check-input" type="checkbox" value="" id="form1Example3" />--%>
              <label class="form-check-label" for="form1Example3"> Remember password </label>
            </div>
                   <asp:Button ID="Button1" runat="server" Text="log in" OnClick="Button1_Click" />
          

            <hr class="my-4">
         

            <button class="btn btn-lg btn-block btn-primary" style="background-color: #dd4b39;"
              type="submit"><i class="fab fa-google me-2"></i> Sign in with google</button>
            <button class="btn btn-lg btn-block btn-primary mb-2" style="background-color: #3b5998;"
              type="submit"><i class="fab fa-facebook-f me-2"></i>Sign in with facebook</button>

          </div>
        </div>
      </div>
    </div>
  </div>
</section>
        </div>
    </form>
</body>
</html>
