<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="web.aspx.cs" Inherits="NouveauxDesign.web" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="description" content="Web Design information for Nouveaux Design" />
    <meta name="keywords" content="web design,web,design,web development,development,developers,designers,online,boutique" />
    <meta name="author" content="Nouveaux Design" />
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <link href="styles/nouveaux.css" rel="stylesheet" />
    <link href="styles/wwd.css" rel="stylesheet" />
    <!--[if lt IE 9]>
	    <link href="styles/nouveaux-ie.css" rel="stylesheet" />
        <link href="styles/wwd-ie.css" rel="stylesheet" />
    <![endif]-->

    <script type="text/javascript" src="scripts/jquery.min.js"></script>

    <script src="scripts/slide-min.js" type="text/javascript"></script>

    <!--<script type="text/javascript" src="scripts/slide.js"></script>-->

    <script type="text/javascript">
        $(document).ready(function() {
            $('#<%=page_id %>click').attr('class', 'button-selected');
            $('#slides').nvxSlide('previous', 'next', 'thumbs');
        });
    </script>

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

    <title>Web - Nouveaux Design</title>
</head>
<body>
    <!--[if lte IE 6 ]>
		<div style="width: 100%; background-color: #FFFFCC; padding: 10px; text-align:center">
			You are using an outdated browser which is no longer supported. Please upgrade to a modern version. For information on upgrading, click <a href="browserup.html">here</a>.
		</div>
	<![endif]-->
    <div id="mainPage">
        <div id="topHeader">
            <ul>
                <li><a href="about">WHO WE ARE</a></li>
                <li><a href="print">WHAT WE DO</a></li>
            </ul>
            <a href="about" class="imglink">
                <img id="logoImage" src="images/nouveaux_title.png" alt="title" /></a>
            <div class="clear-fix" id="clear-top">
            </div>
        </div>
        <hr />
        <div id="pageContent">
            <a href="print" class="button" style="margin-right: 40px;" id="printclick">PRINT</a>
            <a href="web" class="button" style="margin-right: 40px;" id="webclick">WEB</a> <a
                href="av" class="button" id="avclick">AV </a>
            <div class="clear-fix">
            </div>
        </div>
        <div id="inter-pad">
        </div>
        <div id="print" class="page">
            <div id="slides">
                <a id="previous">
                    <img alt="arrowleft" src="images/arrow.png" /></a> <a id="next">
                        <img alt="arrowright" src="images/arrow2.png" /></a>
                <img alt="" src="images/web/foxonline.jpg" class='nvx-slide' width="600" height="338" />
                <img alt="" src="images/web/fxo_start.jpg" class='nvx-slide' width="600" height="338" />
                <img alt="" src="images/web/xmen.jpg" class='nvx-slide' width="600" height="338" />
                <img alt="" src="images/web/inv.jpg" class='nvx-slide' width="600" height="338" />
                <img alt="" src="images/web/menu.jpg" class='nvx-slide' width="600" height="338" />
                <img alt="" src="images/web/popup.jpg" class='nvx-slide' width="600" height="338" />
            </div>
            <div id="thumbs">
                <div class="nvx-thumbslide">
                    <div class='nvx-thumb' style="margin-right: 16px;">
                        <img alt="" src="images/web/foxonline.jpg" class='nvx-slide' width="99" height="55" />
                    </div>
                    <div class='nvx-thumb' style="margin-right: 16px;">
                        <img alt="" src="images/web/fxo_start.jpg" class='nvx-slide' width="99" height="55" />
                    </div>
                    <div class='nvx-thumb' style="margin-right: 16px;">
                        <img alt="" src="images/web/xmen.jpg" class='nvx-slide' width="99" height="55" />
                    </div>
                    <div class='nvx-thumb' style="margin-right: 16px;">
                        <img alt="" src="images/web/inv.jpg" class='nvx-slide' width="99" height="55" />
                    </div>
                    <div class='nvx-thumb'>
                        <img alt="" src="images/web/menu.jpg" class='nvx-slide' width="99" height="55" />
                    </div>
                </div>
                <div class="nvx-thumbslide">
                    <div class='nvx-thumb' style="margin-right: 16px;">
                        <img alt="" src="images/web/popup.jpg" class='nvx-slide' width="99" height="55" />
                    </div>
                </div>
            </div>
        </div>
        <div id="text">
            <p>
                Nouveaux design offers a range of web services whether you need a website, a content
                management system, a blog set up, Email newsletters, social networking or flash
                integrated into your site. Get in touch if you want to know more about our online
                services.
            </p>
        </div>
    </div>
    <div id="padmybottom">
    </div>
</body>
</html>
