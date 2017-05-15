<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <title>Untitled Page</title>
</head>
<body>
<form name="form1" action="add_to_database.aspx" method="post">
<div align="center">
<table width="80%" border="0" style="height: 184px">
<tr>
<td>Name :</td>
<td><input type="text" name="name"></td>
</tr>
<tr>
<td>Email :</td>
<td> <input type="text" name="email"></td>
</tr>
<tr>
<td>Contact_no :</td>
<td> <input type="text" name="Contact_no"></td>
</tr>
<tr>
<td>
    Venue_of_Event :</td>
<td> &nbsp;<select id="ddlState" class="textfield_default_nowidth" name="ddlState" style="width: 160px">
        <option value="0">Select City</option>
        <option value="Agra">Agra</option>
        <option value="Ahmedabad">Ahmedabad</option>
        <option value="Ahmednagar">Ahmednagar</option>
        <option value="Akola">Akola</option>
        <option value="Allahabad">Allahabad</option>
        <option value="Almora">Almora</option>
        <option value="Amritsar">Amritsar</option>
        <option value="Aurangabad">Aurangabad</option>
        <option value="Bangalore/Bengaluru">Bangalore/Bengaluru</option>
        <option value="Belgaum">Belgaum</option>
        <option value="Bhopal">Bhopal</option>
        <option value="Bhubaneshwar">Bhubaneshwar</option>
        <option value="Bikaner">Bikaner</option>
        <option value="Bodh gaya">Bodh gaya</option>
        <option value="Chandigarh">Chandigarh</option>
        <option value="Chennai/Madras">Chennai/Madras</option>
        <option value="Cochin/Kochi">Cochin/Kochi</option>
        <option value="Coimbatore">Coimbatore</option>
        <option value="Dalhousie">Dalhousie</option>
        <option value="Ernakulum">Ernakulum</option>
        <option value="Gangtok">Gangtok</option>
        <option value="Goa">Goa</option>
        <option value="Guwahati">Guwahati</option>
        <option value="Gwalior">Gwalior</option>
        <option value="Haridwar">Haridwar</option>
        <option value="Hyderabad">Hyderabad</option>
        <option value="IDR">Indore</option>
        <option value="Indore">Jaipur</option>
        <option value="Jaisalmer">Jaisalmer</option>
        <option value="Jamshedpur">Jamshedpur</option>
        <option value="Jhansi">Jhansi</option>
        <option value="Jodhpur">Jodhpur</option>
        <option value="Kannur">Kannur</option>
        <option value="Khajuraho">Khajuraho</option>
        <option value="Kolkata/Calcutta">Kolkata/Calcutta</option>
        <option value="Kullu">Kullu</option>
        <option value="Lucknow">Lucknow</option>
        <option value="Madurai">Madurai</option>
        <option value="Mumbai/Bombay">Mumbai/Bombay</option>
        <option value="Mysore">Mysore</option>
        <option value="Nagpur">Nagpur</option>
        <option value="Nainital">Nainital</option>
        <option selected="selected" value="New Delhi">New Delhi</option>
        <option value="Palampur">Palampur</option>
        <option value="Patna">Patna</option>
        <option value="Pune">Pune</option>
        <option value="Ranchi">Ranchi</option>
        <option value="Ranikhet">Ranikhet</option>
        <option value="Shimla">Shimla</option>
        <option value="Srinagar">Srinagar</option>
        <option value="Tirupur">Tirupur</option>
        <option value="Trichy">Trichy</option>
        <option value="Trivandrum">Trivandrum</option>
        <option value="Udaipur">Udaipur</option>
        <option value="Vadodara">Vadodara</option>
        <option value="Varanasi/Banaras">Varanasi/Banaras</option>
        <option value="Visakhapatnam">Visakhapatnam</option>
    </select></td>
</tr>
<tr>
<td>
    Date_of_Event:</td>
<td> <input type="text" name="Date_of_Event" style="width: 152px"></td>
</tr>
<tr>
<td>
    Guests_Expected :</td>
<td> <input type="text" name="Guests_Expected "></td>
</tr>
<tr>
<td>
    Budget_of_event:</td>
<td> <input type="text" name="Budget_of_event"></td>
</tr>
<tr>
<td>
    Event_Theme:</td>
<td> <input type="text" name="Event_Theme"></td>
</tr>
<tr>
<td>Comments :</td>
<td><textarea name="comments"></textarea></td>
</tr>
<tr>
<td>&nbsp;</td>
<td><input type="submit" value="submit details" name="submit" id="Submit1"></td>
</tr>
</table>
</div>
</form>
</body>
</html>
