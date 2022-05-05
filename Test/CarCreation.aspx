﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CarCreation.aspx.cs" Inherits="Test.CarCreation" %>

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


 <form id="form1" runat="server">
    <ul class="nav navbar-expand-sm bg-dark" >
    <li class="nav-item dropdown">
        <a class="dropdown-toggle nav-link" data-toggle="dropdown" href="#">Adding
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="MemberCreation.aspx">Add Memeber</a></li>
          <li><a href="EmployeeCreation.aspx">Add User</a></li>
          <li><a href="CarCreation.aspx">Add Car</a></li>
        </ul>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="CarInventory.aspx" style="color:white;">Car Inventory</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="CarRentals.aspx" style="color:white;">Open Rentals</a>
    </li>
    <li class="nav-item active">
      <a class="nav-link" href="MemberListing.aspx" style="color:white;">Memberships</a>
    </li>
    <li class="nav-item">
      <asp:Button ID="logout" class="btn btn-danger" runat="server" OnClick="logout_Click" Text="Log Out" />
    </li>
    </ul>

        <div>
            <br />
            Manufacturer:
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            Model:
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            Year:
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            Color:
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <br />
            Type:
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Small</asp:ListItem>
                <asp:ListItem>Medium</asp:ListItem>
                <asp:ListItem>Large</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            Description:
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <br />
            Capacity:
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <br />
            <br />
            Garage Number:
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="LotsAvailable">
            </asp:DropDownList>
            <asp:SqlDataSource ID="LotsAvailable" runat="server" ConnectionString="<%$ ConnectionStrings:rental_management %>" ProviderName="<%$ ConnectionStrings:rental_management.ProviderName %>" SelectCommand="SELECT garage_num FROM garage WHERE lot_availability = 1"></asp:SqlDataSource>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </div>
    </form>
</body>
</html>
