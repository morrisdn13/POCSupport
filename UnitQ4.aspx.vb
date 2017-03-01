Imports System.Web.UI.HtmlControls
Imports System.Data
Imports System.Data.SqlClient

Partial Class UnitQ4
    Inherits System.Web.UI.Page
    Private mBase As New clsBase
    Private mintDeptID As Integer
    Private mstrEmp As String
    Private Sub GetStateVars()
        Dim sHid As String = hidState.Value
        If InStr(sHid, ",") = 0 Then Exit Sub
        Dim aryState As String() = sHid.Split(",")
        mintDeptID = aryState(0)
        mstrEmp = aryState(1)
    End Sub
    Private Sub SetStateVars()
        '======  THese need to be passed to page ===============
        mintDeptID = 3
        mstrEmp = "Dan Morrissey (Nurse)"
        hidState.Value = mintDeptID & "," & mstrEmp
    End Sub

    Private Sub GetHtmlValue()
        Dim hidCtl As HiddenField = hidCtlContainer.FindControl("hid5")
        Dim s As String
        s = hidCtl.Value


    End Sub

    Private Sub UnitQ4_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            Call SetStateVars()
            Call WriteQ()
        Else
            Dim strIDs As String = hidID.Value
            hidID.Value = ""
            Dim aryIDs As String() = Split(strIDs, ",")
            Dim intID As Integer
            For Each s As String In aryIDs
                If IsNumeric(s) Then
                    intID = CInt(s)
                    Call CreatHidCtl(intID, "Recreate")
                End If
            Next

            GetStateVars()
        End If

    End Sub
    Protected Sub UpdateQ()
        Dim aryIDs As New List(Of String)
        Dim strID As String
        'Dim intID As Integer
        For Each hf As HiddenField In hidCtlContainer.Controls
            strID = "" & hf.Value
            If (IsNumeric(strID) And strID <> "0") Then
                aryIDs.Add(hf.Value)
            End If
            hf.Value = "0"
        Next
        If aryIDs.Count > 0 Then
            Call mBase.UnitQUpdateTask(mintDeptID, aryIDs, mstrEmp)
        End If
        hidID.Value = ""
        'Dim strIDs As String = String.Join(",", aryIDs, strEmp)
        'For Each s As String In aryIDs
        '    If IsNumeric(s) Then
        '        intID = CInt(s)
        '        If intID > 0 Then
        '            mBase.UnitQUpdateTask(mintDeptID, aryIDs, mstrEmp)
        '        End If
        '    End If
        'Next


    End Sub
    Private Sub WriteQ()
        Dim strID As String
        Dim intID As Integer
        Dim strReqUser As String
        Dim strRM As String
        Dim strReq As String
        Dim strPriority As String
        Dim strSkill As String
        Dim strStatus As String
        Dim strStamp As String
        Dim strCompUser As String
        Dim strStampComp As String
        Dim datComp As Date
        Dim datStamp As Date
        Dim strETime As String
        Dim tsETime As TimeSpan
        Dim dblEtHrs As Double
        Dim intEtMin As Integer

        Dim sb As New StringBuilder
        Dim sbDone As New StringBuilder
        Dim ds As DataSet = mBase.UnitQ_GetTasks(mintDeptID, "")
        Dim dtOpen As DataTable = ds.Tables(0)
        Dim dtAssigned As DataTable = Nothing
        Select Case ds.Tables.Count
            Case 1
                dtOpen = ds.Tables(0)
            Case 2
                dtOpen = ds.Tables(0)
                dtAssigned = ds.Tables(1)
        End Select
        Dim dr As DataRow
        Dim drAssigned As DataRow
        If ds.Tables.Count = 0 Then
            Call RenderNoData()
        Else
            If Not IsNothing(dtOpen) Then
                sb.AppendLine("                        <h2>CIC Task List</h2>")
                sb.AppendLine("<input type=" & Chr(34) & "button" & Chr(34) & " class=" & Chr(34) & "btn btn-primary btn-rounded btn-xs" & Chr(34) & " value = " & Chr(34) & "New Task" & Chr(34) & " onclick=" & Chr(34) & "openPopup('NewTask.aspx?d=" & mintDeptID & "&e=" & mstrEmp & "','New Task',450,550)" & Chr(34) & " />")
                sb.AppendLine("                        <ul class=" & Chr(34) & "todo-list m-t small-list" & Chr(34) & ">")
                For Each dr In dtOpen.Rows
                    strID = "" & dr("ID")
                    intID = CInt(strID)
                    strReqUser = "" & dr("ReqUser")
                    strCompUser = "" & dr("CompUser")
                    strRM = "" & dr("RM")
                    strReq = "" & dr("Req")
                    strPriority = "" & dr("Priority")
                    strSkill = "" & dr("Skill")
                    strStatus = "" & dr("Status")
                    strStamp = "" & dr("StampReq")
                    If IsDate(strStamp) Then
                        datStamp = CDate(strStamp)
                        strETime = GetEtTIme(strStamp)
                        strETime = Replace(strETime, "-", "")

                        strStamp = Format(datStamp.ToUniversalTime, "hhmm")
                        strStamp = datStamp.ToString("HHmm")
                    Else
                        strStamp = ""
                        strETime = ""
                    End If

                    sb.AppendLine("                            <li>")
                    sb.AppendLine("                                <a href=" & Chr(34) & "#" & Chr(34) & " class=" & Chr(34) & "check-link" & Chr(34) & "><div id=" & Chr(34) & "div" & strID & Chr(34) & " onclick=" & Chr(34) & "updateID(this,'" & strID & "')" & Chr(34) & " runat=" & Chr(34) & "server" & Chr(34) & " class=" & Chr(34) & "fa fa-square-o" & Chr(34) & "></div></a>")
                    Call CreatHidCtl(intID, "Create")
                    sb.AppendLine("                                <span id=" & Chr(34) & "span" & strID & Chr(34) & " class=" & Chr(34) & "m-l-xs text-success" & Chr(34) & "><b>RM " & strRM & "</b> - " & strReq & "</span>")
                    'sb.AppendLine("                                <span id=" & Chr(34) & "spanO" & strID & Chr(34) & " class=" & Chr(34) & "m-l-xs" & Chr(34) & "><b>RM " & strRM & "</b>&nbsp;&nbsp;<span class=" & Chr(34) & "m-l-xs text-success" & Chr(34) & ">" & strReq & "</span>")

                    sb.AppendLine("                                <span class=" & Chr(34) & "pull-right  text-danger" & Chr(34) & ">" & strETime & "</span>")
                    sb.AppendLine("                                <br><i class=" & Chr(34) & "underCheck" & Chr(34) & ">" & strReqUser & " @ " & strStamp & "</i>")

                    sb.AppendLine("                            </li>")
                Next
                sb.AppendLine("                        </ul>")

                If Not IsNothing(dtAssigned) Then
                    sbDone.AppendLine("                        <h3>Completed</h3>")
                    sbDone.AppendLine("                        <ul class=" & Chr(34) & "todo-list m-t small-list" & Chr(34) & ">")
                    For Each dr In dtAssigned.Rows
                        strReqUser = "" & dr("ReqUser")
                        strCompUser = "" & dr("CompUser")
                        strStampComp = "" & dr("StampComp")

                        strRM = "" & dr("RM")
                        strReq = "" & dr("Req")
                        strPriority = "" & dr("Priority")
                        strSkill = "" & dr("Skill")
                        strStatus = "" & dr("Status")
                        strStamp = "" & dr("StampReq")
                        If (IsDate(strStamp)) And (IsDate(strStampComp)) Then
                            datStamp = CDate(strStamp)
                            datComp = CDate(strStampComp)

                            strETime = GetEtTIme(strStamp)
                            strETime = Replace(strETime, "-", "")
                            strStamp = Format(datStamp.ToUniversalTime, "hhmm")
                            strStampComp = Format(datComp.ToUniversalTime, "hhmm")
                            strStampComp = datComp.ToString("HHmm")

                        Else
                            strStamp = ""
                            strETime = ""
                        End If
                        sbDone.AppendLine("                            <li>")
                        'sbDone.AppendLine("                                <div id=" & Chr(34) & "divC" & strID & Chr(34) & " onclick=" & Chr(34) & "updateID(this,'" & strID & "')" & Chr(34) & " class=" & Chr(34) & "fa fa-check-square" & Chr(34) & "></div>")
                        'sbDone.AppendLine("                                <span id=" & Chr(34) & "spanC" & Chr(34) & strID & " class=" & Chr(34) & "m-l-xs  todo-completed" & Chr(34) & ">RM " & strRM & "</b> - " & strReqUser & " <b>" & strReq & "</b><i> (done by " & strCompUser & ")</i></span>")
                        '=============================

                        sbDone.AppendLine("                                <div class=" & Chr(34) & "fa fa-check-square" & Chr(34) & "></div>")
                        sbDone.AppendLine("                                <span class=" & Chr(34) & "m-l-xs  todo-completed" & Chr(34) & "><b>RM " & strRM & "</b> - " & strReq & "</span>")

                        sbDone.AppendLine("                                <div class=" & Chr(34) & "agile-detail" & Chr(34) & ">")
                        sbDone.AppendLine("                                     <span class=" & Chr(34) & "underCheck" & Chr(34) & ">Requested by: <i>" & strReqUser & " at " & strStamp & "</i></span><br>")
                        sbDone.AppendLine("                                     <span class=" & Chr(34) & "underCheck" & Chr(34) & ">Completed by: <i>" & strCompUser & " at " & strStampComp & " (" & strETime & ")</i></span>")
                        sbDone.AppendLine("                                </div>")

                        'sbDone.AppendLine("                                <a href=" & Chr(34) & "#" & Chr(34) & " class=" & Chr(34) & "check-link" & Chr(34) & "><div id=" & Chr(34) & "div" & strID & Chr(34) & " onclick=" & Chr(34) & "updateID(this,'" & strID & "')" & Chr(34) & " runat=" & Chr(34) & "server" & Chr(34) & " class=" & Chr(34) & "fa fa-check-square" & Chr(34) & "></div></a>")
                        'sbDone.AppendLine("                                <span id=" & Chr(34) & "span" & Chr(34) & strID & " class=" & Chr(34) & "m-l-xs  todo-completed" & Chr(34) & ">RM " & strRM & "</b> - " & strReqUser & " <b>" & strReq & "</b><i> (done by " & strCompUser & ")</i></span>")
                        sbDone.AppendLine("                            </li>")
                    Next
                    sbDone.AppendLine("                        </ul>")
                End If
                divQ.InnerHtml = sb.ToString
                divQComp.InnerHtml = sbDone.ToString


            End If

        End If
    End Sub
    Private Function GetEtTIme(ByVal strStamp As String) As String

        Dim datStamp As Date
        Dim strETime As String
        Dim tsETime As TimeSpan

        If IsDate(strStamp) Then
            datStamp = CDate(strStamp)
            tsETime = datStamp - DateTime.Now
            If tsETime.Hours > 0 Then
                strETime = Format(tsETime.Hours, "#0") & " hrs, " & Format(tsETime.Minutes, "#0") & " min"

            Else
                strETime = Format(tsETime.Minutes, "#0") & " min"

            End If
        Else
            strETime = ""
        End If
        Return strETime
    End Function

    Private Sub RenderNoData()
        'display something saying that there are no tasks
    End Sub
    Private Sub CreatHidCtl(ByVal i As Integer, ByVal strOnCreateOrRecreate As String)
        Dim hidCtl As New HiddenField
        If Page.FindControl("hid" & i) Is Nothing Then
            hidCtl.ID = "hid" & i
            hidCtlContainer.Controls.Add(hidCtl)

            'If Not Page.IsPostBack Then
            '    hidID.Value += i & ","
            'End If
        End If
        hidID.Value += i & ","
    End Sub

    Private Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        Call UpdateQ()
        WriteQ()

    End Sub

    Private Sub UnitTaskList_Init(sender As Object, e As EventArgs) Handles Me.Init
        'Dim losIDs As New List(Of String)
        'If hidCtlContainer.Controls.Count = 0 Then Exit Sub
        'For Each hf As HiddenField In hidCtlContainer.Controls
        '    losIDs.Add(hf.Value)
        'Next
        ''Dim strIDs As String = String.Join(",", aryIDs, strEmp)
        'mBase.UnitQUpdateTask(mintDeptID, losIDs, mstrEmp)
        'Call UpdateQ()

    End Sub

    Private Sub UnitQ4_PreInit(sender As Object, e As EventArgs) Handles Me.PreInit
        Dim losIDs As New List(Of String)
        If hidCtlContainer.Controls.Count = 0 Then Exit Sub

    End Sub
End Class
