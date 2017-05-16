<%@ Page Language="C#" AutoEventWireup="true" CodeFile="search_by_name.aspx.cs" Inherits="search_by_name" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Search By Name</title>
    <style type="text/css">
          .auto-style2 {
            margin-left: -8px;
            margin-top: -8px;
        }
         .search{
        position: absolute;
    margin-top: 68px;
    font-size: 16px;
    font-family: tahoma;
    margin-left: 788px;
    background: none;
    color: white;
    border: 1px solid white;
    border-radius: 8px;
    width: 70px;
    height: 30px;

}
         }
        #GridView1{
            position:absolute;
            margin-left:460px;
            margin-top:200px;
        }
        .auto-style3 {
            left: 10px;
            top: 15px;
            width: 393px;
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
        <asp:TextBox ID="txtname" runat="server" CssClass="auto-style3" placeholder="    Book Name"
            style="position: absolute;
             width: 300px;
             height: 30px;
              border-radius: 15px;
               border: 1px solid white;
              margin-left: 470px;
               margin-top: 59px;
              font-size: 18px;
            "></asp:TextBox>
        <asp:Button ID="buttonsearch2" runat="server" Text="Search" class="search" />
        <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" 
            BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            CellSpacing="2" CssClass="auto-style4" AutoGenerateColumns="False" 
            DataSourceID="dsbook2">
            <Columns>
                <asp:BoundField DataField="Book_id" HeaderText="Book_id" 
                    SortExpression="Book_id" />
                <asp:BoundField DataField="Book_name" HeaderText="Book_name" 
                    SortExpression="Book_name" />
                <asp:BoundField DataField="Author_name" HeaderText="Author_name" 
                    SortExpression="Author_name" />
                <asp:BoundField DataField="Year_published" HeaderText="Year_published" 
                    SortExpression="Year_published" />
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
        <asp:SqlDataSource ID="dsbook2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="select * from Book_table where Book_name=@p">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtname" DefaultValue="-1" Name="p" 
                    PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
     <asp:Image ID="Image1" runat="server" Height="660px" ImageUrl="~/2.jpg" Width="1365px" CssClass="auto-style2" />

    </div>
    </form>
</body>
</html>
