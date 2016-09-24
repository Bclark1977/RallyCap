<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GameDay.aspx.cs" Inherits="RallyCap.Journeys.GameDay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <script type="text/javascript">

        $(function () {
            // Initialize the connection to the server
            var journeyHub = $.connection.journeyHub;
         
            // Preparing a client side function called sendMessage that will be called from the server side
            journeyHub.client.sendMessage = function (message) {
                showOrUpdateSuccessMessage(message, false);
            };
            // Establish the connection to the server. When done, sets the click of the button
            $.connection.hub.start().done(function () {
                journeyHub.server.countdownToGameTime();
            });
          
        });

        function showOrUpdateSuccessMessage(message, timeout) {
            
            HideAllContent();

            ShowContent(message);
            
        }

        var n;
        function showMessageAtTopOfScreen(message, timeout) {
            if (n == null) {
                n = noty({ text: message, type: 'success', timeout: timeout, maxVisible: 1 });
            }
            else {
                n.setText(message);
            }
        }
        function ShowContent(content) {
            var idToShow = content.replace("||", "");
        
        
            if (content.includes("CountDown")) {
                $.noty.closeAll();
                var seconds = content.split("||")[1];
             
                showMessageAtTopOfScreen("Game Starts in " + seconds + " seconds")
            }
            if (content.includes("Taunt")) {
                $.noty.closeAll();
                $(".Taunt").each(function () {


                    if (this.id == content.replace("||", "")) {
                        this.style.display = "block"
                    }
                });

            }
            else
            {
                showMessageAtTopOfScreen(content)
            }
        }

        function HideAllContent() {
            $(".Taunt").each(function () {
                this.style.display="none"
            });

        }
    </script>


    <div id="PlayTauntPlayer" class="Taunt">
        Player Taunt

    </div>
    <div id="PlayTauntTeam" class="Taunt">
        Taunt the Team
    </div>

</asp:Content>
