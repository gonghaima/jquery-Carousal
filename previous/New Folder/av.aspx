<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="av.aspx.cs" Inherits="NouveauxDesign.av" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Audio / Visual - Nouveaux Design</title>
    <meta name="description" content="Audio / Visual information for Nouveaux Design" />
    <meta name="keywords" content="audio,visual,av,audio/visual,design,visual design,audio design,audio visual" />
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

    <script src="scripts/swfobject.js" type="text/javascript"></script>

    <script src="scripts/yt.js" type="text/javascript"></script>

    <script type="text/javascript">
        $(document).ready(function() {
            $('#<%=page_id %>click').attr('class', 'button-selected');
            $('#slides').nvxSlide('previous', 'next', 'thumbs');
        })
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
            <a href="web" class="button" style="margin-right: 40px;" id="webclick">WEB </a><a
                href="av" class="button" id="avclick">AV </a>
            <div class="clear-fix">
            </div>
        </div>
        <div id="inter-pad">
        </div>
        <div id="av" class="page">
            <div id="playerContainer">
                <div id="ytapiplayer">
                    You need Flash player 8+ and JavaScript enabled to view this video.
                </div>
                <div id="playerControl">
                    <a href="javascript:void(0);" id="muteBtn">Mute</a> <a href="javascript:void(0);"
                        id="pauseBtn"></a><a href="javascript:void(0);" id="playBtn"></a>
                    <div id="videoText">
                        20th Century Fox Compilation Reel
                    </div>
                </div>
            </div>

            <script type="text/javascript">

                var params = { allowScriptAccess: "always", wmode: 'Transparent' };
                var atts = { id: "myytplayer" };
                swfobject.embedSWF("http://www.youtube.com/apiplayer?enablejsapi=1&amp;playerapiid=ytplayer",
                           "ytapiplayer", "600", "368", "8", null, null, params, atts);

            </script>

        </div>
        <div id="text">
            <p>
                Nouveaux Design offers clients a comprehensive audio visual service from television
                commercial editing and presentations to audio visual solutions for online use. Our
                modern studio facilities and creative flair means we are capable of creating the
                audio visual solution that is right for your needs.</p>
        </div>
    </div>
    <div id="padmybottom">
    </div>
</body>
</html>
