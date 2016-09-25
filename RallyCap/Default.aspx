<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RallyCap._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1><img src="/Content/images/WC_logo.png" width="100"/>
        Rally Cap</h1>
        <p class="lead">Marketing boys to add write up</p>
        <p><a href="/Account/Login" class="btn btn-primary btn-lg">Login Now! &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Attending a Game</h2>
            <p>
                Attending a gaming event in your area.  Register as an attendee and get notifications of the fan zone and
                deals related to your game.
            </p>
            <p>
                <a class="btn btn-default" href="/Events/EventManage">Manage &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>POINT 2</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>POINT 3</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
