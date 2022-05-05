<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Test.EmployeeLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <link rel="stylesheet" href="basic.css"/>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <title></title>
</head>

<body data-spy="scroll" data-target=".navbar" data-offset="50">

  <ul class="nav navbar-expand-sm justify-content-center bg-dark" >
    <li class="nav-item">
      <a class="nav-link" href="#section1" style="color:red;">About Us</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#section2" style="color:red;">Memberships</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#section3" style="color:red;">Location</a>
    </li>
  </ul>

  <br /><br />

  <div id="section1" class="container-fluid" style="padding-top:70px;padding-bottom:70px;color:white;margin-bottom:16%;background-color:black;">
    <h1>About Us</h1>
    <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
  </div>

  <div id="section2" class="container-fluid" style="padding-top:70px;padding-bottom:70px;color:white;margin-bottom:16%;background-color:black;">
    <h1>Memberships</h1>
    <p>Membership at Vroomster car rentals offers access to membership dashboard that will help you be able to rent from a selection of exotic and 
        top-notch cars along with a plethora of services such as payment history, reward point accumulation benefits and quality customer service.
        make the right choice today!
    </p>
    <a class="btn btn-danger" href="MemberRegistration.aspx" role="button">Register</a>
    <a class="btn btn-danger" href="MemberLogin.aspx" role="button">Login</a>
  </div>

  <div id="section3" class="container-fluid" style="padding-top:70px;padding-bottom:70px;color:white;margin-bottom:16%;background-color:black;">
    <h1>Location</h1>
    <p>Google Map will go here!</p>
  </div>

</body>

</html>
