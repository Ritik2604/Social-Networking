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
}
   .style2 {
				text-align: center;
				font-size: medium;
				font-family: "Comic Sans MS";
}
   </style>
     <script type="text/javascript">
            function check(f) {
                var nm=document.getElementById("a").value;
                
                var e1=document.getElementById("d1");
                var flag = true;
                if (nm == "") 
                {
                    e1.innerHTML="Username cant be empty";
                    flag = false;
                }
                else
                {
                    e1.innerHTML="";
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

    
        
        
<div style="position: absolute; width: 1392px; height: 324px; z-index: 1; left: 0px; top: 496px" id="layer1">
<div style="position: absolute; width: 201px; height: 157px; z-index: 1; left: 260px; top: 9px; bottom: 158px;" id="layer2">
	<img src="<%=session.getAttribute("img")%>" height="124" width="157">
            <br>
                
</div>
<div style="position: absolute; width: 211px; height: 327px; z-index: 2; left: 247px; top: 240px" id="layer3">
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
<div style="position: absolute; width: 900px; height: 546px; z-index: 3; left: 473px; top: 14px" id="layer4" class="style2">
	<span class="style1"><strong>CREATE NEW BLOG
       




</strong></span><strong><br>
	</strong>
    <form method="post" name="f1" action="createblog2" onsubmit="return check(f1)">
					<strong>
                                            <input name="Text1" type="text"  id="a" style="width: 272px; height: 39px"><br>
                                                    <span id="d1"></span>
					<input name="Submit1" type="submit"  value="CREATE"><br>
					<br>
					<br>
					<br>
					</strong>
	</form>
       




</div>
</div>

<div style="position: absolute; width: 203px; height: 54px; z-index: 2; left: 255px; top: 671px" id="layer5" class="style1">
	<strong>WELCOME:<%=session.getAttribute("uid")%></strong></div>

       
</body>
</html>
