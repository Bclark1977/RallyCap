<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EventAdd.aspx.cs" Inherits="RallyCap.Events.EventAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        function ToggleSeatSelection(onOrOff) {
            alert(onOrOff);
            var item = document.getElementById("divSeatSelection");

            item.style.display = onOrOff == "InPerson" ? "block" : "none";
        }

    </script>
    <style>
        .match_item, .Game {
            clear: both;
        }

        .match_date {
            border-top: 5px solid #e5e5e5;
            padding: 0.3em;
            font-size: 1.5em;
            font-family: "din_bold";
            color: #565656;
            background-color: #999988;
            clear: both;
        }

        .match_host {
            width: 220px;
        }

        .match_time, .floatLeft {
            float: left;
        }
        .match_time{
            padding-left:15px;
        }
        .home_club {
            padding-left: 30px;
            float: left;
            width:250px;
        }

        .vs_club {
            float: left;
        }

        .match_links, .match_meta {
            display: none;
        }
    </style>

    <div>
        <div class="match_date">Sunday, September 25, 2016</div>

        <div class="Game">
            <button class="floatLeft">I'm Going</button>
            <div class="match_time floatLeft">4:00PM ET</div>
            <div class="home_club">
                <span class="match_host">HOME</span>
                <img class="club_logo" src="http://league-mp7static.mlsdigital.net/styles/image_small_thumbnail/s3/mp6/1230_200x200.png?null&amp;itok=4u1vRLzH" width="30" height="30" alt="LA Galaxy" title="LA Galaxy" /><span class="club_name">LA Galaxy</span>
            </div>
            <div class="vs_club">
                <span class="match_host">AWAY</span>
                <img class="club_logo" src="http://league-mp7static.mlsdigital.net/styles/image_small_thumbnail/s3/mp6/3500_200x200.png?null&amp;itok=9L1TEKPV" width="30" height="30" alt="Seattle Sounders FC" title="Seattle Sounders FC" /><span class="club_name">Seattle Sounders FC</span>
            </div>
        </div>

        <div class="Game">
            <button class="floatLeft">I'm Going</button>
            <div class="match_time floatLeft">7:00PM ET</div>
            <div class="home_club">
                <span class="match_host">HOME</span>
                <img class="club_logo" src="http://league-mp7static.mlsdigital.net/styles/image_small_thumbnail/s3/mp6/CCSC-200x200.png?null&amp;itok=vPAdI8Dg" width="30" height="30" alt="Columbus Crew SC" title="Columbus Crew SC" /><span class="club_name">Columbus Crew SC</span>
            </div>
            <div class="vs_club">
                <span class="match_host">AWAY</span>
                <img class="club_logo" src="http://league-mp7static.mlsdigital.net/styles/image_small_thumbnail/s3/mp6/928_200x200_0.png?null&amp;itok=Fmk0HM7p" width="30" height="30" alt="New England Revolution" title="New England Revolution" /><span class="club_name">New England Revolution</span>
            </div>
        </div>



        <div class="match_date">Tuesday, September 27, 2016</div>

        <div class="Game">
            <button class="floatLeft">I'm Going</button>
            <div class="match_time floatLeft">8:00PM ET</div>
            <div class="home_club">
                <span class="match_host">HOME</span>
                <img class="club_logo" src="http://league-mp7static.mlsdigital.net/styles/image_small_thumbnail/s3/11729_200x200.png?null&amp;itok=UXb1E-Vp" width="30" height="30" alt="Antigua GFC" title="Antigua GFC" /><span class="club_name">Antigua GFC</span>
            </div>
            <div class="vs_club">
                <span class="match_host">AWAY</span>
                <img class="club_logo" src="http://league-mp7static.mlsdigital.net/styles/image_small_thumbnail/s3/mp6/3500_200x200.png?null&amp;itok=9L1TEKPV" width="30" height="30" alt="Seattle Sounders FC" title="Seattle Sounders FC" /><span class="club_name">Seattle Sounders FC</span>
            </div>
        </div>

        <div class="Game">
            <button class="floatLeft">I'm Going</button>
            <div class="match_time floatLeft">8:00PM ET</div>
            <div class="home_club">
                <span class="match_host">HOME</span>
                <img class="club_logo" src="http://league-mp7static.mlsdigital.net/styles/image_small_thumbnail/s3/11729_200x200.png?null&amp;itok=UXb1E-Vp" width="30" height="30" alt="Antigua GFC" title="Antigua GFC" /><span class="club_name">Antigua GFC</span>
            </div>
            <div class="vs_club">
                <span class="match_host">AWAY</span>
                <img class="club_logo" src="http://league-mp7static.mlsdigital.net/styles/image_small_thumbnail/s3/mp6/399_200x200_0.png?null&amp;itok=WZNLBdLG" width="30" height="30" alt="New York Red Bulls" title="New York Red Bulls" /><span class="club_name">New York Red Bulls</span>
            </div>
        </div>
        <div style="display: none">
            <div>
                <asp:Label runat="server" AssociatedControlID="lstEventType" CssClass="col-md-2 control-label">Game Type</asp:Label>
                <div class="input">
                    <asp:ListBox runat="server" ID="lstEventType" Rows="1" SelectionMode="Single">
                        <asp:ListItem Text="- Select type -" Value="" />
                        <asp:ListItem Text="Hockey" />
                        <asp:ListItem Text="BaseBall" />
                        <asp:ListItem Text="Football" />
                        <asp:ListItem Text="Soccer" />
                    </asp:ListBox>
                </div>
            </div>
        <br />

        <div>
            <asp:Label runat="server" AssociatedControlID="lstCity" CssClass="col-md-2 control-label">City</asp:Label>

            <div class="input">
                <asp:ListBox runat="server" ID="lstCity" Rows="1" SelectionMode="Single">
                    <asp:ListItem Text="- Select City -" />
                    <asp:ListItem Text="Vancouver" />
                    <asp:ListItem Text="Calgary" />
                </asp:ListBox>
            </div>
        </div>
        <br />
        <div>
            <asp:Label runat="server" AssociatedControlID="lstCity" CssClass="col-md-2 control-label">Attending</asp:Label>

            <div class="input">
                <asp:ListBox runat="server" ID="lstAttendeeType" Rows="1" SelectionMode="Single" onchange="ToggleSeatSelection(this.value)">
                    <asp:ListItem Text="Home" Value="Home" />
                    <asp:ListItem Text="Bar" Value="Bar/Pub" />
                    <asp:ListItem Text="In Person" Value="InPerson" />
                </asp:ListBox>
            </div>
        </div>
        <br />
        <div>

            <div id="divSeatSelection" style="display: none;">
                <asp:Label runat="server" AssociatedControlID="txtSection" CssClass="col-md-2 control-label">Seat Selection</asp:Label>
                <br clear="both" />
                <div class="input">
                    <div>
                        <asp:Label Style="text-align: right;" runat="server" AssociatedControlID="txtSection" CssClass="col-md-2 control-label">Section</asp:Label>
                        <asp:TextBox runat="server" ID="txtSection" Width="100" />
                    </div>
                    <div>
                        <asp:Label Style="text-align: right;" runat="server" AssociatedControlID="txtRow" CssClass="col-md-2 control-label">Row</asp:Label>

                        <asp:TextBox runat="server" ID="txtRow" Width="100" />
                    </div>
                    <div>
                        <asp:Label Style="text-align: right;" runat="server" AssociatedControlID="txtSeat" CssClass="col-md-2 control-label">Seat</asp:Label>

                        <asp:TextBox runat="server" ID="txtSeat" Width="100" />
                    </div>
                </div>
            </div>

        </div>
        <br />
        <div>
            <asp:Label runat="server" AssociatedControlID="radCanucks" CssClass="col-md-2 control-label">Favorite Team</asp:Label>

            <div class="Input">
                <asp:RadioButton runat="server" ID="radCanucks" GroupName="FavoriteTeam" Text="Canucks" />
                <asp:RadioButton runat="server" ID="radFlames" GroupName="FavoriteTeam" Text="Flames" />


            </div>

        </div>
    </div>
        <br /><br />
    </div>
</asp:Content>
