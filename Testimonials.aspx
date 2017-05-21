<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Testimonials.aspx.vb" Inherits="Testimonials" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title><link rel="stylesheet" href="index.css" type="text/css" charset="utf-8" />
</head>
<body>
   <div id="wrapper">
    
    <div id="header">
      <div id="logo">
        <h1>Event Organiserzz</h1>
        <p>Your Event-Our Creativity</p>
      </div>
      
      <div id="nav">
        <ul>
          <li><a href="index.aspx">Homepage</a> | </li>
          <li><a href="About us.aspx">About us</a> | </li>
          <li><a href="Image Gallery.aspx">Image Gallery</a> | </li>
          <li><a href="">Event Planner</a> | </li>
          <li><a href="Case Studies.aspx">Case Studies</a> | </li>
          <li><a href="Contact us.aspx">Contact us</a></li>
        </ul>
      </div>
    </div>
    <div id="body">
      <div id="categories">
        <h2>
            Types Of Events</h2>
        <form id="form1" runat="server">
    <div>
        &nbsp;<asp:Menu ID="Menu1" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="Small" ForeColor="#7C6F57" StaticSubMenuIndent="10px" Width="192px">
            <Items>
                <asp:MenuItem NavigateUrl="~/Corporate Events.html" Text="Corporate Events" Value="Corporate Events">
                    <asp:MenuItem Text="Seminars" Value="Seminars" NavigateUrl="~/Seminar.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Conferences" Value="Conferences" NavigateUrl="~/Conference.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Reward Parties" Value="Reward Parties" NavigateUrl="~/Reward Parties.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Theme Parties" Value="Theme Parties" NavigateUrl="~/Theme Parties.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Product Launches" Value="Product Launches" NavigateUrl="~/Product Launches.aspx"></asp:MenuItem>
                </asp:MenuItem>
            </Items>
            <StaticSelectedStyle BackColor="#5D7B9D" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
            <DynamicMenuStyle BackColor="#F7F6F3" />
            <DynamicSelectedStyle BackColor="#5D7B9D" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
        </asp:Menu>
          <asp:Menu ID="Menu2" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="Small" ForeColor="#7C6F57" StaticSubMenuIndent="10px" Width="192px">
              <DynamicItemTemplate>
                  <%# Eval("Text") %>
              </DynamicItemTemplate>
              <Items>
                  <asp:MenuItem Text="Personal Events" Value="Personal Events">
                      <asp:MenuItem Text="Weddings" Value="Weddings" NavigateUrl="~/Weddings.aspx"></asp:MenuItem>
                      <asp:MenuItem Text="Birthdays" Value="Birthdays" NavigateUrl="~/Birthday.aspx"></asp:MenuItem>
                      <asp:MenuItem Text="Anniversarys" Value="Anniversarys" NavigateUrl="~/Anniversarys.aspx"></asp:MenuItem>
                      <asp:MenuItem Text="Theme Parties" Value="Theme Parties" NavigateUrl="~/Theme Parties.aspx"></asp:MenuItem>
                      <asp:MenuItem Text="Kitty Parties" Value="Kitty Parties" NavigateUrl="~/Kitty Parties.aspx"></asp:MenuItem>
                  </asp:MenuItem>
              </Items>
              <StaticSelectedStyle BackColor="#5D7B9D" />
              <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
              <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
              <DynamicMenuStyle BackColor="#F7F6F3" />
              <DynamicSelectedStyle BackColor="#5D7B9D" />
              <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
              <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
          </asp:Menu>
          <asp:Menu ID="Menu3" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="Small" ForeColor="#7C6F57" StaticSubMenuIndent="10px" Width="192px">
              <DynamicItemTemplate>
                  <%# Eval("Text") %>
              </DynamicItemTemplate>
              <Items>
                  <asp:MenuItem Text="Cultural Events" Value="Cultural Events" NavigateUrl="~/Cultural Events.aspx">
                      <asp:MenuItem Text="Folk Evenings" Value="Folk Evenings" NavigateUrl="~/Folk Evenings.aspx"></asp:MenuItem>
                      <asp:MenuItem Text="Musical Events" Value="Musical Events" NavigateUrl="~/Musical Shows.aspx"></asp:MenuItem>
                      <asp:MenuItem Text="Theatre" Value="Theatre" NavigateUrl="~/Theatre.aspx"></asp:MenuItem>
                      <asp:MenuItem Text="Awareness Shows" Value="Awareness Shows" NavigateUrl="~/Awareness Shows.aspx"></asp:MenuItem>
                  </asp:MenuItem>
              </Items>
              <StaticSelectedStyle BackColor="#5D7B9D" />
              <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
              <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
              <DynamicMenuStyle BackColor="#F7F6F3" />
              <DynamicSelectedStyle BackColor="#5D7B9D" />
              <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
              <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
          </asp:Menu>
          </div>
    
      </div>
      <div id="seasonal" style="font-size: 12px; font-family: verdana, arial, sans-serif">
        <div class="inner">
            <h2>
                Testimonials/Feedbacks</h2>
            <p>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
                    AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="AccessDataSource1">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True"
                            SortExpression="ID" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="Comments" HeaderText="Comments" SortExpression="Comments" />
                    </Columns>
                </asp:GridView>
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/users.mdb"
                    SelectCommand="SELECT * FROM [feedback]"></asp:AccessDataSource>
            </p>
          

           <h3>
               &nbsp;</h3>
           <p>
               &nbsp;</div>
      </div>
      <div id="collection">
        <div class="inner">
          <div id="minigal">
            <div><img src="eventorg/images/pic_4.jpg" width="57" height="53" alt="Pic" /></div>
            <div><img src="eventorg/images/pic_5.jpg" width="57" height="53" alt="Pic" /></div>
            <div><img src="eventorg/images/pic_6.jpg" width="57" height="53" alt="Pic" /></div>
            <div><img src="eventorg/images/pic_7.jpg" width="57" height="53" alt="Pic" /></div>
            <div><img src="eventorg/images/pic_8.jpg" width="57" height="53" alt="Pic" /></div>
            <div><img src="eventorg/images/pic_9.jpg" width="57" height="53" alt="Pic" /></div>
          </div>
          <h2>Special Offer's</h2>
          <ul>
            <li>Avail Upto 50% Discount on Corporate Events.</li>
            <li>Upto 25% discount on Weddings(Off-Season)</li>
          </ul>
          <p><a href="Contact us.aspx">Contact us for more offers</a></p>
        </div>
      </div>
      <div class="clear"> </div>
      <div id="seas">
        <div id="seas-one">
          <a href="Corporate Events.aspx"><p>Corporate</p>
          <p class="date">Events</p></a>
        </div>
        <div id="seas-two">
          <a href="Personal Events.aspx"><p>Wedding's</p>
          <p class="date"></p></a>
        </div>
        <div id="seas-three">
          <a href="Birthday.aspx"><p>Birthday's</p>
          <p class="date"></p></a>
        </div>
        <div class="clear"> </div>
      </div>
    </div>
    <div id="copyright">
      <p>Copyright &copy; 2011. AABV(JSS/BCA/MINOR PROJECT) all rights reserved</p>
    </div>
  </div></form>
</body>
</html>
