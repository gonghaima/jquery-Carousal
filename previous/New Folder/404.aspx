<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="404.aspx.cs" Inherits="NouveauxDesign._04" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link href="styles/nouveaux.css" rel="stylesheet" type="text/css" />
    <link rel="Stylesheet" href="styles/errors.css" />
    <title>Page not found - Nouveaux Design</title>

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
    <div id="box">
        <div id="right">
            <img alt="" src="images/errors/404.png" />
        </div>
        <div id="left">
            <img alt="" src="images/logo.png" />
        </div>
        <div id="clear">
        </div>
        <hr />
        <div id="message">
            Oops, we couldn't find the page you were looking for. Click <a href="home">here</a>
            to return to our homepage
        </div>
    </div>
    <!--<div id="color-footer">
        <div id="footer">
            <div id="logo-float">
                <img alt="" src="images/nouveaux_title.png" id="footer-logo" />
            </div>
            <div id="footer-links">
                <a href="contact" class="footer-link">Contact</a><a href="#" class="footer-link">Site Map</a>
                <a href="#" class="footer-link">Client Login</a>
            </div>
        </div>
    </div>-->
</body>
</html>
