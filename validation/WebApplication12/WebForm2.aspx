<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication12.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="two">
        <div  style="gap:50px;height:75vh; ">
  <section class="vh-150">
  <div class="container-fluid h-custom">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-md-9 col-lg-6 col-xl-5">
        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
          class="img-fluid" alt="Sample image">
      </div>
      <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
          <div class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start">
            <p class="lead fw-normal mb-0 me-3">Sign in with</p>
            <button type="button" class="btn btn-primary btn-floating mx-1">
              <i class="fab fa-facebook-f"></i>
            </button>

            <button type="button" class="btn btn-primary btn-floating mx-1">
              <i class="fab fa-twitter"></i>
            </button>

            <button type="button" class="btn btn-primary btn-floating mx-1">
              <i class="fab fa-linkedin-in"></i>
            </button>
          </div>

          <div class="divider d-flex align-items-center my-4">
            <p class="text-center fw-bold mx-3 mb-0">Or</p>
          </div>

          <!-- Email input -->
          <div class="form-outline mb-4">
            <input type="email" id="email" class="form-control form-control-lg"
              placeholder="Enter a valid email address" runat="server" />
            <label class="form-label" for="form3Example3">Email address</label>
           
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="this field is required" ValidationGroup="logingroup" ControlToValidate="email" ForeColor="Red">*</asp:RequiredFieldValidator>
            
          </div>
            
          <!-- Password input -->
          <div class="form-outline mb-3">
            <input type="password" id="password" class="form-control form-control-lg"
              placeholder="Enter password" runat="server" />
            <label class="form-label" for="form3Example4">Password</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2"  runat="server" ErrorMessage="this field is required" ValidationGroup="logingroup" ControlToValidate="password" ForeColor="Red">*</asp:RequiredFieldValidator>

          </div>
          <asp:ValidationSummary ID="ValidationSummary2" runat="server"  ValidationGroup="logingroup" ForeColor="#CC0000"/>
          <div class="d-flex justify-content-between align-items-center">
            <!-- Checkbox -->
            <div class="form-check mb-0">
              <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3" />
              <label class="form-check-label" for="form2Example3">
                Remember me
                  <input id="Reset1" type="reset" value="reset" runat="server" />
              </label>
            </div>
            <a href="#!" class="text-body">Forgot password?</a>
          </div>
            <asp:Button ID="Button1" ValidationGroup="logingroup" runat="server" Text="Button" OnClick="Button1_Click" />

          <asp:Button ID="Button3" runat="server" Text="clear" CausesValidation="False" OnClick="Button3_Click" />
          <div class="text-center text-lg-start mt-4 pt-2">
              <asp:LinkButton ID="LinkButton1" href="google.jo" runat="server">LinkButton</asp:LinkButton>
     
          </div>

      </div>
    </div>
  </div>
  <div
    class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-primary">
    <!-- Copyright -->
    <div class="text-white mb-3 mb-md-0">
      Copyright © 2020. All rights reserved.
    </div>
    <!-- Copyright -->

    <!-- Right -->
    <div>
      <a href="#!" class="text-white me-4">
        <i class="fab fa-facebook-f"></i>
      </a>
      <a href="#!" class="text-white me-4">
        <i class="fab fa-twitter"></i>
      </a>
      <a href="#!" class="text-white me-4">
        <i class="fab fa-google"></i>
      </a>
      <a href="#!" class="text-white">
        <i class="fab fa-linkedin-in"></i>
      </a>
    </div>
    <!-- Right -->
  </div>
      
</section>
            </div>

        <div  style="gap:50px;height:100vh;">


        <!-- Section: Design Block -->
<section class="text-center text-lg-start">
  <style>
    .cascading-right {
      margin-right: -50px;
    }

    @media (max-width: 991.98px) {
      .cascading-right {
        margin-right: 0;
      }
    }
  </style>

  <!-- Jumbotron -->
  <div class="container py-4">
    <div class="row g-0 align-items-center">
      <div class="col-lg-6 mb-5 mb-lg-0">
        <div class="card cascading-right" style="
            background: hsla(0, 0%, 100%, 0.55);
            backdrop-filter: blur(30px);
            ">
          <div class="card-body p-5 shadow-5 text-center">
            <h2 class="fw-bold mb-5">Sign up now</h2>
              <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
              <!-- 2 column grid layout with text inputs for the first and last names -->
              <div class="row">
                <div class="col-md-6 mb-4">
                  <div class="form-outline">
                    <input type="text" id="fname" class="form-control" runat="server" />
                    <label class="form-label" for="form3Example1">First name</label>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="this field is required" ControlToValidate="fname" ForeColor="Red" ValidationGroup="sign-up">*</asp:RequiredFieldValidator>
                  </div>
                </div>
                <div class="col-md-6 mb-4">
                  <div class="form-outline">
                    <input type="text" id="lname" class="form-control" runat="server"  />
                    <label class="form-label" for="form3Example2">Last name</label>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="this field is required" ControlToValidate="lname" ForeColor="Red" ValidationGroup="sign-up">*</asp:RequiredFieldValidator>
                  </div>
                </div>
              </div>
              

              <!-- Email input -->
              <div class="form-outline mb-4">
                <input type="email" id="emailsignup" class="form-control" runat="server" />
                <label class="form-label" for="form3Example3">Email address</label>
              </div>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="emailsignup" runat="server" ErrorMessage="use valid email"  ForeColor="Red" ValidationGroup="sign-up" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
             

              <!-- Password input -->
              <div class="form-outline mb-4">
                <input type="password" id="passwordsignup" class="form-control"  runat="server" />
                <label class="form-label" for="passwordsignup">Password</label>

                   <input type="password" id="password1" class="form-control"  runat="server" />
                <label class="form-label" for="passwordsignup">RE-password</label>
              <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="password doesnot match" ControlToCompare="passwordsignup" ControlToValidate="password1" ForeColor="Red"></asp:CompareValidator>
              </div>
              
              <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="passwordsignup" runat="server" ErrorMessage="at least eight charachter"  ForeColor="Red" ValidationGroup="sign-up" ValidationExpression=".{8,}"></asp:RegularExpressionValidator>
              <!-- Checkbox -->
              <div class="form-check d-flex justify-content-center mb-4">
                <input class="form-check-input me-2" type="checkbox" value="" id="form2Example33" checked />
                <label class="form-check-label" for="form2Example33">
                  Subscribe to our newsletter
                </label>
              </div>

              <!-- Submit button -->
            <%--  <button type="submit" class="btn btn-primary btn-block mb-4"  runat="server">
                Sign up</button>--%>
              <asp:Button ID="Button2" runat="server" Text="Button" ValidationGroup="sign-up" OnClick="Button2_Click"  />
              <!-- Register buttons -->
              <div class="text-center">
                <p>or sign up with:</p>
                <button type="button" class="btn btn-link btn-floating mx-1"> 
                  <i class="fab fa-facebook-f"></i>
                </button>
                  <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="sign-up" ForeColor="Red"  />

                <button type="button" class="btn btn-link btn-floating mx-1">
                  <i class="fab fa-google"></i>
                </button>

                <button type="button" class="btn btn-link btn-floating mx-1">
                  <i class="fab fa-twitter"></i>
                </button>

                <button type="button" class="btn btn-link btn-floating mx-1">
                  <i class="fab fa-github"></i>
                </button>
              </div>
                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>--%>
          
          </div>
        </div>
      </div>

      <div class="col-lg-6 mb-5 mb-lg-0">
        <img src="https://mdbootstrap.com/img/new/ecommerce/vertical/004.jpg" class="w-100 rounded-4 shadow-4"
          alt="" />
      </div>
    </div>
  </div>
  <!-- Jumbotron -->
</section>
<!-- Section: Design Block -->

        </div>








        </div>


</asp:Content>
