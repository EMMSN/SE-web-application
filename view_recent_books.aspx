﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view_recent_books.aspx.cs" Inherits="view_recent_books" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Recent Books</title>

    <style type="text/css">
         .auto-style2 {
            margin-left: -8px;
            margin-top: -8px;
        }
         #DropDownList1{
            position:absolute;
            margin-top: 95px;
            font-size: 16px;
             font-family: tahoma;
            margin-left: 614px;
             background: white;
             color: black;
             border: 1px solid white;
             border-radius: 8px;
             width: 116px;
             height: 30px;
        }
          #GridView1{
            position:absolute;
            margin-left:405px;
            margin-top:180px;
        }
        .auto-style3 {
            left: 10px;
            top: 15px;
            width: 306px;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
            <asp:ListItem>2015</asp:ListItem>
            <asp:ListItem>2016</asp:ListItem>
            <asp:ListItem>2017</asp:ListItem>
        </asp:DropDownList>
        <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" CssClass="auto-style3" AutoGenerateColumns="False" DataKeyNames="Book_id" DataSourceID="VRB">
            <Columns>
                <asp:BoundField DataField="Book_id" HeaderText="Book_id" InsertVisible="False" ReadOnly="True" SortExpression="Book_id" />
                <asp:BoundField DataField="Book_name" HeaderText="Book_name" SortExpression="Book_name" />
                <asp:BoundField DataField="Author_name" HeaderText="Author_name" SortExpression="Author_name" />
                <asp:BoundField DataField="Year_published" HeaderText="Year_published" SortExpression="Year_published" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="VRB" runat="server" ConnectionString="<%$ ConnectionStrings:libraryConnectionString %>" SelectCommand="SELECT * FROM [Book1_table] where Year_published = @YB">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" DefaultValue="-1" Name="YB" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    <asp:Image ID="Image1" runat="server" Height="660px" ImageUrl="~/2.jpg" Width="1365px" CssClass="auto-style2" />
    </div>
    </form>
</body>
</html>
