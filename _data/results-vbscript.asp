<%
  response.expires = 1
  response.contentType = "application/json"

  ' down properties
  ' if a ward is having problems like a power outage, set the corresponding flag to true
  ' doing so will disable the release of results

  ward1_down = false
  ward2_down = false
  ward3_down = false
  ward4_down = false
  ward5_down = false
  unorganized_down = false

  city_down = cbool(ward1_down or ward2_down or ward3_down or ward4_down or ward5_down)

  ' number of polls'
  ' note that 3 additional polls are added to account for advanced polling'

  ward1_polls = 49 + 3
  ward2_polls = 41 + 3
  ward3_polls = 42 + 3
  ward4_polls = 40 + 3
  ward5_polls = 34 + 3

  city_polls = ward1_polls + ward2_polls + ward3_polls + ward4_polls + ward5_polls

  ' 2 additional polls added for outlying areas'
  ' Sault North, Prince'
  adsb_unorganized_polls = 2

  ' 6 additional polls added for outlying areas'
  ' Sault North, Laird, Tarbutt, Johnson, MacDonald Meredith, Prince'
  hscdsb_polls = city_polls + 6

  ' 2 additional polls added for outlying areas'
  ' Sault North, Prince'
  cspgno_polls = city_polls + 2

  ' number of voters'
  city_voters = 55261

  '---'

  dim dataFileA
	set dataFileA = getDictionary("EL570D1O")
	'set dataFileA = getDictionary("EL570D1O-init")

	dim dataFileB
	set dataFileB = getDictionary("EL580D1O")
	'set dataFileB = getDictionary("EL580D1O-init")

  function getDictionary (fileName)

    fileName = "_data/" & fileName ' file to read
    Const ForReading = 1
    Const TristateUseDefault = -2, TristateTrue = -1, TristateFalse = 0

    ' Create a filesystem object
    Dim FSO
    set FSO = server.createObject("Scripting.FileSystemObject")

    ' Map the logical path to the physical system path
    Dim Filepath
    Filepath = Server.MapPath(Filename)

    Dim objDictionary
    Set objDictionary = CreateObject("Scripting.Dictionary")

    if FSO.FileExists(Filepath) Then

      ' Get a handle to the file
      Dim file
      set file = FSO.GetFile(Filepath)

      ' Open the file
      Dim TextStream
      Set TextStream = file.OpenAsTextStream(ForReading, TristateUseDefault)

      ' Read the file line by line
      Do While Not TextStream.AtEndOfStream
        Dim Line
        Line = TextStream.readline

        ' Do something with "Line"
        dim variableRecord
        variableRecord = split(line,"|")

        if (ubound(variableRecord) = 2) then
          objDictionary.add trim(variableRecord(0)), trim(variableRecord(1))
        end if
      Loop

      Set TextStream = nothing

    End If

    Set FSO = nothing

    set getDictionary = objDictionary

  end function


  function ifBlank (valueToCheck, valueIfBlank)

    if (isnull(valueToCheck) or valueToCheck = "") then
      ifBlank = valueIfBlank
    else
      ifBlank = valueToCheck
    end if

  end function
%>
