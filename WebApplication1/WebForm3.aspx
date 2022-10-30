<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebApplication1.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:lightblue;">
    <div >
   <form id="form1" runat="server" border="5px" style="border:double;border-block-color:firebrick;">
        <div align="center">
            <h1 align="center" style="color:firebrick;">Registration Form</h1><br /><hr />
            <asp:Label ID="Label1" runat="server" Text="Name" ></asp:Label>&nbsp&nbsp&nbsp &nbsp &nbsp &nbsp
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="enter name" ControlToValidate="TextBox1" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <br /><br />
            <asp:Label ID="Label2" runat="server" Text="Email" ></asp:Label>&nbsp&nbsp&nbsp &nbsp &nbsp &nbsp
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="enter emailid" ControlToValidate="TextBox2" ForeColor="#990000"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="enter correct email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox2" ForeColor="#990000"></asp:RegularExpressionValidator>
            <br /><br />
            <asp:Label ID="Label3" runat="server" Text="Phone" ></asp:Label>&nbsp&nbsp&nbsp &nbsp &nbsp &nbsp
            <asp:TextBox ID="TextBox3" type="number" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="enter phno" ControlToValidate="TextBox3" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="enter correct ph no" ValidationExpression="^[7-9][0-9]{9}$" ControlToValidate="TextBox3" ForeColor="Red"></asp:RegularExpressionValidator>
            <br /><br />
            <asp:Label ID="Label4" runat="server" Text="Gender" ></asp:Label>&nbsp&nbsp&nbsp &nbsp &nbsp &nbsp
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem>male</asp:ListItem>
                <asp:ListItem>female</asp:ListItem>
                <asp:ListItem>other</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="mention gender" ControlToValidate="RadioButtonList1" Enabled="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            <br /><br />
            <asp:Label ID="Label5" runat="server" Text="Course">
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" name="Course">
            <asp:ListItem>PHP</asp:ListItem>
            <asp:ListItem>JAVA</asp:ListItem>
            <asp:ListItem>CPP</asp:ListItem>
        </asp:CheckBoxList></asp:Label>
            <br /><br />
            <asp:Label ID="Label6" runat="server" Text="DOB"></asp:Label>&nbsp&nbsp&nbsp &nbsp &nbsp &nbsp
           <asp:TextBox ID="TextBox4" runat="server" ></asp:TextBox>
            <asp:ImageButton ID="ImageButton1" runat="server"  ImageUrl="~/images/calendder.png"  Height="24px" Width="25px" OnClick="ImageButton1_Click"/>
            <asp:Calendar ID="Calendar1" runat="server"   ForeColor="Black" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" Height="250px" NextPrevFormat="ShortMonth" Width="330px">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                <DayStyle BackColor="#CCCCCC" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                <TodayDayStyle BackColor="#999999" ForeColor="White" />
               </asp:Calendar>
           
              <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="choose dob" ControlToValidate="TextBox4" ForeColor="#CC0000"></asp:RequiredFieldValidator>
<br /><br />

            <asp:Label ID="Label7" runat="server" Text="State"></asp:Label>&nbsp&nbsp&nbsp &nbsp &nbsp &nbsp
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>KERALA</asp:ListItem>
            <asp:ListItem>KARNATAKA</asp:ListItem>
            <asp:ListItem>TAMILNADU</asp:ListItem>
           </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="select stste" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>
            <br /><br />
            <asp:Label ID="Label8" runat="server" Text="Photo"></asp:Label>&nbsp&nbsp&nbsp &nbsp &nbsp &nbsp
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="choose a photo " ControlToValidate="FileUpload1" ForeColor="Blue"></asp:RequiredFieldValidator>
            <br /><br />
            <asp:Label ID="Label9" runat="server" Text="Username"></asp:Label>&nbsp&nbsp&nbsp &nbsp &nbsp &nbsp
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="type username" ForeColor="Red" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
            <br /><br />
            <asp:Label ID="Label10" runat="server" Text="password"></asp:Label>&nbsp&nbsp&nbsp &nbsp &nbsp &nbsp
            <asp:TextBox ID="TextBox6" TextMode="Password" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="choose a password" ControlToValidate="TextBox6" ForeColor="#00CC00"></asp:RequiredFieldValidator>
            <br /><br />
            <asp:Button ID="Button1" runat="server" Text="SUBMIT" OnClick="Button1_Click" />


            
        </div>
    </form>
        </div>
    <div style="margin-top:-400px;">
        <h4>Details are ....</h4>
    <b>NAME   :</b><asp:Label ID="Label11" runat="server" Text=""></asp:Label><br />
    <b>EMAIL   :</b><asp:Label ID="Label12" runat="server" Text=""></asp:Label><br />
    <b>PHONE   :</b><asp:Label ID="Label13" runat="server" Text=""></asp:Label><br />
   <b>GENDER   :</b> <asp:Label ID="Label14" runat="server" Text=""></asp:Label><br />
   <b>COURSE   :</b> <asp:Label ID="Label15" runat="server" Text=""> </asp:Label><br />
   <b>DOB   :</b> <asp:Label ID="Label16" runat="server" Text=""></asp:Label><br />
   <b>STATE   :</b> <asp:Label ID="Label17" runat="server" Text=""></asp:Label><br />
   <b>PHOTO   :</b> <asp:Label ID="Label18" runat="server" Text=""></asp:Label><br />
   <b>USERNAME   :</b> <asp:Label ID="Label19" runat="server" Text=""></asp:Label><br />
   <b>PASSWORD   :</b> <asp:Label ID="Label20" runat="server" Text=""></asp:Label><br />
        </div>
</body>
</html>
