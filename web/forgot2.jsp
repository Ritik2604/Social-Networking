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
    <title>Forgot</title>
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
				margin-left: 561px;
}
   </style>

</head>
<body>
<div id="art-page-background-glare-wrapper">
    <div id="art-page-background-glare"></div>
</div>
<div id="art-main" style="left: 4; top: 35">
    <div class="cleared reset-box"></div>
    <div class="art-header" style="left: 0px; top: 0px">
<div class="art-bar art-nav">
<div class="art-nav-outer">
<div class="art-nav-wrapper">
<div class="art-nav-inner">
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
                <div class="art-logo" style="left: 28%; top: 39px">
                                 <h1 class="art-logo-name"><a href="./index.html">Social     Networking</a></h1>
                                                 <h2 class="art-logo-text">We make people close</h2>
                                </div>
                </div>
            </div>
        </div>
        
    </div>
</div>

<div style="position: absolute; width: 1364px; height: 371px; z-index: 1; left: 4px; top: 553px" id="layer1">
     <%
        try{
        String id=request.getParameter("Text1");
        ResultSet rs=new DB().execute("select usrsecques from tbuser where userid= '"+id+"'");
        if(rs.next()){
        
        
        
        
        
        
        %>
        
        
     
<form method="post" action="forgot3.jsp" style="height: 242px">
	<table style="width: 100%" class="style1">
		<tr>
			<td>Sequrity ques</td>
                        <td><input name="Text2" type="text"  value="<%=rs.getString("usrsecques")%>" readonly  style="width: 407px;background-color: grey">&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>Security Ans</td>
			<td>
			<!--webbot bot="Validation" s-data-type="String" b-allow-letters="TRUE" b-value-required="TRUE" i-minimum-length="1" i-maximum-length="50" -->
			<input name="Text1" type="text" style="width: 405px" maxlength="50"></td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td><input name="Submit1" type="submit" value="Check">&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
	</table>
                         <input type="hidden" name="uid" value="<%= id%>">
</form>
                       
        <%
                                
                          }
        else{

%>


<div style="position: absolute; width: 1354px; height: 155px; z-index: 1; left: 540px; top: 122px" id="layer2">
		WRONG ID PLEASE TRY AGAIN<br>
		<a href="forgot.html">CLICK HERE TO GO BACK</a></div>


<%
}
    
        }
        catch(Exception e){
        System.out.println(e);}
    
    %>         
                                
                                
</div>

</body>
</html>
