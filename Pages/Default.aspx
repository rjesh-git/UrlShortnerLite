<%-- The following 4 lines are ASP.NET directives needed when using SharePoint components --%>
<%@ Page Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" MasterPageFile="~masterurl/default.master" language="C#" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%-- The markup and script in the following Content element will be placed in the <head> of the page --%>
<asp:Content ContentPlaceHolderId="PlaceHolderAdditionalPageHead" runat="server">
    <script type="text/javascript" src="../Scripts/jquery-1.6.2.min.js"></script>
    <link rel="Stylesheet" type="text/css" href="../Content/main.css" />
</asp:Content>

<%-- The markup and script in the following Content element will be placed in the <body> of the page --%>
<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
    <div class="header">
        <div><img src="../Images/AppTitle.png" /></div>
    </div>
    <div class="wrapper">
        <div class="left">
        </div>
        <div class="main">
            <div id="maincontent">
                <ol>
                    <li><a href="#features">Key Features</a></li>
                    <li><a href="#demo">Demo</a></li>
                    <li><a href="#usage">Usage</a></li>
                    <li><a href="#configuration">Configuration</a></li>
                    <li><a href="#faq">FAQs</a></li>
                    <li><a href="#support">Support</a></li>
                    <li><a href="#changelog">Change Log</a></li>
                </ol>
                <h2 id="features">Features</h2>
                <p>
                    A URL shortener is an app that allows the user to select any content in document library, click on a button, and automatically shortens a long wordy URL to a short domain name and uses a 5 or 6 character code. When users are clicking on that short links they are redirected to the original URLs just as if they had entered or clicked on that.
                    Url Shortener Lite app adds button to your document library, which will help to generate short url for the item in the library. Along with the short url, it generates the QR code also. 
                    Shares the same short url, regardless of how many times the button is invoked for the same item. Works for all the items in the document libray like, documents, folders, and document sets.
                </p>
                <h2 id="demo">Demo</h2>
                     <div><iframe frameborder="0" height="370" src="http://www.youtube.com/embed/wYTu2l0X6QE?wmode=transparent&amp;autohide=1&amp;egm=0&amp;hd=1&amp;iv_load_policy=3&amp;modestbranding=1&amp;rel=0&amp;showinfo=0&amp;showsearch=0" width="660"></iframe></div>
                <h2 id="usage">Usage</h2>
                <ul>
                    <li>Add the "Url Shortener Lite App" (If you are seeing this, you have already done this.)</li>
                    <li>Goto any document library</li>
                    <li>Select the document, for which short url has to be generated</li>
                    <li>Goto Files tab, in the ribbon</li>
                    <li>Under the Share & Track group, Url Shortener button will be available</li>
                    <li>Click on the button, new page will be opened with the short url and QR code for the selected item</li>
                </ul>

                <h2 id="configuration">Configuration</h2>
                <p>
                    Just add the app, no configuration needed. Requires live internet connection to generate the short url.
                </p>
                <h2 id="faq">FAQs</h2>
                    <h3>Can I generate a desired url, give preference or phrase to be added? </h3>
                    Current version of App is not supporting this feature.<br /><br />
                    <h3>Will it work on my tablet? </h3>
                    Yes, it will work on the tablet when the site is opened in PC/desktop view.<br /><br />
                    <h3>Whether these urls are stored anywhere in my site for future reference? </h3>
                    It's not stored in the host web or in your SharePoint site. The url is generated on the fly but it remains the same regardless how many times its generated for the same item.<br /><br />
                    <h3>Will it work for other lists other than document library? </h3>
                    Current version of App is not supporting this feature.<br /><br />    
                <h2 id="support">Support</h2>
                    <p>
                        <a href="mailto:urlshortenerlite@outlook.com"> UrlShortenerLite@Outlook.com </a><br />
                        <a href="https://twitter.com/search?q=%23UrlShortnerLite&src=hash"> #UrlShortenerLite </a>
                    </p>            
                <h2 id="changelog">Change Log</h2>
                <p>
                    Current version : 1.0.0
                </p>
            </div>
        </div>
        <div class="right">
             <div id="paypalDonate">
                <iframe src="../Pages/shortener.html"></iframe>
            </div>            
        </div>
    </div>
    <div class="footer">    
    </div>

</asp:Content>
