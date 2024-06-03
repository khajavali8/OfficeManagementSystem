<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OMS3.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <style>
        .form-group 
        {
            margin-bottom: 15px;
        }
        .form-group label 
        {
            display: inline-block;
            width: 100px;
            text-align: right;
        }
        .form-group input 
        {
            display: inline-block;
        }
    </style>
</head>
<body>
    <h1>Login Page</h1>
    
    <form id="form1" runat="server">
        <div class="form-group">
            <asp:Label ID="lblUser" runat="server" Text="Username:"></asp:Label>
            <asp:TextBox ID="txtUsername" runat="server" TextMode="SingleLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername"   
                ErrorMessage="Please enter a Username" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        <div class="form-group">
            <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" 
                ErrorMessage="Please enter a Password" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        <div class="form-group">
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="BtnLogin_Click"/>      
            <asp:Button ID="btnNewUser" runat="server" Text="New User" OnClick="BtnNewUser_Click" />
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
        </div>
    </form>
</body>
</html>
