﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view_borrowed_books.aspx.cs" Inherits="view_borrowed_books" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>View Borrowed Books</title>
        <style type="text/css">
          .auto-style2 {
            margin-left: -8px;
            margin-top: -8px;
         }
        #GridView1{
            position:absolute;
            margin-left:460px;
            margin-top:200px;
        }
        
        .auto-style4 {
            left: 10px;
            top: 15px;
            width: 408px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" 
                BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                CellSpacing="2" CssClass="auto-style4" AutoGenerateColumns="False" 
                DataSourceID="dsbook6">
                <Columns>
                    <asp:BoundField DataField="Book_id" HeaderText="Book_id" 
                        SortExpression="Book_id" />
                    <asp:BoundField DataField="Book_name" HeaderText="Book_name" 
                        SortExpression="Book_name" />
                    <asp:BoundField DataField="Author_name" HeaderText="Author_name" 
                        SortExpression="Author_name" />
                    <asp:BoundField DataField="Year_published" HeaderText="Year_published" 
                        SortExpression="Year_published" />
                    <asp:BoundField DataField="status" HeaderText="status" 
                        SortExpression="status" />
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
            <asp:SqlDataSource ID="dsbook6" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="select * from Book_table where status='unavaliable'">
            </asp:SqlDataSource>
     <asp:Image ID="Image1" runat="server" Height="660px" ImageUrl="2.jpg" Width="1365px" CssClass="auto-style2" />

    </div>
    </form>
</body>
</html>
