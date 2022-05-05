<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeHome.aspx.cs" Inherits="Test.EmployeeHome" %>

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
    </form>
</body>
</html>
