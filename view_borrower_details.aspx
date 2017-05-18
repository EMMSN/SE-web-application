<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view_borrower_details.aspx.cs" Inherits="view_borrower_details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <%--<title>view borroer details</title>--%>
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
    color: white;
    background-color:#9f4736;
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
            left: -61px;
            top: 15px;
            width: 740px;
            position: absolute;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style3" placeholder="    Borrower Id"
            style="position: absolute;
             width: 300px;
             height: 30px;
              border-radius: 15px;
               border: 1px solid white;
              margin-left: 470px;
               margin-top: 59px;
              font-size: 18px;
            "></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Search" class="search" />
        <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" CssClass="auto-style4" AutoGenerateColumns="False" DataKeyNames="Borrower_id" DataSourceID="VBD"
            style =" margin-left:325px;
                     margin-top:136px;">
            <Columns>
                <asp:BoundField DataField="Borrower_id" HeaderText="Borrower_id" InsertVisible="False" ReadOnly="True" SortExpression="Borrower_id" />
                <asp:BoundField DataField="First_name" HeaderText="First_name" SortExpression="First_name" />
                <asp:BoundField DataField="Middle_name" HeaderText="Middle_name" SortExpression="Middle_name" />
                <asp:BoundField DataField="Last_name" HeaderText="Last_name" SortExpression="Last_name" />
                <asp:BoundField DataField="Phone_num" HeaderText="Phone_num" SortExpression="Phone_num" />
                <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
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
        <asp:SqlDataSource ID="VBD" runat="server" ConnectionString="<%$ ConnectionStrings:libraryConnectionString %>" SelectCommand="SELECT * FROM [Borrower_table] where Borrower_id = @D">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" DefaultValue="-1" Name="D" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
     <asp:Image ID="Image1" runat="server" Height="660px" ImageUrl="2.jpg" Width="1365px" CssClass="auto-style2" />

    </div>
    </form>
</body>
</html>
