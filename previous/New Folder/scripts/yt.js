
$(document).ready(function() {
    $('#<%=page_id %>click').attr('class', 'button-selected');
    $('#slides').nvxSlide('previous', 'next', 'thumbs');
    $('#playBtn').click(function() {
        play();
    });
    $('#pauseBtn').click(function() {
        pause();
    });
    $('#muteBtn').click(function() {
        if ($(this).html() == "Mute") {
            mute();
            $(this).html("Unmute");
        }
        else {
            unMute();
            $(this).html("Mute");
        }
    });
});
function onYouTubePlayerReady(playerId) {
    ytplayer = document.getElementById("myytplayer");
    loadNewVideo("Eww-UnAnS_s", 0);
}

function loadNewVideo(id, startSeconds) {
    if (ytplayer) {
        ytplayer.loadVideoById(id, startSeconds);
    }
}

function play() {
    if (ytplayer) {
        ytplayer.playVideo();
    }
}

function pause() {
    if (ytplayer) {
        ytplayer.pauseVideo();
    }
}

function stop() {
    if (ytplayer) {
        ytplayer.stopVideo();
    }
}
function mute() {
    if (ytplayer) {
        ytplayer.mute();
    }
}

function unMute() {
    if (ytplayer) {
        ytplayer.unMute();
    }
}