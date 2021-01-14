// ==UserScript==
// @name     Block YouTube
// @author   Besnn
// @version  1
// @icon     https://external-content.duckduckgo.com/ip3/stopots.com.ico
// @match    *://www.youtube.com/*
// @grant    none
// ==/UserScript==

var imageURL = window.location.toString();

window.addEventListener('load', function() {
  if (!window.location.href.includes("noYouTube4u")) {
    window.location.href = "noYouTube4u";
  }
	}, false);
