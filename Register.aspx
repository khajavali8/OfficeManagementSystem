<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="OMS3.Register" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Page</title>
</head>
<body>
    <h1>Registration Page</h1>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lbl1" runat="server" Text="Create Username:"></asp:Label>
            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox><br /><br />

            <asp:Label ID="Label2" runat="server" Text="Create Password:"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox><br /><br />

            <asp:Label ID="Label3" runat="server" Text="Name:"></asp:Label>
            <asp:TextBox ID="txtName" runat="server" TextMode="SingleLine"></asp:TextBox><br /><br />

            <asp:Label ID="Label4" runat="server" Text="Mobile:"></asp:Label>
            <asp:TextBox ID="txtPhone" runat="server" TextMode="SingleLine"></asp:TextBox><br /><br />

            <asp:Label ID="Label5" runat="server" Text="Gender:"></asp:Label>
            <asp:RadioButton ID="rbMale" runat="server" Text="Male" GroupName="Gender"></asp:RadioButton>
            <asp:RadioButton ID="rbFemale" runat="server" Text="Female" GroupName="Gender"></asp:RadioButton>
            <asp:RadioButton ID="rbOthers" runat="server" Text="Other" GroupName="Gender"></asp:RadioButton><br /><br />

            <asp:Label ID="Label6" runat="server" Text="Course:"></asp:Label>
            <asp:DropDownList ID="ddlCourse" runat="server">
                <asp:ListItem Text="Select Course" Value="select" Selected="True"></asp:ListItem>
                <asp:ListItem Text="MCA" Value="MCA"></asp:ListItem>
                <asp:ListItem Text="MBA" Value="MBA"></asp:ListItem>
                <asp:ListItem Text="MSc" Value="MSc"></asp:ListItem>
                <asp:ListItem Text="M.com" Value="M.com"></asp:ListItem>
            </asp:DropDownList><br /><br />

            <asp:Label ID="Label7" runat="server" Text="Address:"></asp:Label>
            <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox><br /><br />

            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click" />&nbsp;
            <asp:Label ID="lblMsg" runat="server"></asp:Label><br /><br />

            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="BtnLogin_Click" />
        </div>
    </form>
</body>
</html>
