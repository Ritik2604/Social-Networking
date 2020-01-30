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
            <div style="position: absolute; width: 201px; height: 157px; z-index: 1; left: 171px; top: 15px; bottom: 152px;" id="layer2">
                <img src="<%=session.getAttribute("img")%>" height="128" width="159">
                    <br>

                        </div>
                        <div style="position: absolute; width: 211px; height: 327px; z-index: 2; left: 160px; top: 248px" id="layer3">
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


                                                                                        <%
                                                                                            try {
                                                                                                String id = request.getParameter("id");
                                                                                                ResultSet rs = new DB().execute("select ifnull(usrname,'')usrname,ifnull(usradd,'')usradd,ifnull(usrmob,'')usrmob,ifnull(usrqualification,'')usrqualification,ifnull(usrinterest,'')usrinterest,ifnull(usrdob,'')usrdob from tbuser where userid='" + request.getParameter("id") + "'");
                                                                                                if (rs.next()) {
                                                                                        %>
                                                                                        <div style="position: absolute; width: 989px; height: 546px; z-index: 3; left: 384px; top: 14px" id="layer4">

                                                                                            <table style="width: 66%">
                                                                                             
                                                                                                <tr>
                                                                                                    <td style="width: 287px">USERNAME:</td>
                                                                                                    <td style="width: 267px">
                                                                                                        <input name="Text1" type="text"  value="<%=rs.getString("usrname")%>"style="width: 262px;background-color:  grey   " readonly >&nbsp;</td>
                                                                                                    <td>&nbsp;</td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td style="width: 287px">ADDRESS</td>
                                                                                                    <td style="width: 267px">
                                                                                                        <input name="Text2" type="text" value="<%=rs.getString("usradd")%>"style="width: 261px;background-color:  grey  " readonly>&nbsp;</td>
                                                                                                    <td>&nbsp;</td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td style="width: 287px">MOBILE</td>
                                                                                                    <td style="width: 267px">
                                                                                                        <input name="Text3" type="text" value="<%=rs.getString("usrmob")%>"style="width: 259px;background-color:  grey  " readonly>&nbsp;</td>
                                                                                                    <td>&nbsp;</td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td style="width: 287px">QUALIFICATION</td>
                                                                                                    <td style="width: 267px">
                                                                                                        <input name="Text5" type="text" value="<%=rs.getString("usrqualification")%>" readonly style="width: 261px;background-color:  grey  ">&nbsp;</td>
                                                                                                    <td>&nbsp;</td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td style="width: 287px">INTEREST</td>
                                                                                                    <td style="width: 267px">
                                                                                                        <input name="Text6" type="text" value="<%=rs.getString("usrinterest")%>" readonly style="width: 261px;background-color:  grey  ">&nbsp;</td>
                                                                                                    <td>&nbsp;</td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td style="width: 287px">DOB</td>
                                                                                                    <td style="width: 267px">
                                                                                                        <input name="Text7" type="text"value="<%=rs.getString("usrdob")%>" readonly style="width: 258px;background-color:  grey  ">&nbsp;</td>
                                                                                                    <td>&nbsp;</td>
                                                                                                </tr>


                                                                                                <tr>
                                                                                                    <td style="width: 287px" class="style2">
                                                                                                        <%
                                                                                                            rs = new DB().execute("select status from tbfriend where userid='" + session.getAttribute("uid") + "'and fid='" + id + "'");
                                                                                                            if (rs.next()) {
                                                                                                                if (rs.getInt("status") == 0) {
                                                                                                        %>
                                                                                                        REQUEST PENDING
                                                                                                        <%} else {
                                                                                                        %>
                                                                                                        YOU ARE FRIENDS
                                                                                                        <%
                                                                                                            }

                                                                                                        } else {
                                                                                                            rs = new DB().execute("select status from tbfriend where userid='" + id + "'and fid='" + session.getAttribute("uid") + "'");
                                                                                                            if (rs.next()) {
                                                                                                                if (rs.getInt("status") == 0) {
                                                                                                        %>
                                                                                                        <br><br><br><br>REQUEST NOT ACCEPTED YET<br>
                                                                                                        <a href="checkreq.jsp">REQUESTS</a>
                                                                                                        <%}
                                                                                                        } else {
                                                                                                        %>

                                                                                                        <a href="request.jsp?id=<%=id%>" >SEND REQUEST</a>&nbsp;
                                                                                                        <%
                                                                                                                    }
                                                                                                                }

                                                                                                            
                                                                                                          
                                                                                                        %>
                                                                                                    </td>
                                                                                                    <td style="width: 267px">&nbsp;</td>
                                                                                                    <td><a href="searchfrd.jsp">BACK</a></td>
                                                                                                </tr>
                                                                                            
                                                                                            </table>

                                                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                                            <div style="position: absolute; width: 195px; height: 177px; z-index: 1; left: 687px; top: 14px" id="layer6">
                                                                                                <img src="<%=request.getParameter("img")%>" width="135" height="137"></div>

                                                                                        </div>
                                                                                        </div>
                                                                                        <%
                                                                                                
                                                                                            }
                                                                                            }
                                                                                            catch (Exception e){System.out.println(e);}

                                                                                            
                                                                                            
                                                                                            
                                                                                            


                                                                                        %>
                                                                                        <div style="position: absolute; width: 203px; height: 54px; z-index: 2; left: 174px; top: 678px" id="layer5" class="style1">
                                                                                            <strong>WELCOME:<%=session.getAttribute("uid")%></strong></div>


                                                                                        </body>
                                                                                        </html>
