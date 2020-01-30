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
	color: #1D202A;
}
   </style>

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
<div style="position: absolute; width: 201px; height: 157px; z-index: 1; left: 255px; top: 11px; bottom: 156px;" id="layer2">
	<img src="<%=session.getAttribute("img")%>" height="126" width="172">
            <br>
                
</div>
<div style="position: absolute; width: 211px; height: 327px; z-index: 2; left: 245px; top: 240px" id="layer3">
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
            <% try{
    String id=(String)session.getAttribute("uid");
    String oldps=request.getParameter("Text1");
    String ps=request.getParameter("Text2");
    String cps=request.getParameter("Text3");
if(ps.equals(cps)){
    new DB().update("update tbuser set usrpwd='"+ps+"'where userid='"+id+"'and usrpwd='"+oldps+"'");

%>
<div style="position: absolute; width: 1122px; height: 371px; z-index: 1; left: 475px; top: 18px" id="layer1" class="style2">
<strong><span class="style2"><span class="style3">PASSWORD CHANGED SUCCESSFULLY<br>
</span></span></strong></div>
<%
    }
else{
%>

<div style="position: absolute; width: 902px; height: 546px; z-index: 3; left: 471px; top: 14px" id="layer4">
		PASSWORD DOESNOT MATCH PLEASE TRY AGAIN<br>
		<a href="editpwd.jsp">CLICK HERE TO GO BACK</a></div>
    
    
    
    <%

}

}
catch(Exception e){}
%>
<div style="position: absolute; width: 194px; height: 54px; z-index: 2; left: 260px; top: 178px" id="layer5" class="style1">
	<strong>WELCOME:<%=session.getAttribute("uid")%></strong></div>

       
</body>
</html>
