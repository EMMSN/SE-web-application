<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add_new_borrower.aspx.cs" Inherits="add_new_borrower" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add New Borrower</title>
    <style>
        .auto-style2 {
            margin-left: -8px;
            margin-top: -8px;
        }
        TextBox{
            position:absolute;
            font-family:'Sans Serif';
            font-size:17px;
        }
        #TextBox1{
            position: absolute;
    margin-left: 500px;
    margin-top: 30px;
    width: 285px;
    height: 40px;
    border-radius: 10px;
    border: 1px solid white;
    font-size: 17px;
    font-family: sans-serif;
        }
        #TextBox2{
            position: absolute;
    margin-left: 500px;
    margin-top: 100px;
    width: 285px;
    height: 40px;
    border-radius: 10px;
    border: 1px solid white;
    font-size: 17px;
    font-family: sans-serif;
        }
        #TextBox3{
            position: absolute;
    margin-left: 500px;
    margin-top: 170px;
    width: 285px;
    height: 40px;
    border-radius: 10px;
    border: 1px solid white;
    font-size: 17px;
    font-family: sans-serif;
        }
        #TextBox4{
            position: absolute;
    margin-left: 500px;
    margin-top: 240px;
    width: 285px;
    height: 40px;
    border-radius: 10px;
    border: 1px solid white;
    font-size: 17px;
    font-family: sans-serif;
        }
        #TextBox5{
     position: absolute;
    margin-left: 500px;
    margin-top: 310px;
    width: 285px;
    height: 40px;
    border-radius: 10px;
    border: 1px solid white;
    font-size: 17px;
    font-family: sans-serif;
        }
        #TextBox6{
     position: absolute;
    margin-left: 500px;
    margin-top: 380px;
    width: 285px;
    height: 40px;
    border-radius: 10px;
    border: 1px solid white;
    font-size: 17px;
    font-family: sans-serif;
        }
        #TextBox7{
     position: absolute;
    margin-left: 500px;
    margin-top: 450px;
    width: 285px;
    height: 40px;
    border-radius: 10px;
    border: 1px solid white;
    font-size: 17px;
    font-family: sans-serif;
        }
        #TextBox8{
     position: absolute;
    margin-left: 500px;
    margin-top: 520px;
    width: 285px;
    height: 40px;
    border-radius: 10px;
    border: 1px solid white;
    font-size: 17px;
    font-family: sans-serif;
        }
        #RequiredFieldValidator1{
            position: absolute;
    margin-left: 800px;
    margin-top: 35px;
    width:100px;
        }
        #RequiredFieldValidator2{
            position: absolute;
    margin-left: 800px;
    margin-top: 100px;
    width:100px;
        }
        #RequiredFieldValidator3{
            position: absolute;
    margin-left: 800px;
    margin-top: 180px;
    width:100px;
        }
        #RequiredFieldValidator4{
            position: absolute;
    margin-left: 800px;
    margin-top: 250px;
    width:100px;
        }
        #RequiredFieldValidator5{
            position: absolute;
    margin-left: 800px;
    margin-top: 315px;
    width:100px;
        }
         #RequiredFieldValidator6{
            position: absolute;
    margin-left: 800px;
    margin-top: 385px;
    width:100px;
        }
          #RequiredFieldValidator7{
            position: absolute;
    margin-left: 800px;
    margin-top: 460px;
    width:100px;
        }
           #RequiredFieldValidator8{
            position: absolute;
    margin-left: 800px;
    margin-top: 530px;
    width:100px;
        }
        .auto-style3 {
            left: 10px;
            top: 20px;
            bottom: 236px;
        }
        #Button1{
            position:absolute;
            margin-left:600px;
            margin-top:600px;
            font-family:sans-serif;
            font-size:17px;
            border:1px solid white;
            width:80px;
            height:40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server" placeholder="  Borrower Id"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" placeholder="  First Name"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" placeholder="  Middle Name"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" placeholder="  Last Name"></asp:TextBox>
        <asp:TextBox ID="TextBox5" runat="server" placeholder="  Phone Number" TextMode="Phone"></asp:TextBox>
        <asp:TextBox ID="TextBox6" runat="server" placeholder="  Department"></asp:TextBox>
        <asp:TextBox ID="TextBox7" runat="server" placeholder="  Email" TextMode="Email"></asp:TextBox>
        <asp:TextBox ID="TextBox8" runat="server" placeholder="  Address"></asp:TextBox>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ForeColor="#FF3300" ControlToValidate="TextBox1" CssClass="auto-style2">Required</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" CssClass="auto-style3" ForeColor="#FF3300" ControlToValidate="TextBox2">Required</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ForeColor="#FF3300" ControlToValidate="TextBox3">Required</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required" ForeColor="#FF3300" ControlToValidate="TextBox4">Required</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Required" ForeColor="#FF3300" ControlToValidate="TextBox5">Required</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Required" ForeColor="#FF3300" ControlToValidate="TextBox6">Required</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Required" ForeColor="#FF3300" ControlToValidate="TextBox7">Required</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Required" ForeColor="#FF3300" ControlToValidate="TextBox8">Required</asp:RequiredFieldValidator>
        <asp:Button ID="Button1" runat="server" Text="ADD" />
        <asp:Image ID="Image1" runat="server" Height="660px" ImageUrl="~/2.jpg" Width="1365px" CssClass="auto-style2" />
    
    </div>
    </form>
</body>
</html>


