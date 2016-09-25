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
    var location = window.location + "";

    if (content.includes("CountDown")) {
        document.getElementById("GameTime").style.display = "block";
        var seconds = content.split("||")[1];
        window.status = seconds;
        var location = window.location + "";

        if ((seconds < 180) && (!location.includes("Journeys/Fanzone"))) {
            window.location = "/Journeys/Fanzone";
        }
        var minutes = parseInt(seconds / 60)
        seconds = seconds - (minutes * 60);
        seconds = ("0" + seconds);
        seconds = seconds.substr(seconds.length -2);
        showMessageAtTopOfScreen("Game Starts in " + minutes + ":" + seconds)
    }
    else if (content == "GameStart") {
        document.getElementById("GameTime").style.display = "block";
        if (!location.includes("Journeys/GameDay")) {
            window.location = "/Journeys/GameDay";
        }
    }
    else if (content.includes("Taunt")) {
        $.noty.closeAll();
        document.getElementById("GameTime").style.display = "none";
        $(".Taunt").each(function () {
            if (this.id == content.replace("||", "")) {
                this.style.display = "block"
            }
        });
    }
    else if (content.includes("Chant")) {
        document.getElementById("GameTime").style.display = "none";
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