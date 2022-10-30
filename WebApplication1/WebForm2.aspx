<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="true" OnCheckedChanged="CheckBox1_CheckedChanged" Text="click Here"/><br />
        <asp:Label ID="Label1" runat="server" Text="Click"></asp:Label>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Vertical" AutoPostBack="True">
            <asp:ListItem>PHP</asp:ListItem>
            <asp:ListItem>JAVA</asp:ListItem>
            <asp:ListItem>CPP</asp:ListItem>

        </asp:CheckBoxList>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        <div>
        </div>
    </form>
</body>
</html>
