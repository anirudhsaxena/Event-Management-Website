<%@ Page Language="VB" AutoEventWireup="false" CodeFile="About us.aspx.vb" Inherits="About_us" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title><link rel="stylesheet" href="index.css" type="text/css" charset="utf-8" />
</head>
<body>  
<div id="wrapper">
    
    <div id="header">
      <div id="logo" style="left: 8px; width: 424px; top: 24px; height: 160px">
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
    </div><!-- this script got from www.javascriptfreecode.com coded by: Krishna Eydat-->
<SCRIPT language=JavaScript>
var NS4 = (document.layers);    
var IE4 = (document.all);
var win = window;    
var n   = 0;
function findInPage(str) {
  var txt, i, found;
  if (str == "")
    return false;
  if (NS4) {
    if (!win.find(str))
      while(win.find(str, false, true))
        n++;
    else
      n++;
    if (n == 0)
      alert("Not found.");
  }
  if (IE4) {
    txt = win.document.body.createTextRange();
    for (i = 0; i <= n && (found = txt.findText(str)) != false; i++) {
      txt.moveStart("character", 1);
      txt.moveEnd("textedit");
    }
    if (found) {
      txt.moveStart("character", -1);
      txt.findText(str);
      txt.select();
      txt.scrollIntoView();
      n++;
    }
    else {
      if (n > 0) {
        n = 0;
        findInPage(str);
      }
      else
        alert("Sorry, we couldn't find.Try again");
   }
  }
  return false;
}
</SCRIPT>

<FORM name=search onsubmit="return findInPage(this.string.value);">
<P align=center><FONT size=3>
<INPUT 
style="BORDER-RIGHT: #666666 1px solid; BORDER-TOP: #666666 1px solid; FONT-SIZE: 8pt; BORDER-LEFT: #666666 1px solid; BORDER-BOTTOM: #666666 1px solid" 
onchange="n = 0;" size=16 name=string></FONT><BR><INPUT style="BORDER-RIGHT: #ffffff 1px solid; BORDER-TOP: #ffffff 1px solid; FONT-SIZE: 8pt; BORDER-LEFT: #ffffff 1px solid; BORDER-BOTTOM: #ffffff 1px solid; FONT-FAMILY: Tahoma; BACKGROUND-COLOR: #aaaaaa" type=submit value=Search in page ><center><font size=2pt;><font family=Times New Roman;><b>

<BR> 
</P></FORM></DIV><BR><!-- /Search-->

    <div id="body">
      <div id="categories" style="height: 264px">
        <h2>Types of Events</h2>
    <form id="form1" runat="server">
    <div>
        &nbsp;<asp:Menu ID="Menu1" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="Small" ForeColor="#7C6F57" StaticSubMenuIndent="10px" Width="192px">
            <Items>
                <asp:MenuItem NavigateUrl="~/Corporate Events.aspx" Text="Corporate Events" Value="Corporate Events">
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
                  <asp:MenuItem Text="Personal Events" Value="Personal Events" NavigateUrl="~/Personal Events.aspx">
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
    </form>
    </div>
    </div>
    <div id="seasonal">
        <div class="inner">
            &nbsp;<h2>Event Organiserzz</h2>
          <h3>About Us</h3>
           <p>Event Organiserzz is a Complete Event Management Company that fits the need of every individual client and "provides direction" to any event...</p>
           <p>With our experience exceeding 20 years in the events industry, our management team has handled events of every size with clientele ranging from giant corporations, celebrities or household names. Each event is planned with attention to every detail; while providing absolute privacy to you & your guests...
</p>
        <p>Representing many of the newest, hottest and most contemporary venues in Delhi and surroundings,Event Organiserzz can also offer consulting and efficient venue finding service anywhere. Our business philosophy is based on confidence, integrity, flexibility and attention to personal service. 

Nothing is too big or too small for us to be involved in,Event Organiserzz can tailor the individual needs of the most discerning client...</p>          
        </div>
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
            &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
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
</body>
</html>
