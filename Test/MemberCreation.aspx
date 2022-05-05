<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MemberCreation.aspx.cs" Inherits="Test.MemeberCreation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <strong style="text-align: center">Member Registration</strong><br />
            <br />
            First Name: <asp:TextBox ID="firstName" runat="server"></asp:TextBox>
            <br />
            <br />
            Last Name:
            <asp:TextBox ID="lastName" runat="server"></asp:TextBox>
            <br />
            <br />
            Email:
            <asp:TextBox ID="email" runat="server"></asp:TextBox>
            <br />
            <br />
            Password:
            <asp:TextBox ID="pswd" runat="server"></asp:TextBox>
            <br />
            <br />
            Address:
            <asp:TextBox ID="address" runat="server"></asp:TextBox>
            <br />
            <br />
            City:
            <asp:TextBox ID="city" runat="server"></asp:TextBox>
            <br />
            <br />
            State:
            <asp:TextBox ID="state" runat="server"></asp:TextBox>
            <br />
            <br />
            Phone Number:
            <asp:TextBox ID="phoneNumber" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="submitRegistration" runat="server" Text="Save" OnClick="submitRegistration_Click" />
        </div>
    </form>
</body>
</html>
