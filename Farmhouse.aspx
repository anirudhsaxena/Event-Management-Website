<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Farmhouse.aspx.vb" Inherits="Farmhouse" %>

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
                <asp:BoundField DataField="FARMHOUSE_ID" HeaderText="FARMHOUSE_ID" SortExpression="FARMHOUSE_ID" />
                <asp:BoundField DataField="NAME_OF_FARMHOUSE" HeaderText="NAME_OF_FARMHOUSE" SortExpression="NAME_OF_FARMHOUSE" />
                <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" SortExpression="ADDRESS" />
                <asp:BoundField DataField="CONTACT_NO" HeaderText="CONTACT_NO" SortExpression="CONTACT_NO" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/eventorg/EMS_DATABASE.mdb"
            SelectCommand="SELECT * FROM [TABLE_F]"></asp:AccessDataSource>
    
    </div>
    </form>
</body>
</html>
