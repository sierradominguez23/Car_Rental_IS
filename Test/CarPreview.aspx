<!--Will be a page dedicated to car selected in the Car Listing Page-->
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CarPreview.aspx.cs" Inherits="Test.CarPreview" %>

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

     <div class="container" style="text-align:center;">
        <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8" style="text-align:center;">
          <asp:ListView ID="ListView1" runat="server" DataSourceID="CarDetails">
                <ItemTemplate>
                     <h1><%# Eval("car_year") %> <%# Eval("car_brand") %> <%# Eval("car_model") %> </h1>
                     <br />
                     <asp:Image ID="Image2" runat="server" Height="60%" Width="50%" ImageUrl='<% #Eval("car_image") %>'/>
                     <br />
                     <p>Car Color: <%# Eval("car_color") %></p>
                     <p>Car Type: <%# Eval("car_Type") %></p>
                     <p>Car Capacity: <%# Eval("car_capacity") %></p>
                     <p>Car Description: <%# Eval("car_description") %></p>
                </ItemTemplate>
            </asp:ListView>
         </div>
         <div class="col-md-2"></div>

            <asp:SqlDataSource ID="CarDetails" runat="server" ConnectionString="<%$ ConnectionStrings:rental_management %>" ProviderName="<%$ ConnectionStrings:rental_management.ProviderName %>" SelectCommand="SELECT * FROM car_inventory WHERE (car_id = ?)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="car_id" QueryStringField="id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>

        </div>
    </div>
    </form>
</body>
</html>
