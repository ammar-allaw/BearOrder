<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Resturant.aspx.cs" Inherits="WebApplication7.WebForm7" %>
<!DOCTYPE html>
<
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

     <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&family=Pacifico&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

   <link href="css/Home.css" rel="stylesheet" />
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <!-- ////////////////-->

           


        <!-- Menu Start -->
     <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h5 class="section-title ff-secondary text-center text-primary fw-normal">Resturant Menu</h5>
                    <h1 class="mb-5">Most Popular Meals</h1>
                </div>
                <div class="tab-class text-center wow fadeInUp" data-wow-delay="0.1s">
                    <ul class="nav nav-pills d-inline-flex justify-content-center border-bottom mb-5">
                        <li class="nav-item">
                            <a class="d-flex align-items-center text-start mx-3 ms-0 pb-3 active" data-bs-toggle="pill" href="#tab-1">
                                <i class="fa fa-coffee fa-2x text-primary"></i>
                                <div class="ps-3">
                                    <small class="text-body">Popular</small>
                                    <h6 class="mt-n1 mb-0">Breakfast</h6>
                                </div>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="d-flex align-items-center text-start mx-3 pb-3" data-bs-toggle="pill" href="#tab-2">
                                <i class="fa fa-hamburger fa-2x text-primary"></i>
                                <div class="ps-3">
                                    <small class="text-body">Special</small>
                                    <h6 class="mt-n1 mb-0">Launch</h6>
                                </div>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="d-flex align-items-center text-start mx-3 me-0 pb-3" data-bs-toggle="pill" href="#tab-3">
                                <i class="fa fa-utensils fa-2x text-primary"></i>
                                <div class="ps-3">
                                    <small class="text-body">Lovely</small>
                                    <h6 class="mt-n1 mb-0">Dinner</h6>
                                </div>
                            </a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div id="tab-1" class="tab-pane fade show p-0 active"><!--datalist 1-->
                            <div class="data1">
                                <asp:DataList ID="DataList1" runat="server" BackColor="#454545" CellPadding="5" CellSpacing="100" Font-Bold="False" Font-Italic="False" Font-Names="Cursive" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" ForeColor="#FF6000" HorizontalAlign="Center"  >
                                     <ItemTemplate>
                                    <div class="Name">
                                    <asp:Label ID="Resturant_NameLabel" runat="server" Text='<%# Eval("[Name]") %>' />
                                    </div>
                                     <div class="Description">
                                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Description") %>' />
                                         </div>
                                    <div class="Photo">
                                    <img class="Photo" runat="server" src='<%# Eval("Img") %>' />
                                    </div>
                                    <div class="View">
                                        <asp:HyperLink href="Userpage.aspx" ID="HyperLink1" runat="server" Target="Userpage.aspx" BorderWidth="1px">View Resturant</asp:HyperLink>
                                    </div>
                                </ItemTemplate>
                                </asp:DataList>
                            </div>
                            </div><!-- datalist1 end-->
                        <div id="tab-2" class="tab-pane fade show p-0"><!--datalist 2-->

                        </div><!--DataList2 end-->
                        <div id="tab-3" class="tab-pane fade show p-0"><!--DataList3-->
                           
                        </div><!-- DataList3 end -->
                    </div>
                </div>
            </div>
        </div>
        <!-- Menu End -->


            <!--///////////////-->
        </div>
    </form>
     <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/tempusdominus/js/moment.min.js"></script>
    <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>
</html>