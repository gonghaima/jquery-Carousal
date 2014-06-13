<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="print.aspx.cs" Inherits="NouveauxDesign.print" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="description" content="Print information for Nouveaux Design" />
    <meta name="keywords" content="print,paper,flyers,print design,billboards,tickets,billboard design," />
    <meta name="author" content="Nouveaux Design" />
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <link href="styles/nouveaux.css" rel="stylesheet" />
    <link href="styles/wwd.css" rel="stylesheet" />
    <!--[if lt IE 9]>
	    <link href="styles/nouveaux-ie.css" rel="stylesheet" />
        <link href="styles/wwd-ie.css" rel="stylesheet" />
    <![endif]-->

    <script type="text/javascript" src="scripts/jquery.min.js"></script>

    <script type="text/javascript" src="scripts/slide.js"></script>

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

    <title>Print - Nouveaux Design</title>
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
                href="av" class="button" id="avclick">AV</a>
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
                <img alt="" src="images/print/blackswan.jpg" class='nvx-slide' width="600" height="338"
                    title="Black swan ticket information" />
                <img alt="" src="images/print/Nicholl.jpg" class='nvx-slide' width="600" height="338" />
                <img alt="" src="images/print/FANZ.jpg" class='nvx-slide' width="600" height="338" />
                <img alt="" src="images/print/gulliver_bus.jpg" class='nvx-slide' width="600" height="338" />
                <img alt="" src="images/print/gulliver_bus2.jpg" class='nvx-slide' width="600" height="338" />
                <img alt="" src="images/print/Narnia_bus.jpg" class='nvx-slide' width="600" height="338" />
                <img alt="" src="images/print/Rio_bus.jpg" class='nvx-slide' width="600" height="338" />
                <img alt="" src="images/print/narnia_3d.jpg" class='nvx-slide' width="600" height="338" />
                <img alt="" src="images/print/unstoppable.jpg" class='nvx-slide' width="600" height="338" />
                <img alt="" src="images/print/NZMPIC.jpg" class='nvx-slide' width="600" height="338" />
                <img alt="" src="images/print/millertheives.jpg" class='nvx-slide' width="600" height="338" />
            </div>
            <div id="thumbs">
                <div class="nvx-thumbslide">
                    <div class='nvx-thumb' style="margin-right: 16px;">
                        <img alt="" src="images/print/blackswan.jpg" class='nvx-slide' width="99" height="55" />
                    </div>
                    <div class='nvx-thumb' style="margin-right: 16px;">
                        <img alt="" src="images/print/Nicholl.jpg" class='nvx-slide' width="99" height="55" />
                    </div>
                    <div class='nvx-thumb' style="margin-right: 16px;">
                        <img alt="" src="images/print/FANZ.jpg" class='nvx-slide' width="99" height="55" />
                    </div>
                    <div class='nvx-thumb' style="margin-right: 16px;">
                        <img alt="" src="images/print/gulliver_bus.jpg" class='nvx-slide' width="99" height="55" />
                    </div>
                    <div class='nvx-thumb'>
                        <img alt="" src="images/print/gulliver_bus2.jpg" class='nvx-slide' width="99" height="55" />
                    </div>
                </div>
                <div class="nvx-thumbslide">
                    <div class='nvx-thumb' style="margin-right: 16px;">
                        <img alt="" src="images/print/Narnia_bus.jpg" class='nvx-slide' width="99" height="55" />
                    </div>
                    <div class='nvx-thumb' style="margin-right: 16px;">
                        <img alt="" src="images/print/Rio_bus.jpg" class='nvx-slide' width="99" height="55" />
                    </div>
                    <div class='nvx-thumb' style="margin-right: 16px;">
                        <img alt="" src="images/print/narnia_3d.jpg" class='nvx-slide' width="99" height="55" />
                    </div>
                    <div class='nvx-thumb' style="margin-right: 16px;">
                        <img alt="" src="images/print/unstoppable.jpg" class='nvx-slide' width="99" height="55" />
                    </div>
                    <div class='nvx-thumb'>
                        <img alt="" src="images/print/NZMPIC.jpg" class='nvx-slide' width="99" height="55" />
                    </div>
                </div>
                <div class="nvx-thumbslide">
                    <div class='nvx-thumb' style="margin-right: 16px;">
                        <img alt="" src="images/print/millertheives.jpg" class='nvx-slide' width="99" height="55" />
                    </div>
                </div>
            </div>
        </div>
        <div id="text">
            <p>
                Nouveaux Design offers a range of print based design solutions, whether you need
                business cards, or a whole stationery set. Whether your project is the size of a
                building or the size of a match box, we can help you with whatever you need.
            </p>
            A basic list of what we offer:
            <ul style='line-height: 20px;'>
                <li>business cards</li>
                <li>letter heads</li>
                <li>promotional items</li>
                <li>brochures</li>
                <li>Postcards</li>
                <li>booklets</li>
                <li>billboards</li>
                <li>vechicle graphics</li>
                <li>signage graphcs</li>
                <li>stickers</li>
                <li>newspaper and magazine ads</li>
                <li>tickets</li>
            </ul>
            This list is by no means a complete picture of everything we create, so contact
            us to find out more.
        </div>
    </div>
    <div id="padmybottom">
    </div>
</body>
</html>
