/* global window, document */

$(document).ready(function() {

  "use strict";

  // load and refresh the data
  {
    let tableUID = Date.now();

    let resultsJSON = {};

    const currentDate = new Date();
    let isElectionDay = false;

    if (currentDate.getFullYear() === 2018 && currentDate.getMonth() === (10 - 1) && currentDate.getDate() === 22) {
      isElectionDay = true;
    }

    const raceContainerEles = document.getElementsByClassName("raceContainer");

    const fn_updateRaceContainer = function(raceContainerEle) {

      tableUID += 1;

      const tableID = "table-" + tableUID;

      const raceKey = raceContainerEle.getAttribute("data-race");
      const raceJSON = resultsJSON.races[raceKey];

      const raceIsAcclaimed = raceJSON.positionsAvailable === raceJSON.results.length;
      const allPollsReported = raceIsAcclaimed || raceJSON.pollsTotal === raceJSON.pollsReporting;

      let cardHTML = "<figcaption class=\"card-body py-2\" role=\"presentation\">" +
        "<h2 class=\"card-title text-center h3 mb-0\" id=\"" + tableID + "_label\"" + (raceKey === "cspgno" || raceKey === "cscno" ? " lang=\"fr\"" : "") + ">" +
        raceJSON.raceTitle +
        "</h2>" +
        "</figcaption>";

      if (raceJSON.isDown) {
        // ward is down
        cardHTML += "<div class=\"card-body\" role=\"alert\">" +
          "<div class=\"alert alert-warning text-center\"><strong>Results Unavailable</strong><br />" +
          "Please stand by." +
          "</div>" +
          "</div>";
      } else {
        cardHTML += "<table class=\"table table-sm table-hover mb-0\" aria-labelledby=\"" + tableID + "_label\" aria-describedby=\"" + tableID + "_polls\">" +
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
            "<div class=\"card-footer text-center\" id=\"" + tableID + "_polls\">" +
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

    if (isElectionDay) {
      window.setInterval(fn_getResults, (61 * 1000));
    }
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

    /*
     * Initialize next and previous buttons
     */

    const prevBtnEles = document.getElementsByClassName("tabsContainer--prevBtn");
    let btnIndex;

    for (btnIndex = 0; btnIndex < prevBtnEles.length; btnIndex += 1) {
      prevBtnEles[btnIndex].addEventListener("click", function() {
        const currentTabID = tabsContainer_ele.getElementsByClassName("active")[0].id;
        tabsContainer_ele.querySelector("a[data-next-tab='" + currentTabID + "']").click();
      });
    }

    const nextBtnEles = document.getElementsByClassName("tabsContainer--nextBtn");
    for (btnIndex = 0; btnIndex < nextBtnEles.length; btnIndex += 1) {
      nextBtnEles[btnIndex].addEventListener("click", function() {
        const nextTabID = tabsContainer_ele.getElementsByClassName("active")[0].getAttribute("data-next-tab");
        document.getElementById(nextTabID).click();
      });
    }

  }
});
