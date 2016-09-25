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

var notyInstanceVariable;
function showMessageAtTopOfScreen(message, timeout) {
    if (notyInstanceVariable == null) {
        notyInstanceVariable = noty({ text: message, type: 'success', timeout: timeout, maxVisible: 1 });
    }
    else {
        notyInstanceVariable.setText(message);
    }
}
function ShowContent(content) {
    var idToShow = content.replace("||", "");
                
    if (content.includes("CountDown")) {
        var seconds = content.split("||")[1];
        window.status = seconds;
        var minutes = parseInt(seconds / 60)
        seconds = seconds - (minutes * 60);
        seconds = ("0" + seconds);
        seconds = seconds.substr(seconds.length -2);
        showMessageAtTopOfScreen("Game Starts in " + minutes + ":" + seconds)
    }
    else if (content.includes("Taunt")) {
        $.noty.closeAll();
        $(".Taunt").each(function () {
            if (this.id == content.replace("||", "")) {
                this.style.display = "block"
            }
        });
    }
    else if (content.includes("Chant")){
        $(".Chant").each(function () {
            if (this.id == content.replace("||", "")) {
                this.style.display = "block"
            }
        });
    }
    else
    {
        $.noty.closeAll();
        showMessageAtTopOfScreen(content)
    }
}

function HideAllContent() {
    $(".Taunt").each(function () {
        this.style.display = "none"
    });
    $(".Chant").each(function () {
        this.style.display = "none"
    });
}