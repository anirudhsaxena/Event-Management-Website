<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Index.aspx.vb" Inherits="Default4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title><style type="text/css">
	/*************
	START OF DEMO CSS 
	**************/
	#ads{
		width:730px;
		margin-top:10px;	
	}
	body{
		font-family: Trebuchet MS, Lucida Sans Unicode, Arial, sans-serif;	/* Font to use */
		width:100%;
		height:100%;
		margin:0px;
		padding:0px;
		background-color: #E2EBED;
		text-align:center;
	}
	img{
		border:0px;
	}
	p{	
		margin-top:0px;
	}
	.clear{
		clear:both;
	}
	#mainContainer{
		width:760px;
		margin:0 auto;
		background-color:#FFF;
		border-left:1px solid #000;
		border-right:1px solid #000;
		border-bottom:1px solid #000;
		padding:10px;
		background-color:#FFF;	
		text-align:left;
			
	}
	
	/* 
	END OF DEMO CSS
	*************************************/
	
	
	/* CSS for my second scrolling box */
	#scrollingContainer2{
		width:100px;	/* Width of second box */
		height:150px;	/* Height of second box */
		
		border:3px solid #000;
		background-color: #DDD;

		padding:2px;	/* A little bit of space between border of box and text inside */
		float:right;	/* I want the text to wrap around the box */
		margin-left:10px;	/* Space at the left of the box */
		color:red;	/* red text color */
		
		
	}
	#scrollingContent2{
		font-size:0.9em;
	}	
	</style>
	
	<script type="text/javascript">
	/************************************************************************************************************
	
	
	************************************************************************************************************/
		
	var slideTimeBetweenSteps = 40;	// General speed variable (Lower = slower)
	
	
	var scrollingContainer = false;
	var scrollingContent = false;
	var containerHeight;
	var contentHeight;	
	
	var contentObjects = new Array();
	var originalslideSpeed = false;
	function slideContent(containerId)
	{
		var topPos = contentObjects[containerId]['objRef'].style.top.replace(/[^\-0-9]/g,'');
		topPos = topPos - contentObjects[containerId]['slideSpeed'];
		if(topPos/1 + contentObjects[containerId]['contentHeight']/1<0)topPos = contentObjects[containerId]['containerHeight'];
		contentObjects[containerId]['objRef'].style.top = topPos + 'px';
		setTimeout('slideContent("' + containerId + '")',slideTimeBetweenSteps);
		
	}
	
	function stopSliding()
	{
		var containerId = this.id;
		contentObjects[containerId]['slideSpeed'] = 0;	
	}
	
	function restartSliding()
	{
		var containerId = this.id;
		contentObjects[containerId]['slideSpeed'] = contentObjects[containerId]['originalSpeed'];
		
	}
	function initSlidingContent(containerId,slideSpeed)
	{
		scrollingContainer = document.getElementById(containerId);
		scrollingContent = scrollingContainer.getElementsByTagName('DIV')[0];
		
		scrollingContainer.style.position = 'relative';
		scrollingContainer.style.overflow = 'hidden';
		scrollingContent.style.position = 'relative';
		
		scrollingContainer.onmouseover = stopSliding;
		scrollingContainer.onmouseout = restartSliding;
		
		originalslideSpeed = slideSpeed;
		
		scrollingContent.style.top = '0px';
		
		contentObjects[containerId] = new Array();
		contentObjects[containerId]['objRef'] = scrollingContent;
		contentObjects[containerId]['contentHeight'] = scrollingContent.offsetHeight;
		contentObjects[containerId]['containerHeight'] = scrollingContainer.clientHeight;
		contentObjects[containerId]['slideSpeed'] = slideSpeed;
		contentObjects[containerId]['originalSpeed'] = slideSpeed;
		
		slideContent(containerId);
		
	}
	

	
	</script>
<link rel="stylesheet" href="index.css" type="text/css"/><bgsound SRC="Audio.mp3" loop="1" balance="0" volume="5">
</head>
<body><FORM>
<INPUT TYPE="button" VALUE="Make This Site Your Home Page" onClick="this.style.behavior='url(#default#homepage)'; this.setHomePage('http://index.aspx');">
</FORM>
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
          <li><a href="userform.aspx">Event Planner</a> | </li>
          <li><a href="Case Studies.aspx">Case Studies</a> | </li>
          <li><a href="Contact us.aspx">Contact us</a></li>
        </ul>
      </div>
    </div>
    <div id="cse" style="width: 100%;">Loading</div>
<script src="http://www.google.com/jsapi" type="text/javascript"></script>
<script type="text/javascript"> 
  google.load('search', '1', {language : 'en'});
  google.setOnLoadCallback(function() {
    var customSearchOptions = {};  var customSearchControl = new google.search.CustomSearchControl(
      '011292567887283880755:cw9cffl-0ri', customSearchOptions);
    customSearchControl.setResultSetSize(google.search.Search.FILTERED_CSE_RESULTSET);
    customSearchControl.draw('cse');
  }, true);
</script>
<link rel="stylesheet" href="http://www.google.com/cse/style/look/default.css" type="text/css" />
      <div id="body">
      <div id="categories" style="height: 264px">
        <h2>Types of Events</h2>
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
    </form>
    </div>
    </div><SCRIPT language=Javascript>
</SCRIPT>
    <div id="seasonal">
        <div class="inner">
            &nbsp;<h2>Event Organiserzz</h2>
          <h3>Welcome</h3>
	<!-- Start code for second scrolling box -->
		<div id="scrollingContainer2">
		
		<div id="scrollingContent2">
		<p>Our Clients !!! </p>
		<p><img src="eventorg/images/logos/1.gif" width="100" height="53" alt="Pic" /></p>		
		<p><img src="eventorg/images/logos/2.jpg" width="100" height="53" alt="Pic" /></p>
		<p><img src="eventorg/images/logos/3.jpg" width="100" height="53" alt="Pic" /></p>
		<p><img src="eventorg/images/logos/4.jpg" width="100" height="53" alt="Pic" /></p>
		<p><img src="eventorg/images/logos/5.png" width="100" height="53" alt="Pic" /></p>
		<p><img src="eventorg/images/logos/6.jpg" width="100" height="53" alt="Pic" /></p>
		<p><img src="eventorg/images/logos/7.jpg" width="100" height="53" alt="Pic" /></p>
		<p><img src="eventorg/images/logos/8.jpg" width="100" height="53" alt="Pic" /></p>
		
		</div>
	</div>
	<script type="text/javascript">
	initSlidingContent('scrollingContainer2',2);
	</script>
	<!-- End code for second scrolling box -->	

           <p>Event Organiserzz is a Complete Event Management Company that fits the need of every individual client and "provides direction" to any event...</p>
           <p>With our experience exceeding 20 years in the events industry, our management team has handled events of every size with clientele ranging from giant corporations, celebrities or household names. Each event is planned with attention to every detail; while providing absolute privacy to you & your guests...
</p>
        <p>Whether it is a first class clambake on the beach, a gala dinner for 2000+ VIP guests, a wonderland wedding, full service "personal concierge", destination management, event design or just fine catering by a private chef  for you & your loved ones. <p>Representing many of the newest, hottest and most contemporary venues in Delhi and surroundings,Event Organiserzz can also offer consulting and efficient venue finding service anywhere. Our business philosophy is based on confidence, integrity, flexibility and attention to personal service. 

Nothing is too big or too small for us to be involved in, and we apply the same professional rules to all our events regardless of size. 

 Event Organiserzz can tailor the individual needs of the most discerning client...</p>          
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
            &nbsp; &nbsp;
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
