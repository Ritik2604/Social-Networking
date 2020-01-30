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
<div style="position: absolute; width: 201px; height: 157px; z-index: 1; left: 203px; top: 9px; bottom: 158px;" id="layer2">
	<img src="<%=session.getAttribute("img")%>" height="117" width="145">
            <br>
                
</div>
<div style="position: absolute; width: 211px; height: 327px; z-index: 2; left: 196px; top: 238px" id="layer3">
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
<div style="position: absolute; width: 955px; height: 546px; z-index: 3; left: 418px; top: 14px" id="layer4">
<%
    try{
        String tid=request.getParameter("tid");
        session.setAttribute("tid",tid);
        ResultSet rs=new DB().execute("select topicdesc,topicdate,topictime,topicusrid from tbtopic where topicid="+tid);
        if(rs.next()){
        %>
        <font size="6"><p style="borger:1px solid black;padding: 10px; color: #00A1FF"><%=rs.getString("topicdesc")%></font>
                <br><br>
                        <small>         POSTED BY:<%=rs.getString("topicusrid")%></small><br>
                            <%=rs.getString("topicdate")%>&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;<%=rs.getString("topictime")%>
                            
            
                            </p>
        
              
              <%
                  }
rs=new DB().execute("select a.commentdesc,a.commentdate,a.commenttime,a.commentuserid,b.usrimg from tbtopiccomment a,tbuser b where a.commenttopicid="+tid+" and b.userid=a.commentuserid");
                
out.println("<table>");
while(rs.next()){
%>
<tr>
    <td>
        <img src="<%=rs.getString("usrimg") %>" height="80" width="115"></img>
    </td>
    <td>
        
        <font color="red" size="4"><%=rs.getString("commentdesc")%></font><br></br>
        <font size="2" color="grey"> POSTED BY:<%=rs.getString("commentuserid")%></font><br>
            <small><font color="grey"><%=rs.getString("commentdate")%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString("commenttime")%></font></small>
    </td>
</tr>

<%


}      out.println("</table>");  

    
    
    
    
    }catch(Exception e){}


%>	
       <br></br>   
       <form action="postcmt" method="post" name="f1" onsubmit="return check(f1)">
           <input type="text" name="t1" id="a"  size="30">
               <span  id="d1"></span>
           <br>
           <input type="submit" value="POST COMMMENT">
       </form>
    





</div>
</div>

<div style="position: absolute; width: 203px; height: 54px; z-index: 2; left: 200px; top: 670px" id="layer5" class="style1">
	<strong>WELCOME:<%=session.getAttribute("uid")%></strong></div>

       
</body>
</html>
