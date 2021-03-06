*The following information is for developers who wish to build their own election results website.*

# Election Results JSON File

On election night, our in-house election system will regularly export
*unofficial election results* as flat data files to our web servers.
The files are then converted to a web friendly format.
The format of choice is JSON.

## Guidelines for Usage

Creating your own results website in more than welcome.
We do ask that you follow some usage guidelines.

- **Please, please, please, familiarize yourself with the results file prior to election night!**
  It may be difficult to offer "understanding support" on election night.

- If your results page will refresh the data regularly, wait at least one minute between requests.
  New data only arrives at the web servers every minute, so more frequent refreshes
  only increases the load on the results server.

- If possible, cache a copy of the results file on your own web server,
  and serve that copy to your users.

## Where's the file?

Real-time election night results can be found at the following address.

**Live links no longer active**

## Understanding the JSON

The `resultsJSON.asp` file contains the following properties.

| Property          | Data Type | Description                                                                |
| ----------------- | --------- | -------------------------------------------------------------------------- |
| `lastUpdated`     | String    | The time the results.asp file was generated.  Helpful for debugging.       |
| `votersTotal`     | Number    | The number of voters eligible to vote.                                     |
| `votersHeardFrom` | Number    | The number of voters who casted ballots.                                   |
| `isDown`          | Boolean   | In the event of a reporting disruption, it may be necessary to withhold results from a particular race. If that is the case, `isDown` will be set to `true` and the `results` Array will be empty.  |
| `races`           | Object    | The details for each race, including the mayor's race broken down by ward. |

Each `race` Object contains the following properties.

| Property             | Data Type | Description                                                              |
| -------------------- | --------- | ------------------------------------------------------------------------ |
| `raceTitle`          | String    | A short, human-readable title for the race.                              |
| `pollsTotal`         | Number    | The number of polls casting votes in the race.                           |
| `pollsReporting`     | Number    | The number of polls that have reported their results.                    |
| `positionsAvailable` | Number    | The number of positions available within the race.                       |
| `results`            | Array     | The candidates in descending order by the number of votes they received. |

Each `result` Object contains the following properties.

| Property    | Data Type | Description                                     |
| ------------| --------- | ----------------------------------------------- |
| `candidate` | String    | The last name of the candidate.                 |
| `votes`     | Number    | The number of votes the candidate has received. |

## Notes

- A race is considered finished when `pollsTotal === pollsReporting`.

- The order of the candidates within the results array will change as results come in
  to maintain descending order by votes.

- A race can be considered acclaimed if `positionsAvailable <= results.length`.
  No votes are cast on acclaimed races.

- You can calculate Overall Voter Turnout as `votersHeardFrom / votersTotal`.

## Are there samples available?

To assist with testing, four mock results files are available.
Candidate names have been changed to avoid showing favouritism,
but are consistent across the four files.

- [resultsJSON-0-start.json](samples/resultsJSON-0-start.json)<br />
  The beginning of the evening, before any votes have been reported.

- [resultsJSON-1-halfWay.json](samples/resultsJSON-1-halfWay.json)<br />
  Roughly half of the polls have reported their counts.

- [resultsJSON-2-ward2down.json](samples/resultsJSON-2-ward2down.json)<br />
  Uh oh!  There's a problem communicating with a Ward 2 polling station.
  All results from Ward 2 are withheld.

- [resultsJSON-3-complete.json](samples/resultsJSON-3-complete.json)<br />
  All of the polling stations have reported their counts.
  The election is over.
