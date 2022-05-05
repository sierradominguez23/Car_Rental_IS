<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MemberLogin.aspx.cs" Inherits="Test.MemberLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 330px">
    <form id="form1" runat="server">
        <div style="font-weight: bold;">
            Member Login<br />
            <br />
            Username:<asp:TextBox ID="username" runat="server"></asp:TextBox>
            <br />
            <br />
            Password:<asp:TextBox ID="pswd" runat="server"></asp:TextBox>
            <br />
            <br />
        </div>
        <asp:Button ID="login" runat="server" OnClick="login_Click" Text="Login" />
    </form>
</body>
</html>
