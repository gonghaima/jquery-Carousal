<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="NouveauxDesign.contact" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta name="description" content="Contact information for Nouveaux Design" />
    <meta name="keywords" content="contact,nouveaux design,nouveaux,phone nouveaux,email nouveaux,email design" />
    <meta name="author" content="Nouveaux Design" />
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <link href="styles/nouveaux.css" rel="stylesheet" />
    <link href="styles/get.css" rel="stylesheet" />
    <!--[if lt IE 9]>
	    <link href="styles/nouveaux-ie.css" rel="stylesheet" />
	    <link href="styles/get-ie.css" rel="stylesheet" />
    <![endif]-->

    <script type="text/javascript" src="scripts/jquery.min.js"></script>

    <title>Get in touch - Nouveaux Design</title>
    <style type="text/css">
        .style1
        {
            height: 317px;
            width: 359px;
        }
    </style>

    <script type="text/javascript">
    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-20668354-2']);
    _gaq.push(['_trackPageview']);

    (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();
    </script>

</head>
<body>
    <!--[if lte IE 6 ]>
		<div style="width: 100%; background-color: #FFFFCC; padding: 10px; text-align:center">
			You are using an outdated browser which is no longer supported. Please upgrade to a modern version. For information on upgrading, click <a href="browserup.html">here</a>.
		</div>
	<![endif]-->
    <div id="mainContainer">
        <div id="mainPage">
            <div id="topHeader">
                <ul>
                    <li><a href="about">WHO WE ARE</a></li>
                    <li><a href="print">WHAT WE DO</a></li>
                    <li><a href="contact">GET IN TOUCH</a></li>
                </ul>
                <a href="about" class="imglink">
                    <img id="logoImage" src="images/nouveaux_title.png" alt="title" /></a>
                <div class="clear-fix" id="clear-top">
                </div>
            </div>
            <hr />
            <div id="pageContent">
                <div id="contact-info">
                    Nouveaux Design<br />
                    <br />
                    PO Box 6923
                    <br />
                    Wellesly Street
                    <br />
                    Auckland
                    <br />
                    1101
                    <br />
                    <br />
                    <img alt="" src="images/mail_icon.png" width="14" height="14" style="padding-right: 7px;" />Email:
                    <br />
                    <a href="mailto:info@nouveaux.co.nz">info@nouveaux.co.nz</a>
                </div>
            </div>
        </div>
    </div>
    <div id="padmybottom">
    </div>
</body>
</html>
