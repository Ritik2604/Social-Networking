<%@page import="Global.DB"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"[]>
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US" xml:lang="en">
<head>
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
    <!--
    Created by Artisteer v3.1.0.46558
    Base template (without user's data) checked by http://validator.w3.org : "This page is valid XHTML 1.0 Transitional"
    -->
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Register</title>
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
	font-size: medium;
	font-family: "Comic Sans MS";
				text-align: right;
}
   .style4 {
				text-align: center;
}
   .style5 {
				text-align: left;
}
.style6 {
				margin-left: 123px;
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

<div style="position: absolute; width: 1325px; height: 371px; z-index: 1; left: 43px; top: 553px" id="layer1" class="style1">
    <div class="style4">
    <strong>Register<br>
            <form action="reg.jsp" method="post" name="f1" onsubmit="return check(f1)">
                  <table style="width: 100%; height: 170px;">
		<div class="style5">
		<tbody class="style4">
		<tr>
			<td style="width: 424px" class="style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
						&nbsp;<br>
						<br>
						<table style="width: 68%" class="style6">
										<tr>
			<%
                            try{
                               int id = new DB().newID("userid","tbuser");
                                
                            
                        %>											<td style="width: 260px">
    <strong>&nbsp;USER ID</td>
			<td style="width: 256px">
														<strong>
                                                                                                                    <input   name="Text1" type="text"    value="<%=id%>" readonly style="width: 248px; background-color: grey"></strong>&nbsp;</strong><br>
														</td>
			<td style="width: 412px"><strong>
                                <br>
			</strong></td>
			<td style="width: 310px">
		</td>
</tr>
										<tr>
														<td style="width: 260px">
    <strong>PASSWORD 			<td style="width: 256px">
    <strong>
        <input name="Password1" id="b" type="password" style="width: 250px"><br>
					</strong>
					</strong></td>
														<td style="width: 412px"><small><span id="d2"></span></small>
    <strong>
			<br>
					</strong></td>
														<td style="width: 310px">
														&nbsp;</td>
										</tr>
										<tr>
														<td style="width: 260px">
    <strong>SECURITY QUES</td></strong></td>
														<td style="width: 412px">
    <strong>
			<select name="Select1" style="width: 250px">
			<option>What is your pet's name?</option>
			<option>What is your school name?</option>
			<option>What is your college name?</option>
			<option>What is your father's name?</option>
			</select><br>
					</strong></td>
														<td style="width: 310px">
														&nbsp;</td>
										</tr>
										<tr>
														<td style="width: 260px">
    <strong>GENDER</td>
			<td style="width: 256px">
					</strong>
    <strong>
			<input name="Radio2" type="radio" checked value="V1">&nbsp;MALE<input name="Radio1" type="radio" value="V1" >FEMALE<br>
					</strong></td>
														<td style="width: 412px">
    &nbsp;</td>
														<td style="width: 310px">
														&nbsp;</td>
										</tr>
										<tr>
														<td style="width: 260px">
    <strong>SECURITY ANS</td>
					</strong></td>
														<td style="width: 412px">
    <strong>
        <input name="Text3" type="text"  id="a" style="width: 248px"><br>
					</strong></td>
														<td style="width: 310px"><small><span id="d1"></span></small>
														&nbsp;</td>
										</tr>
										<tr>
														<td style="width: 260px">
    <strong>
			<input name="Submit1" type="submit" value="REGISTER"></strong></td>
			<%			
                            }catch(Exception e){System.out.println(e);}
                        %>
                        								<td style="width: 412px">
                                                                                                                    
                                                                                                                    
    <strong><a href="login.html">BACK TO LOGIN</a></strong><br>
														</td>
														<td style="width: 310px">
														&nbsp;</td>
							
                                                                                </tr>
                                                
						</table>    </form>
					<br>
					<br>
					</strong></div>
	</div>
</div>

</body>
</html>
