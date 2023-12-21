﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication7.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
                <link href="css/Register.css" rel="stylesheet" />
</head>
<body>
   <form id="form1" runat="server">
        <section class="header_section">
           

           <div class="first_div">
               <div class="re">
               <h3 class ="te">Register</h3>
                   </div>
               <div id="divError" runat="server">
               <asp:Label ID="Label1"  runat="server" Text=""></asp:Label>
                   </div>
               <div class="div_1" id="divError1" runat="server">
                   <h3 class ="text">First Name</h3>
                    <asp:TextBox ID="TextBox1" type="text"  name="first_name"  class="TextBox form-control" runat="server" BackColor="#454545" BorderColor="#FFE6C7" ForeColor="#FFA559"  ></asp:TextBox>
                </div>
               <div class="div_1" id="divError2" runat="server">
                   <h3 class ="text">Last Name</h3>
                    <asp:TextBox ID="TextBox2" type="text" name="last_name" class="TextBox form-control" runat="server" BackColor="#454545" BorderColor="#FFE6C7" ForeColor="#FFA559" ></asp:TextBox>
                </div>
               <div class="div_1" id="divError3" runat="server">
                   <h3 class ="text">Email</h3>
                    <asp:TextBox ID="TextBox3" type="email"  name="email"  class="TextBox form-control" runat="server" BackColor="#454545" BorderColor="#FFE6C7" ForeColor="#FFA559" ></asp:TextBox>
                </div>
               <div class="div_1" id="divError4" runat="server">
                    <h3 class ="text">Password</h3>
                    <asp:TextBox ID="TextBox4" type="password"  name="password" class="TextBox form-control" runat="server" BackColor="#454545" BorderColor="#FFE6C7" ForeColor="#FFA559"  ></asp:TextBox>
                </div>
                      <div class="div_1" id="divError5" runat="server">
                    <h3 class ="text">Age</h3>
                    <asp:TextBox ID="TextBox5" name="age" type="number"  class="TextBox form-control" runat="server" BackColor="#454545" BorderColor="#FFE6C7" ForeColor="#FFA559" TextMode="Number" ></asp:TextBox>
                </div>
                        <div class="div_1" id="divError6" runat="server">
                    <h3 class ="text">Phone Number</h3>
                    <asp:TextBox ID="TextBox6" name="phone" type="number" placeholder="Phone Number" class="TextBox form-control" runat="server" BackColor="#454545" BorderColor="#FFE6C7" ForeColor="#FFA559" TextMode="Number" ></asp:TextBox>
                </div>
                <div class="div_1">
                    <asp:Button  ID="Button1"  class="Button1 btn btn-outline-warning" runat="server" Text="Submit" OnClick="Button1_Click"   />
                </div>
            </div>

            <div class="secod_div">
                <img class ="img1" src="photo/logo.png"/>
                <h2 class="h2">
                    The perfect place to eat
                </h2>
            </div>
        </section>
    </form>
    <script src="Scripts/jquery-3.6.1.min.js"></script>
    <script src="Scripts/typed.min.js"></script>
</body>
</html>
