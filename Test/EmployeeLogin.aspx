﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeLogin.aspx.cs" Inherits="Test.EmployeeLogin1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 282px">
    <form id="form1" runat="server">
        <div>
            Username:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
        </div>
        Password:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </p>
    </form>
</body>
</html>
