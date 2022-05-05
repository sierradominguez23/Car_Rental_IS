<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MemberProfile.aspx.cs" Inherits="Test.MemberProfile" %>

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
    <li class="nav-item active">
      <a class="nav-link active" href="#" style="color:white;">Member Profile</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="MemberBilling.aspx" style="color:white;">Member Billing</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Reservation.aspx" style="color:white;">Reservations</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="CarListing.aspx" style="color:white;">Rental Hub</a>
    </li>
    <li class="nav-item">
      <asp:Button ID="logout" class="btn btn-danger" runat="server" OnClick="logout_Click" Text="Log Out" />
    </li>
  </ul>
  </form>

        <p>
            First Name:
            <asp:Label ID="first" runat="server" Text=""></asp:Label>
        </p>
        <p>
            Last Name:
            <asp:Label ID="last" runat="server" Text=""></asp:Label>
        </p>
        <p>
            Email: <asp:Label ID="email" runat="server" Text=""></asp:Label>
        </p>
        <p>
            Address:
            <asp:Label ID="address" runat="server" Text=""></asp:Label>
        </p>
        <p>
            City:
            <asp:Label ID="city" runat="server" Text=""></asp:Label>
        </p>
        <p>
            State:
            <asp:Label ID="state" runat="server" Text=""></asp:Label>
        </p>
        <p>
            Phone Number:
            <asp:Label ID="phoneNum" runat="server" Text=""></asp:Label>
        </p>
   

</body>
</html>
