/* global window, document */

$(document).ready(function() {

  "use strict";

  // load and refresh the data
  {
    let resultsJSON = {};

    const raceContainerEles = document.getElementsByClassName("raceContainer");

    const fn_updateRaceContainer = function(raceContainerEle) {

      const raceJSON = resultsJSON.races[raceContainerEle.getAttribute("data-race")];

      const raceIsAcclaimed = raceJSON.positionsAvailable === raceJSON.results.length;
      const allPollsReported = raceIsAcclaimed || raceJSON.pollsTotal === raceJSON.pollsReporting;

      let cardHTML = "<div class=\"card-body py-2\">" +
        "<h2 class=\"card-title text-center h3 mb-0\">" +
        raceJSON.raceTitle +
        "</h2>" +
        "</div>";

      if (raceJSON.results.length === 0) {
        // ward is down
        cardHTML += "<div class=\"card-body\">" +
          "<div class=\"alert alert-warning text-center\"><strong>Results Unavailable</strong><br />" +
          "Please stand by." +
          "</div>" +
          "</div>";
      } else {
        cardHTML += "<table class=\"table table-sm table-hover mb-0\">" +
          "<thead>" +
          "<th>Candidate</th>" +
          "<th class=\"text-right\">Votes</th>" +
          "</thead>" +
          "<tbody>" +
          raceJSON.results.reduce(function(soFar, candidateJSON, candidateIndex) {
            return soFar +
              "<tr" + (raceIsAcclaimed || (allPollsReported && candidateIndex < raceJSON.positionsAvailable) ? " class=\"table-success\"" : "") + ">" +
              "<td>" + candidateJSON.candidate + "</td>" +
              "<td class=\"text-right\">" +
              (raceIsAcclaimed ?
                "<em>Acclaimed</em>" :
                candidateJSON.votes
              ) +
              "</td>" +
              "</tr>";
          }, "") +
          "</tbody>" +
          "</table>" +
          (raceIsAcclaimed ? "" :
            "<div class=\"card-footer text-center\">" +
            "<small class=\"text-secondary\">" +
            raceJSON.pollsReporting + " of " + raceJSON.pollsTotal + " polls reporting</small>" +
            "</div>");
      }

      raceContainerEle.innerHTML = cardHTML;
    };

    const fn_getResults = function() {

      $.get("resultsJSON.asp", {}, "json")
        .done(function(json) {
          resultsJSON = json;

          let index;
          for (index = 0; index < raceContainerEles.length; index += 1) {
            fn_updateRaceContainer(raceContainerEles[index]);
          }
        })
        .fail(function() {
          try {
            // eslint-disable-next-line no-alert
            window.alert("An error occurred retrieving the results.");
          } catch (e) {
            // ignore
          }

        });
    };

    document.getElementById("siteContainer").style.display = "block";
    fn_getResults();
  }

  // Navigation setup
  {
    const tabsContainer_toggleBtn = document.getElementById("tabsContainer--toggleBtn");
    const tabsContainer_ele = document.getElementById("tabsContainer");

    const fn_hideTabsContainer = function() {
      tabsContainer_ele.classList.add("d-none");
      tabsContainer_toggleBtn.setAttribute("aria-expanded", "false");
    };

    tabsContainer_toggleBtn.addEventListener("click", function() {

      if (tabsContainer_ele.classList.contains("d-none")) {
        // tabs are hidden, make them visible
        tabsContainer_ele.classList.remove("d-none");
        tabsContainer_toggleBtn.setAttribute("aria-expanded", "true");

      } else {
        // tabs are visible, hide them
        fn_hideTabsContainer();
      }
    });

    $("a[data-toggle='tab']", tabsContainer_ele).on("shown.bs.tab", fn_hideTabsContainer);

    document.getElementById("tabsContainer--prevBtn").addEventListener("click", function() {
      const currentTabID = tabsContainer_ele.getElementsByClassName("active")[0].id;
      tabsContainer_ele.querySelector("a[data-next-tab='" + currentTabID + "']").click();
    });

    document.getElementById("tabsContainer--nextBtn").addEventListener("click", function() {
      const nextTabID = tabsContainer_ele.getElementsByClassName("active")[0].getAttribute("data-next-tab");
      document.getElementById(nextTabID).click();
    });
  }
});
