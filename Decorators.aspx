<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Decorators.aspx.vb" Inherits="Decorators" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title><link rel="stylesheet" href="database.css" type="text/css" charset="utf-8" />
</head>
<body>
<h1>Event Organiserzz</h1>
        <p>Your Event-Our Creativity</p>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False"
            BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2"
            DataKeyNames="ID" DataSourceID="AccessDataSource1" ForeColor="Black" GridLines="None">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True"
                    SortExpression="ID" />
                <asp:BoundField DataField="Banquet_ID" HeaderText="Banquet_ID" SortExpression="Banquet_ID" />
                <asp:BoundField DataField="Name of Banquet" HeaderText="Name of Banquet" SortExpression="Name of Banquet" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Contact_no" HeaderText="Contact_no" SortExpression="Contact_no" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/eventorg/EMS_DATABASE.mdb"
            SelectCommand="SELECT * FROM [Table_B]"></asp:AccessDataSource>
    
    </div>
    </form>
</body>
</html>
