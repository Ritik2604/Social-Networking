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
	font-family: "Comic Sans MS";
}
.style3 {
	font-size: large;
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
<% try{
    String id=request.getParameter("uid");
    String ps=request.getParameter("Text1");
    String cps=request.getParameter("Text2");
if(ps.equals(cps)){
    new DB().update("update tbuser set usrpwd='"+ps+"'where userid='"+id+"'");

%>
<div style="position: absolute; width: 950px; height: 371px; z-index: 1; left: 418px; top: 553px" id="layer1" class="style1">
<strong><span class="style2"><span class="style3">PASSWORD CHANGED SUCCESSFULLY<br>
CLICK HERE TO LOGIN</span></span></strong></div>
<%
    }
else{
%>
    
<div style="position: absolute; width: 896px; height: 155px; z-index: 1; left: 468px; top: 550px" id="layer2">
		PASSWORD DOESNOT MATCH PLEASE TRY AGAIN<br>
		<a href="forgot.html">CLICK HERE TO GO BACK</a></div>
    
    
    
    <%

}

}
catch(Exception e){}
%>

</body>
</html>