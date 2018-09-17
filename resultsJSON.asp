<!--#include file="_data/results-vbscript.asp"-->
{
  "lastUpdated": "<%=now %>",
  "votersTotal": <%=city_voters %>,
  "votersHeardFrom": <%=ifblank(dataFileB.Item("VHF"), -1) %>,
  "races": {
    "mayor": {
      "raceTitle": "Mayor - City Wide",
      "pollsTotal": <%=city_polls %>,
      "pollsReporting": <%=ifblank(dataFileB.Item("VSC"), -1) %>,
      "positionsAvailable": 1,
      "isDown": <%=lcase(city_down) %>,
      "results": [
        <% if (not city_down) then %>
        {
          "candidate": "<%=replace(dataFileB.Item("MC1"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("MV1"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileB.Item("MC2"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("MV2"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileB.Item("MC3"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("MV3"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileB.Item("MC4"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("MV4"), -1) %>
        }
        <% end if %>
      ]
    },
    "mayor_ward1": {
      "raceTitle": "Mayor - Ward 1",
      "pollsTotal": <%=ward1_polls %>,
      "pollsReporting": <%=ifblank(dataFileB.Item("M1R"), -1) %>,
      "positionsAvailable": 0,
      "isDown": <%=lcase(city_down) %>,
      "results": [
        <% if (not city_down) then %>
        {
          "candidate": "<%=replace(dataFileB.Item("M1C01"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("M1V01"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileB.Item("M1C02"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("M1V02"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileB.Item("M1C03"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("M1V03"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileB.Item("M1C04"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("M1V04"), -1) %>
        }
        <% end if %>
      ]
    },
    "mayor_ward2": {
      "raceTitle": "Mayor - Ward 2",
      "pollsTotal": <%=ward2_polls %>,
      "pollsReporting": <%=ifblank(dataFileB.Item("M2R"), -1) %>,
      "positionsAvailable": 0,
      "isDown": <%=lcase(city_down) %>,
      "results": [
        <% if (not city_down) then %>
        {
          "candidate": "<%=replace(dataFileB.Item("M2C01"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("M2V01"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileB.Item("M2C02"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("M2V02"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileB.Item("M2C03"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("M2V03"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileB.Item("M2C04"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("M2V04"), -1) %>
        }
        <% end if %>
      ]
    },
    "mayor_ward3": {
      "raceTitle": "Mayor - Ward 3",
      "pollsTotal": <%=ward3_polls %>,
      "pollsReporting": <%=ifblank(dataFileB.Item("M3R"), -1) %>,
      "positionsAvailable": 0,
      "isDown": <%=lcase(city_down) %>,
      "results": [
        <% if (not city_down) then %>
        {
          "candidate": "<%=replace(dataFileB.Item("M3C01"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("M3V01"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileB.Item("M3C02"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("M3V02"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileB.Item("M3C03"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("M3V03"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileB.Item("M3C04"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("M3V04"), -1) %>
        }
        <% end if %>
      ]
    },
    "mayor_ward4": {
      "raceTitle": "Mayor - Ward 4",
      "pollsTotal": <%=ward4_polls %>,
      "pollsReporting": <%=ifblank(dataFileB.Item("M4R"), -1) %>,
      "positionsAvailable": 0,
      "isDown": <%=lcase(city_down) %>,
      "results": [
        <% if (not city_down) then %>
        {
          "candidate": "<%=replace(dataFileB.Item("M4C01"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("M4V01"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileB.Item("M4C02"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("M4V02"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileB.Item("M4C03"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("M4V03"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileB.Item("M4C04"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("M4V04"), -1) %>
        }
        <% end if %>
      ]
    },
    "mayor_ward5": {
      "raceTitle": "Mayor - Ward 5",
      "pollsTotal": <%=ward5_polls %>,
      "pollsReporting": <%=ifblank(dataFileB.Item("M5R"), -1) %>,
      "positionsAvailable": 0,
      "isDown": <%=lcase(city_down) %>,
      "results": [
        <% if (not city_down) then %>
        {
          "candidate": "<%=replace(dataFileB.Item("M5C01"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("M5V01"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileB.Item("M5C02"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("M5V02"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileB.Item("M5C03"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("M5V03"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileB.Item("M5C04"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("M5V04"), -1) %>
        }
        <% end if %>
      ]
    },
    "ward1": {
      "raceTitle": "Councillor - Ward 1",
      "pollsTotal": <%=ward1_polls %>,
      "pollsReporting": <%=ifblank(dataFileB.Item("W1R"), -1) %>,
      "positionsAvailable": 2,
      "isDown": <%=lcase(ward1_down) %>,
      "results": [
        <% if (not ward1_down) then %>
        {
          "candidate": "<%=replace(replace(dataFileB.Item("W1C01"), "McCleaveKennedy", "McCleave-Kennedy"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("W1V01"), -1) %>
        }, {
          "candidate": "<%=replace(replace(dataFileB.Item("W1C02"), "McCleaveKennedy", "McCleave-Kennedy"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("W1V02"), -1) %>
        }, {
          "candidate": "<%=replace(replace(dataFileB.Item("W1C03"), "McCleaveKennedy", "McCleave-Kennedy"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("W1V03"), -1) %>
        }, {
          "candidate": "<%=replace(replace(dataFileB.Item("W1C04"), "McCleaveKennedy", "McCleave-Kennedy"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("W1V04"), -1) %>
        }, {
          "candidate": "<%=replace(replace(dataFileB.Item("W1C05"), "McCleaveKennedy", "McCleave-Kennedy"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("W1V05"), -1) %>
        }
        <% end if %>
      ]
    },
    "ward2": {
      "raceTitle": "Councillor - Ward 2",
      "pollsTotal": <%=ward2_polls %>,
      "pollsReporting": <%=ifblank(dataFileB.Item("W2R"), -1) %>,
      "positionsAvailable": 2,
      "isDown": <%=lcase(ward2_down) %>,
      "results": [
        <% if (not ward2_down) then %>
        {
          "candidate": "<%=replace(dataFileB.Item("W2C01"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("W2V01"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileB.Item("W2C02"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("W2V02"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileB.Item("W2C03"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("W2V03"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileB.Item("W2C04"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("W2V04"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileB.Item("W2C05"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("W2V05"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileB.Item("W2C06"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("W2V06"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileB.Item("W2C07"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("W2V07"), -1) %>
        }
        <% end if %>
      ]
    },
    "ward3": {
      "raceTitle": "Councillor - Ward 3",
      "pollsTotal": <%=ward3_polls %>,
      "pollsReporting": <%=ifblank(dataFileB.Item("W3R"), -1) %>,
      "positionsAvailable": 2,
      "isDown": <%=lcase(ward3_down) %>,
      "results": [
        <% if (not ward3_down) then %>
        {
          "candidate": "<%=replace(dataFileB.Item("W3C01"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("W3V01"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileB.Item("W3C02"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("W3V02"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileB.Item("W3C03"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("W3V03"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileB.Item("W3C04"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("W3V04"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileB.Item("W3C05"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("W3V05"), -1) %>
        }
        <% end if %>
      ]
    },
    "ward4": {
      "raceTitle": "Councillor - Ward 4",
      "pollsTotal": <%=ward4_polls %>,
      "pollsReporting": <%=ifblank(dataFileB.Item("W4R"), -1) %>,
      "positionsAvailable": 2,
      "isDown": <%=lcase(ward4_down) %>,
      "results": [
        <% if (not ward4_down) then %>
        {
          "candidate": "<%=replace(dataFileB.Item("W4C01"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("W4V01"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileB.Item("W4C02"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("W4V02"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileB.Item("W4C03"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("W4V03"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileB.Item("W4C04"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("W4V04"), -1) %>
        }
        <% end if %>
      ]
    },
    "ward5": {
      "raceTitle": "Councillor - Ward 5",
      "pollsTotal": <%=ward5_polls %>,
      "pollsReporting": <%=ifblank(dataFileB.Item("W5R"), -1) %>,
      "positionsAvailable": 2,
      "isDown": <%=lcase(ward5_down) %>,
      "results": [
        <% if (not ward5_down) then %>
        {
          "candidate": "<%=replace(dataFileB.Item("W5C01"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("W5V01"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileB.Item("W5C02"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("W5V02"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileB.Item("W5C03"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("W5V03"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileB.Item("W5C04"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("W5V04"), -1) %>
        }
        <% end if %>
      ]
    },
    "adsb_ward1": {
      "raceTitle": "Algoma District School Board - Ward 1",
      "pollsTotal": <%=ward1_polls %>,
      "pollsReporting": <%=ifblank(dataFileB.Item("B1R"), -1) %>,
      "positionsAvailable": 1,
      "isDown": false,
      "results": [
        {
          "candidate": "<%=replace(dataFileB.Item("B1C01"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("B1V01"), -1) %>
        }
      ]
    },
    "adsb_ward2": {
      "raceTitle": "Algoma District School Board - Ward 2",
      "pollsTotal": <%=ward2_polls %>,
      "pollsReporting": <%=ifblank(dataFileB.Item("B2R"), -1) %>,
      "positionsAvailable": 1,
      "isDown": <%=lcase(ward2_down) %>,
      "results": [
        <% if (not ward2_down) then %>
        {
          "candidate": "<%=replace(dataFileB.Item("B2C01"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("B2V01"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileB.Item("B2C02"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("B2V02"), -1) %>
        }
        <% end if %>
      ]
    },
    "adsb_ward3": {
      "raceTitle": "Algoma District School Board - Ward 3",
      "pollsTotal": <%=ward3_polls %>,
      "pollsReporting": <%=ifblank(dataFileB.Item("B3R"), -1) %>,
      "positionsAvailable": 1,
      "isDown": <%=lcase(ward3_down) %>,
      "results": [
        <% if (not ward3_down) then %>
        {
          "candidate": "<%=replace(dataFileB.Item("B3C01"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("B3V01"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileB.Item("B3C02"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("B3V02"), -1) %>
        }
        <% end if %>
      ]
    },
    "adsb_ward4": {
      "raceTitle": "Algoma District School Board - Ward 4",
      "pollsTotal": <%=ward4_polls %>,
      "pollsReporting": <%=ifblank(dataFileB.Item("B4R"), -1) %>,
      "positionsAvailable": 1,
      "isDown": <%=lcase(ward4_down) %>,
      "results": [
        <% if (not ward4_down) then %>
        {
          "candidate": "<%=replace(dataFileB.Item("B4C01"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("B4V01"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileB.Item("B4C02"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("B4V02"), -1) %>
        }
        <% end if %>
      ]
    },
    "adsb_ward5": {
      "raceTitle": "Algoma District School Board - Ward 5",
      "pollsTotal": <%=ward5_polls %>,
      "pollsReporting": <%=ifblank(dataFileB.Item("B5R"), -1) %>,
      "positionsAvailable": 1,
      "isDown": <%=lcase(ward5_down) %>,
      "results": [
        <% if (not ward5_down) then %>
        {
          "candidate": "<%=replace(dataFileB.Item("B5C01"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("B5V01"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileB.Item("B5C02"), """", "\""") %>",
          "votes": <%=ifblank(dataFileB.Item("B5V02"), -1) %>
        }
        <% end if %>
      ]
    },
    "hscdsb": {
      "raceTitle": "Huron-Superior Catholic School Board",
      "pollsTotal": <%=city_polls %>,
      "pollsReporting": <%=ifblank(dataFileA.Item("S1R"), -1) %>,
      "positionsAvailable": 6,
      "isDown": <%=lcase(city_down) %>,
      "results": [
        <% if (not city_down) then %>
        {
          "candidate": "<%=replace(dataFileA.Item("SC01"), """", "\""") %>",
          "votes": <%=ifblank(dataFileA.Item("SV01"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileA.Item("SC02"), """", "\""") %>",
          "votes": <%=ifblank(dataFileA.Item("SV02"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileA.Item("SC03"), """", "\""") %>",
          "votes": <%=ifblank(dataFileA.Item("SV03"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileA.Item("SC04"), """", "\""") %>",
          "votes": <%=ifblank(dataFileA.Item("SV04"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileA.Item("SC05"), """", "\""") %>",
          "votes": <%=ifblank(dataFileA.Item("SV05"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileA.Item("SC06"), """", "\""") %>",
          "votes": <%=ifblank(dataFileA.Item("SV06"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileA.Item("SC07"), """", "\""") %>",
          "votes": <%=ifblank(dataFileA.Item("SV07"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileA.Item("SC08"), """", "\""") %>",
          "votes": <%=ifblank(dataFileA.Item("SV08"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileA.Item("SC09"), """", "\""") %>",
          "votes": <%=ifblank(dataFileA.Item("SV09"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileA.Item("SC10"), """", "\""") %>",
          "votes": <%=ifblank(dataFileA.Item("SV10"), -1) %>
        }
        <% end if %>
      ]
    },
    "cscno": {
      "raceTitle": "Conseil scolaire catholique du Nouvel-Ontario",
      "pollsTotal": <%=city_polls %>,
      "pollsReporting": 0,
      "positionsAvailable": 1,
      "isDown": false,
      "results": [
        {
          "candidate": "Salituri",
          "votes": 0
        }
      ]
    },
    "cspgno": {
      "raceTitle": "Conseil scolaire public du Grand Nord de L'Ontario",
      "pollsTotal": <%=city_polls %>,
      "pollsReporting": <%=ifblank(dataFileA.Item("F2R"), -1) %>,
      "positionsAvailable": 1,
      "isDown": <%=lcase(city_down) %>,
      "results": [
        <% if (not city_down) then %>
        {
          "candidate": "<%=replace(dataFileA.Item("FC01"), """", "\""") %>",
          "votes": <%=ifblank(dataFileA.Item("FV01"), -1) %>
        }, {
          "candidate": "<%=replace(dataFileA.Item("FC02"), """", "\""") %>",
          "votes": <%=ifblank(dataFileA.Item("FV02"), -1) %>
        }
        <% end if %>
      ]
    }
  }
}
