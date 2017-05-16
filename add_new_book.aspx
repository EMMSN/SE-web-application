<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add_new_book.aspx.cs" Inherits="add_new_book" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add New Book</title>
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
    margin-top: 80px;
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
    margin-top: 150px;
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
    margin-top: 220px;
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
    margin-top: 290px;
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
    margin-top: 360px;
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
    margin-top: 85px;
    width:100px;
        }
        #RequiredFieldValidator2{
            position: absolute;
    margin-left: 800px;
    margin-top: 150px;
    width:100px;
        }
        #RequiredFieldValidator3{
            position: absolute;
    margin-left: 800px;
    margin-top: 230px;
    width:100px;
        }
        #RequiredFieldValidator4{
            position: absolute;
    margin-left: 800px;
    margin-top: 300px;
    width:100px;
        }
        #RequiredFieldValidator5{
            position: absolute;
    margin-left: 800px;
    margin-top: 365px;
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
            margin-top:430px;
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
        <asp:TextBox ID="TextBox1" runat="server" placeholder="  Book Id"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" placeholder="  Title"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" placeholder="  Author Name"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" placeholder="  Year Published"></asp:TextBox>
        <asp:TextBox ID="TextBox5" runat="server" placeholder="  Status"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ForeColor="#FF3300" ControlToValidate="TextBox1" CssClass="auto-style2">Required</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" CssClass="auto-style3" ForeColor="#FF3300" ControlToValidate="TextBox2">Required</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ForeColor="#FF3300" ControlToValidate="TextBox3">Required</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required" ForeColor="#FF3300" ControlToValidate="TextBox4">Required</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Required" ForeColor="#FF3300" ControlToValidate="TextBox5">Required</asp:RequiredFieldValidator>
        <asp:Button ID="Button1" runat="server" Text="ADD" />
        <asp:Image ID="Image1" runat="server" Height="660px" ImageUrl="~/2.jpg" Width="1365px" CssClass="auto-style2" />
    
    </div>
    </form>
</body>
</html>
