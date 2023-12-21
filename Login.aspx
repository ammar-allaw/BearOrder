<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication7.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>welcome</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <link href="css/Login.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <section class="header_section">
           

           <div class="first_div">
               <div class="lol">
               <h1 class="lo"> Login </h1>
                   </div>
                <div class="div_1">
                    <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#454545" Font-Bold="True" ForeColor="#FFA559">
                        <asp:ListItem>Select User !!</asp:ListItem>
                        <asp:ListItem>resturant</asp:ListItem>
                        <asp:ListItem>admin</asp:ListItem>
                        <asp:ListItem>delivery</asp:ListItem>
                        <asp:ListItem>client</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="div_1">
                    <asp:TextBox ID="TextBox1"  class="TextBox form-control" placeholder="Email" runat="server" BackColor="#454545" BorderColor="#FFE6C7" ForeColor="#FFA559" OnTextChanged="TextBox1_TextChanged" TextMode="Email" ></asp:TextBox>
                </div>
                <div class="div_1">
                    <asp:TextBox ID="TextBox2" class="TextBox form-control" placeholder="Password" runat="server" BackColor="#454545" BorderColor="#FFE6C7" ForeColor="#FFA559" TextMode="Password" ></asp:TextBox>
                </div>
                <div class="div_1">
                    <asp:CheckBox class="font" ID="CheckBox1" runat="server" Text="remeber me"  />
                    <br />
                    <asp:HyperLink class="font" ID="HyperLink1" runat="server" ForeColor="#FFA559">forget password</asp:HyperLink>
                    <br />
                    Don&#39;t have a acount <asp:HyperLink class="font" ID="HyperLink2" runat="server" ForeColor="#FFA559">Register</asp:HyperLink>
                </div>
                <div class="div_1">
                    <asp:Button  ID="Button1"  class="Button1 btn btn-outline-warning" runat="server" Text="Button" OnClick="Button1_Click"   />
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
