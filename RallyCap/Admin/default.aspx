<%@ Page Title="" Language="C#" MasterPageFile="admin.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="RallyCap.Admin._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                $('#tauntButton').click(function () {
                    journeyHub.client.sendMessage = function (message) {
                        showOrUpdateSuccessMessage(message, false);
                    };
                    // When the cutton is clicked, call the method DoLongOperation defined in the Hub
                    journeyHub.server.taunt(document.getElementById("lstTaunt").value);
                });

                $('#StartGameNow').click(function () {
                  
                    journeyHub.server.startGameNow();
                    // When the cutton is clicked, call the method DoLongOperation defined in the Hub
                    
                });
            });
        });


    </script>

        <div style="margin-top: 100px;">
    <select name="lstTaunt" id="lstTaunt">      
        <option value="Team">Taunt Team</option>
        <option value="Player">Taunt Player</option>        
    </select>   
        <input type="button" id="tauntButton" value="Send Taunt" />
    </div>

    <input type="button" id="StartGameNow" value="Start Game Now" />

     <script type="text/javascript">
        // Helper code that updates the noty notification bar
        var n;
        function showOrUpdateSuccessMessage(message, timeout) {
            if (n == null) {
                n = noty({ text: message, type: 'success', timeout: timeout, maxVisible: 1 });
            }
            else {
                n.setText(message);
            }
        }
    </script>
</asp:Content>
