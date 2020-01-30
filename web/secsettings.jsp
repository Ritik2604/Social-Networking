<%@page import="java.sql.ResultSet"%>
<%@page import="Global.DB"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"[]>
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US" xml:lang="en">
<head>
    <!--
    Created by Artisteer v3.1.0.46558
    Base template (without user's data) checked by http://validator.w3.org : "This page is valid XHTML 1.0 Transitional"
    -->
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Home</title>
    <meta name="description" content="Description" />
    <meta name="keywords" content="Keywords" />



    <link rel="stylesheet" href="style.css" type="text/css" media="screen" />
    <!--[if IE 6]><link rel="stylesheet" href="style.ie6.css" type="text/css" media="screen" /><![endif]-->
    <!--[if IE 7]><link rel="stylesheet" href="style.ie7.css" type="text/css" media="screen" /><![endif]-->

    <script type="text/javascript" src="jquery.js"></script>
    <script type="text/javascript" src="script.js"></script>
   <style type="text/css">
.art-post .layout-item-0 { padding-right: 10px;padding-left: 10px; }
   .ie7 .art-post .art-layout-cell {border:none !important; padding:0 !important; }
   .ie6 .art-post .art-layout-cell {border:none !important; padding:0 !important; }
   .style1 {
				color: #00A1FF;
				text-align: center;
				font-family: "Comic Sans MS";
				font-size: medium;
}
.style2 {
				text-align: center;
}
   </style>
<script type="text/javascript">
            function check(f) {
                var nm=document.getElementById("a").value;
                var ps=document.getElementById("b").value;
                var e1=document.getElementById("d1");
                var e2=document.getElementById("d2");
                var flag = true;
                if (nm == "") 
                {
                    e1.innerHTML="Answer cant be empty";
                    flag = false;
                }
                else
                {
                    e1.innerHTML="";
                }
                if (ps == "") 
                {
                    e2.innerHTML="Password cant be empty";
                    flag = false;
                }
                else
                {
                    e2.innerHTML="";
                }
                return flag;

            }
        </script>
</head>
<body>
<div id="art-page-background-glare-wrapper">
    <div id="art-page-background-glare"></div>
</div>
<div id="art-main">
    <div class="cleared reset-box"></div>
    <div class="art-header">
<div class="art-bar art-nav">
<div class="art-nav-outer">
<div class="art-nav-wrapper">
<div class="art-nav-inner">
	<ul class="art-hmenu" style="left: 187px; top: 0px">
		<li>
			<a href="home.jsp" class="active">Home</a>
		</li>	
		<li>
			<a href="friends.jsp">Friends</a>
		</li>
		<li>
			<a href="messages.jsp">Messages</a>
		</li>
		<li>
			<a href="groups.jsp">Groups</a>
		</li>	
		<li>
			<a href="logout.jsp">Logout</a>
		</li>	
	

			
	</ul>
</div>
</div>
</div>
</div>
<div class="cleared reset-box"></div>
<div class="art-header-position">
            <div class="art-header-wrapper">
                <div class="cleared reset-box"></div>
                <div class="art-header-inner">
                <div class="art-headerobject"></div>
                <div class="art-logo">
                                 <h1 class="art-logo-name"><a href="./index.html">Social Networking</a></h1>
                                                 <h2 class="art-logo-text">We make people close</h2>
                                </div>
                </div>
            </div>
        </div>
        
    </div>
</div>

    
        
        
<div style="position: absolute; width: 1392px; height: 597px; z-index: 1; left: 0px; top: 496px" id="layer1">
<div style="position: absolute; width: 214px; height: 157px; z-index: 1; left: 227px; top: 11px; bottom: 429px;" id="layer2">
				<img src="<%=session.getAttribute("img")%>" height="148" width="179"> <br>
</div>
<div style="position: absolute; width: 211px; height: 327px; z-index: 2; left: 226px; top: 240px" id="layer3">
				<a href="editprf.jsp">Edit Profile</a><br>
				<br>
				<br>
				<br>
				<a href="editpwd.jsp">Edit Password</a><br>
				<br>
				<br>
				<br>
				<a href="editpic.jsp">Edit Pic</a><br>
				<br>
				<br>
				<br>
				<a href="secsettings.jsp">Security Settings </a><br>
				<br>
				<br>
</div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div style="position: absolute; width: 856px; height: 539px; z-index: 3; left: 512px; top: 49px" id="layer4" class="style1">
				<strong>CHANGE SEQURITY SETTINGS<br>
				</strong>
    <table ><form action="secsettings2.jsp" method="post" name="f1" onsubmit="return check(f1)">
		<tr>
			<td class="style2">PASSWORD</td>
                        <td><input name="Password1"  id="b" type="password" style="width: 250px">&nbsp;</td>
			<td><small><span id="d2"></span></small></td>
		</tr>
		<tr>
			<td class="style2">SECURITY QUESTION</td>
			<td><select name="Select1" style="width: 254px; height: 18px">
                            <option>What is your pets name?</option>
                            <option>What is your school name?</option>
                            <option>What is your college name?</option>
                            <option>What is your father&#39;s name?</option>		
                            	</select>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td class="style2">SEQURITY ANSWER</td>
                        <td><input name="Text2" type="text" id="a" style="width: 256px"></td>
                        <td><small><span id="d1"></span></small></td>
		</tr>
		<tr>
			<td class="style2">&nbsp;</td>
			<td><input name="Submit1" type="submit" value="CHANGE">&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
        </form>
	</table>
</div>

       



</div>


<div style="position: absolute; width: 203px; height: 54px; z-index: 2; left: 196px; top: 672px" id="layer5" class="style1">
	<strong>WELCOME:<%=session.getAttribute("uid")%></strong></div>


       



</body>
</html>
