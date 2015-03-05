<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Messages.aspx.cs" Inherits="WebApplication1._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: left">
    
        <asp:Label ID="Label1" runat="server" Font-Italic="True" Font-Overline="True" 
            Font-Size="XX-Large" Font-Underline="True" 
            Text="Here you can se all your Messages "></asp:Label>
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" BackColor="White" 
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="10" 
            DataKeyField="ID" DataSourceID="SqlDataSource1" ForeColor="Black" 
            GridLines="Vertical" CellSpacing="10">
            <AlternatingItemStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <HeaderTemplate>
                Here you can se all your Messages with&nbsp; the latest date
            </HeaderTemplate>
            <ItemTemplate>
                <br />
                Message:
                <asp:Label ID="MessageLabel" runat="server" Text='<%# Eval("Message") %>' />
                <br />
                WrittingDate:
                <asp:Label ID="WrittingDateLabel" runat="server" 
                    Text='<%# Eval("WrittingDate") %>' />
                <br />
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT DISTINCT * FROM [Message] ORDER BY [WrittingDate] DESC">
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
