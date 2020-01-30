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
				color: #00A1FF;
				text-align: left;
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

    
        
        
<div style="position: absolute; width: 1392px; height: 712px; z-index: 1; left: 0px; top: 496px" id="layer1">
<div style="position: absolute; width: 201px; height: 157px; z-index: 1; left: 194px; top: 15px; bottom: 540px;" id="layer2">
	<img src="<%=session.getAttribute("img")%>" height="79">
            <br>
                
</div>
<div style="position: absolute; width: 211px; height: 327px; z-index: 2; left: 179px; top: 244px" id="layer3">
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
            <div style="position: absolute; width: 967px; height: 684px; z-index: 3; left: 406px; top: 14px" id="layer4" class="style2">
                 
                <div style="position: absolute; width: 296px; height: 446px; z-index: 1; left: 250px; top: 10px" id="layer6">
                   MESSAGES SENT BY:<%=request.getParameter("msgfrm")%>
                   <table   cellpadding="5">
                       
        <%
            try{
            String msgfrm=request.getParameter("msgfrm");
            String img=request.getParameter("img");
            ResultSet rs=new DB().execute("select msgdesc,msgdate,msgtime,msgid from tbmsg where msgtouserid='"+session.getAttribute("uid")+"'and msgfrmuserid='"+msgfrm+"' ");
            while(rs.next()){
          %>  
           
            
            
                            <tr>
                                <td><%=rs.getString("msgdesc")%><br>&nbsp;&nbsp;&nbsp;&nbsp;<small><font color="grey"><%=rs.getString("msgtime")%>&nbsp;&nbsp;<%=rs.getString("msgdate")%></font></small></td>
                                <td><a href="delmsg?msgid=<%=rs.getString("msgid")%>&msgfrm=<%=msgfrm%>&img=<%=img%>">Delete</a></td>
                            </tr>
                            
            <% }%>
                   </table>
                </div>
<%
                rs=new DB().execute("select msgdesc,msgdate,msgtime,msgid from tbmsg where msgtouserid='"+msgfrm+"'and msgfrmuserid='"+session.getAttribute("uid")+"' ");
               %>
                  
               <div style="position: absolute; width: 375px; height: 446px; z-index: 2; left: 560px; top: 11px" id="layer7">
                   MESSAGES SENT BY ME<table  cellpadding="5"  >
                   <%
                     
                      
                while(rs.next()){




                %>
            
            
            
                            <tr>
                                <td><%=rs.getString("msgdesc")%><br>&nbsp;&nbsp;&nbsp;&nbsp;<small><font color="grey"><%=rs.getString("msgtime")%>&nbsp;&nbsp;<%=rs.getString("msgdate")%></font></small></td>
                                <td><a href="delmsg?msgid=<%=rs.getString("msgid")%>&msgfrm=<%=msgfrm%>&img=<%=img%>">Delete</a></td>
                            </tr>
                            
<%
    }
%>
                   </table>
<form method="post" action="messages3.jsp?msgfrm=<%=msgfrm%>&img=<%=img%>"  name="f1" onsubmit="return check(f1)"style="height: 74px">
    <input name="Text2"  id="a" type="text" style="width: 348px"><small><span id="d1"></span></small><br>
				<input name="Submit2" type="submit" value="SEND"></div>
                       </form>
                       <%


}
catch(Exception e){System.out.println();}


%>
				<div style="position: absolute; width: 217px; height: 174px; z-index: 3; left: 10px; top: 8px" id="layer8">
                                    <img src="<%=request.getParameter("img")%>" height="180" width="180"></div>
</div>
</div>

<div style="position: absolute; width: 203px; height: 54px; z-index: 2; left: 187px; top: 674px" id="layer5" class="style1">
	<strong>WELCOME:<%=session.getAttribute("uid")%></strong></div>

       
</body>
</html>
