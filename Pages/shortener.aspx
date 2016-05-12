<%-- The following 4 lines are ASP.NET directives needed when using SharePoint components --%>
<%@ Page Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" MasterPageFile="~masterurl/default.master" language="C#" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%-- The markup and script in the following Content element will be placed in the <head> of the page --%>



<asp:Content ID="Content1" ContentPlaceHolderId="PlaceHolderAdditionalPageHead" runat="server">
    <meta http-equiv="X-Frame-Options" content="allow"/> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>

    <WebPartPages:AllowFraming runat="server" />
    
    <script type="text/javascript" src="../Scripts/jquery-1.6.2.min.js"></script>
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css"/>
    <script type="text/javascript" src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

    <title>Url Shortner Lite</title>

    <link rel="Stylesheet" type="text/css" href="../Content/App.css" />
    <script type="text/javascript" src="../Scripts/App.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            var h = decodeURIComponent(getQueryStringParameter("SPHostUrl"));
            var a = decodeURIComponent(getQueryStringParameter("SPAppWebUrl"));
            var i = decodeURIComponent(getQueryStringParameter("ItemID"));
            var l = decodeURIComponent(getQueryStringParameter("ListID"));
            var t = decodeURIComponent(getQueryStringParameter("Type"));
            var scriptbase = h + "/_layouts/15/";
            $.getScript(scriptbase + "SP.Runtime.js", function () {
                $.getScript(scriptbase + "SP.js",
                    function () { $.getScript(scriptbase + "SP.RequestExecutor.js", shortenURL(i, l, h, a, t)); }
                    );
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderId="PlaceHolderMain" runat="server">
    <div class="container">
         
	<div class="jumbotron">
		<h1>Url Shortner Lite</h1>
		<p>Makes Url Simple.</p>
	</div>
        
<div class="row">
  <div class="col-xs-8">Left<br/>
	<button type="button" class="btn btn-default btn-lg" onclick="window.history.go(-1); return false;">
		<span class="glyphicon glyphicon-chevron-left"></span> Back
	</button>
	<br/><br/>
	
	<div class="alert alert-danger alert-dismissable" style="display:none" id="alertPanel">
		<button type="button" class="close" data-dismiss="alert" aria-hidden="true" >&times;</button>
		<strong>Warning!</strong> Not able to reach the server, please check your network.
	</div>
	
	<div>
		<div class="panel panel-success clearfix">
			<div class="panel-heading">
				<h3 class="panel-title">Short Url</h3>
			</div>
			<div class="panel-body">
				<div class="input-group col-xs-4">
					<input type="text" id="txtShortUrl" class="form-control focusedInput" placeholder=""/>
				</div>
			</div>
		</div>
	</div>
	<div class="panel panel-primary clearfix">
		<div class="panel-heading">
			<h3 class="panel-title">Long Url</h3>
		</div>
		<div class="panel-body" id="txtLongUrl">			
		</div>
	</div>

	<div class="panel panel-info clearfix">
		<div class="panel-heading">
			<h3 class="panel-title">QR Code</h3>
		</div>
		<div class="panel-body" id="contentcolumn">
			
		</div>
	</div>
	
  </div>
  
  <div class="col-xs-4">Right
    <%--  <div id="paypalDonate"> <iframe src="../Pages/shortener.html"></iframe>--%>
       </div>
  </div>
</div>

    <%--<div id="maincontainer">
        <div id="topsection">
            <div class="innertube">
                <h1>Url Shortener Lite</h1>
            </div>
        </div>
        <div id="contentwrapper">
            <div id="contentcolumn">
               
                <a onclick='window.history.go(-1); return false;' href='#'>
                <img src='_layouts/15/1033/images/calprev.png' alt=''/>
                </a>
                <a onclick='window.history.go(-1); return false;' href='#'>Back</a><br/><br/>
                <h2>Long Url</h2>
                <div id="txtLongUrl"></div><br/>
                <h2>Short Url</h2>
                <input id="txtShortUrl" style='width:294px;font-size:15pt;' type='text'/><br/><br />
                <h2>QR Code</h2>                 
            </div>
        </div>
        <div id="leftcolumn">            
        </div>
        <div id="rightcolumn">
            <div id="paypalDonate">
                <iframe src="../Pages/shortener.html"></iframe>
            </div>
        </div>
        <div id="footer"></div>
    </div>--%>
</asp:Content>

