<%@ Page Language="VB" AutoEventWireup="false" CodeFile="dbview.aspx.vb" Inherits="dbview" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan"
            BorderWidth="1px" CellPadding="2" DataSourceID="AccessDataSource1" ForeColor="Black"
            GridLines="None">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="contact_no" HeaderText="contact_no" SortExpression="contact_no" />
                <asp:BoundField DataField="date_of_event" HeaderText="date_of_event" SortExpression="date_of_event" />
                <asp:BoundField DataField="Booking_Status" HeaderText="Booking_Status" SortExpression="Booking_Status" />
                <asp:BoundField DataField="budget_of_event" HeaderText="budget_of_event" SortExpression="budget_of_event" />
                <asp:BoundField DataField="event_theme" HeaderText="event_theme" SortExpression="event_theme" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/users.mdb"
            SelectCommand="SELECT [Name], [email], [contact_no], [date_of_event], [Booking_Status], [budget_of_event], [event_theme] FROM [users_tbl]">
        </asp:AccessDataSource>
    
    </div>
    </form>
</body>
</html>
