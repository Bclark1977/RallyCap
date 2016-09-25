<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GameDay.aspx.cs" Inherits="RallyCap.Journeys.GameDay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div id="GameTime" style="text-align:center;">
        <img src="../Content/images/WC_Logo.png" height="150" width="150" /> <br />
        <h1>- VS -</h1>
        <img src="../Content/images/Sanjose.png" height="150" width="150" />
    </div>

    <div id="PlayTauntPlayer" class="Taunt" style="display:none">
        <h1>Big Boooooooo.</h1>
        <img src="/Content/images/SoccerTaunt1.jpg" />
    </div>


    <div id="PlayTauntTeam" class="Taunt" style="display:none">
        <div style="width:150px; background-color:red; height:150px;">
            Lets all Yell! <br />
            Air Ball!
        </div>
    </div>
        <div id="PlayChant1" class="Chant" style="display:none; text-align:center; font-size:24px; text-transform: uppercase;">
       
            <img src="/Content/images/SoccerChant1.jpg" /> <br />
           We're Blue! <br />
           We're White<br />
            We're Fricken Dynamite<br />
            White Caps! White Caps!<br />
    </div>
            <div id="PlayChant2" class="Chant" style="display:none">
         <iframe width="708" height="425" src="https://www.youtube.com/embed/FuwhlqXL0os" frameborder="0" allowfullscreen></iframe>
    </div>


</asp:Content>
