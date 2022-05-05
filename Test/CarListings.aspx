<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CarListings.aspx.cs" Inherits="Test.CarListings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <title></title>
</head>
<body>

    <form runat="server">
    <ul class="nav navbar-expand-sm bg-dark" >
    <li class="nav-item">
      <a class="nav-link active" href="MemberProfile.aspx" style="color:white;">Member Profile</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="MemberBilling.aspx" style="color:white;">Member Billing</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Reservation.aspx" style="color:white;">Reservations</a>
    </li>
    <li class="nav-item active">
      <a class="nav-link" href="CarListings.aspx" style="color:white;">Rental Hub</a>
    </li>
    <li class="nav-item">
      <asp:Button ID="logout" class="btn btn-danger" runat="server" OnClick="logout_Click" Text="Log Out" />
    </li>
    </ul>
    
        <div style="height: auto">
            <br />
            <asp:ListView ID="ListView" runat="server" DataSourceID="CarsAvailable">
                <ItemTemplate>
                    <div class="container">
                        <div class="col-sm-4" style="background-color:darkgray;text-align:center;height:100%;padding:1%;">
                            <asp:Image ID="Image1" runat="server" Width="100%" Height="85%" ImageUrl= '<% #Eval("car_image") %>'/>
                            <br />
                            <p><b>Car: <%#Eval("car_year")%> <%#Eval("car_brand")%> <%#Eval("car_model")%></b>
                            <br /><b>Car Type: <%#Eval("car_type")%></b></p>
                            <asp:Button ID="button1" class="btn btn-dark" runat="server" Text="View Details" CommandName="viewDetails" OnCommand="button1_Command" CommandArgument='<% #Eval("car_id") %>' />
                        </div>
                    </div>
                </ItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="CarsAvailable" runat="server" ConnectionString="<%$ ConnectionStrings:rental_management %>" ProviderName="<%$ ConnectionStrings:rental_management.ProviderName %>" SelectCommand="SELECT * FROM car_inventory WHERE car_availability = 1"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
