
<%@page import="java.sql.ResultSet,Global.DB"%>

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
}
.style3 {
				font-size: medium;
}
.style4 {
				color: #00A1FF;
				font-size: medium;
				font-family: "Comic Sans MS";
}
.style5 {
				font-family: "Comic Sans MS";
}
.style6 {
				font-size: medium;
				font-family: "Comic Sans MS";
}
.style7 {
				text-align: left;
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
<div style="position: absolute; width: 201px; height: 157px; z-index: 1; left: 216px; top: 14px; bottom: 153px;" id="layer2">
	<img src="<%=session.getAttribute("img")%>" height="79">
            <br>
                
</div>
            
<div style="position: absolute; width: 211px; height: 327px; z-index: 2; left: 206px; top: 254px" id="layer3">
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
<div style="position: absolute; width: 203px; height: 54px; z-index: 2; left: 212px; top: 188px" id="layer5" class="style1">
	<strong>WELCOME:<%=session.getAttribute("uid")%></strong></div>

<div style="position: absolute; width: 936px; height: 546px; z-index: 3; left: 437px; top: 14px" id="layer4" class="style2">
	<div class="style7">
					<span class="style1"><strong><span class="style3">
					<span class="style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	JOINED GROUPS:
      <%  try{
        String uid=(String)session.getAttribute("uid");         
            out.println("<table>");
 ResultSet rs=new DB().execute("select a.membergid,b.groupdesc from tbgroupmember a,tbgroup b where a.memberuserid='"+uid+"'and a.membergid=b.groupid");

            while(rs.next()){

           
               
                    %></strong></span></span></strong><span class="style6">
					</span></span> <strong>
    
      				<span class="style1"><span class="style3">
					<span class="style5">
    
      <tr>
          <td></span></span></span><a href="grpdetails.jsp?gid=<%=rs.getString("membergid")%>&gn=<%=rs.getString("groupdesc")%>"> 
					<span class="style4"> <%=rs.getString("groupdesc")%></span></a><span class="style1"><span class="style6"></td></span>
					<span class="style3"><span class="style5">
    </tr>
  <%
          
            }
out.println("</table>");
            }
catch(Exception e){System.out.println(e);}
            


            
            %></span></span></span> </div>
    
    
    <div>
</div>

       
</body>
</html>
