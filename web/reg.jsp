<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"[]>
<%@page import="Global.DB,java.sql.*"  %>
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
   .style2 {
	text-align: right;
	color: #0091E5;
	background-color: #F0F1F5;
}
.style4 {
	text-align: center;
}
.style5 {
	background-color: #F0F1F5;
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

<div style="position: absolute; width: 1010px; height: 371px; z-index: 1; left: 358px; top: 553px" id="layer1">
    <%
    try {
         
          String id=request.getParameter("Text1");
          String pwd=request.getParameter("Password1");
          String sq=request.getParameter("Select1");
          String sa=request.getParameter("Text3");
          String gen=request.getParameter("Radio1");
          String img="images/th.jfif";
            new DB().update("insert into tbuser(userid,usrpwd,usrsecques,usrsecans,usrgen,usrimg) values('"+id+"','"+pwd+"','"+sq+"','"+sa+"','"+gen+"','"+img+"')");
            
            
            
           
        }
        catch(Exception e){
        System.out.println(e);}
            
    
    %>
    
    
    User Registration successfully
    <br>
        <a href="login.html">BACK TO LOGIN</a>
</div>

</body>
</html>
