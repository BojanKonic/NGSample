<%-- The following 4 lines are ASP.NET directives needed when using SharePoint components --%>

<%@ Page Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" MasterPageFile="~masterurl/default.master" Language="C#" %>

<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%-- The markup and script in the following Content element will be placed in the <head> of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
    <script type="text/javascript" src="../Scripts/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="/_layouts/15/sp.runtime.js"></script>
    <script type="text/javascript" src="/_layouts/15/sp.js"></script>
    <script src="/_LAYOUTS/15/SP.RequestExecutor.js"></script>
     <script type="text/javascript" src="../Scripts/angular.js"></script>
    <meta name="WebPartPageExpansion" content="full" />

    <!-- Add your CSS styles to the following file -->
    <link rel="Stylesheet" type="text/css" href="../Content/App.css" />

 
</asp:Content>

<%-- The markup in the following Content element will be placed in the TitleArea of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
    AngularJS SharePoint Sample
</asp:Content>

<%-- The markup and script in the following Content element will be placed in the <body> of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server">
    <div ng-app="ngDemoApp">
    <div class="search" ng-controller="queryCtrl" >
        <input class="queryBox" type="text" value="" ng-model="QueryText" ng-keyup="KeyUpEvent()" />
     </div>
    <div class="results" ng-controller="resultsCtrl" >
        <div ng-repeat="result in results">
            <div class="result">
                <h2 class="title">{{result.Cells.results[3].Value}}</h2>
                <a href="{{result.Cells.results[6].Value}}">{{result.Cells.results[6].Value}}</a>
                <img ng-hide="{{result.Cells.results[13].Value == null}}" src="{{result.Cells.results[13].Value}}" />
            </div>
        </div>
     </div>
    </div>
        <script type="text/javascript" src="../Scripts/App.js"></script>
        <script type="text/javascript" src="../Scripts/Services/QueryService.js"></script>
        <script type="text/javascript" src="../Scripts/Controllers/queryCtrl.js"></script>
        <script type="text/javascript" src="../Scripts/Controllers/resultsCtrl.js"></script>
</asp:Content>
