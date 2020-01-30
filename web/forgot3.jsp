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
	text-align: center;
	color: #00A1FF;
	font-family: "Comic Sans MS";
	font-size: medium;
}
   .style2 {
	text-align: right;
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
                    e1.innerHTML="Password cant be empty";
                    flag = false;
                }
                else
                {
                    e1.innerHTML="";
                }
                if (ps!=nm) 
                {
                    e2.innerHTML="Password doesnt match";
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
    <%
        try{
        String id=request.getParameter("uid");
        String ans=request.getParameter("Text1");
        System.out.println(id+"     "+ans);
        ResultSet rs=new DB().execute(" select userid from tbuser where userid='"+id+"'and usrsecans='"+ans+"'");
        if(rs.next()){
    
    
    
    
    
    %>

<div style="position: absolute; width: 1364px; height: 371px; z-index: 1; left: 3px; top: 550px" id="layer1" class="style1">
    CHANGE PASSWORD<form method="post" action="forgot4.jsp"  name="f1" onsubmit="return check(f1)"style="height: 137px">
	<table style="width: 100%">
		<tr>
			<td class="style2">NEW PASSWORD</td>
                        <td><input name="Text1" type="text" id="a" style="width: 257px">&nbsp;</td>
                        <td><small><span id="d1"> </span></small></td>
		</tr>
		<tr>
			<td class="style2">CONFIRM PASSWORD</td>
                        <td><input name="Text2" id="b" type="text" style="width: 256px">&nbsp;</td>
			<td><small><span id="d2"> </span></small></td>
		</tr>
		<tr>
			<td class="style2">&nbsp;</td>
			<td><input name="Submit1" type="submit" value="CHANGE">&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
	</table>
    <input   type="hidden" name="uid" value="<%=id%>">
</form>

</div>
    <%
    }
else{
    %>
    
<div style="position: absolute; width: 943px; height: 155px; z-index: 1; left: 412px; top: 550px" id="layer2">
		WRONG ANSWER PLEASE TRY AGAIN<br>
		<a href="forgot.html">CLICK HERE TO GO BACK</a></div>

    <%

}

}catch(Exception e){}



%>

</body>
</html>
