Imports System.Data
Imports System.Data.SqlClient
Partial Class DRUGS_DrugProfile
    Inherits System.Web.UI.Page
    Private mBase As New clsBase

    Protected Function GetPageName() As String
        Dim MyPage As String = System.IO.Path.GetFileName(Page.AppRelativeVirtualPath.ToString).ToString
        Return MyPage
    End Function

    Private Sub DisplayDrugProfile()
        Dim strDrugGen As String = ""
        Dim strQS As String = Request.QueryString("ID")
        Dim aryQS As String() ' = strQ.Split("-")
        Dim strTable As String = ""

        Try
            aryQS = strQS.Split("-")
            If aryQS.Length <> 2 Then
                lblErr.Text = "Invalid Record Identifier"
                Exit Sub
            End If
            strDrugGen = aryQS(1)
            strDrugGen = Replace(strDrugGen, "_", " ")
            strTable = aryQS(0)
            Select Case strTable
                Case "IP"
                    Call BuildPage_IP(strDrugGen)
                Case "CC"
                    Call BuildPage_CC(strDrugGen)
                Case Else
                    lblErr.Text = "Invalid Table Parameter"
                    Exit Sub
            End Select

        Catch ex As Exception
            lblErr.Text = "Invalid parameter"
        End Try
    End Sub
    Private Sub BuildPage_IP(ByVal strDrugGen As String)

        Try
            Dim dr As DataRow

            Dim strQS As String = Request.QueryString("ID")
            Dim strTable As String = ""
            Dim strDrugName As String
            Dim strDrugGenName As String
            Dim strDrugClass As String
            Dim strDosing As String
            Dim strDetails As String
            Dim strDoseChart As String
            Dim strConc As String
            Dim strUses As String
            Dim strEffects As String
            Dim strContras As String

            Dim dt As DataTable = mBase.GetTable_DrugInfusionProtocol(strDrugGen)
            dr = dt.Rows(0)
            strDrugName = "" & dr("Drug")
            If InStr(strDrugName, "(") > 0 Then
                strDrugName = "<b>" & Replace(strDrugName, "(", "<b/><br/>(")
            Else
                strDrugName = "<b>" & strDrugName & "<b/>"
            End If

            ' 
            strDrugGenName = "" & dr("DGen")
            strDrugClass = "" & dr("Class")
            strDosing = "" & dr("Dosing")
            strDetails = "" & dr("Comments")
            strConc = "" & dr("Conc")
            strDoseChart = "" & dr("DoseChart")
            strUses = "" & dr("Uses")
            strEffects = "" & dr("Effect")
            strContras = "" & dr("Contras")

            'lblTitle.Text = strDrugGen
            'lblClassDetail.Text = strDrugClass
            lblDrugGen.Text = "<h1>" & strDrugName & "</h1>"

            lblConc.Text = "<h3>" & Replace(strConc, vbCrLf, "<br/>") & "</h3>"
            lblClass.Text = "<h4>" & Replace(strDrugClass, vbCrLf, "<br/>") & "</h4>"
            lblEffect.Text = Replace(strEffects, vbCrLf, "<br/>")
            lblContras.Text = Replace(strContras, vbCrLf, "<br/>")
            lblDosing.Text = Replace(strDosing, vbCrLf, "<br/>")
            lblDetails.Text = Replace(strDetails, vbCrLf, "<br/>")
            lblUses.Text = Replace(strUses, vbCrLf, "<br/>")
            '" onclick=" & Chr(34) & "openPopup('/DoseCharts/Dosage_" & strDoseChart & ".pdf','Dose Chart',800,800)"
            'Dim strDoseChartButton As String = "<button type=" & Chr(34) & "button  onclick=" & Chr(34) & "openPopup('/DoseCharts/Dosage_" & strDoseChart & ".pdf','Dose Chart',800,800)" & Chr(34) & " class=" & Chr(34) & "btn btn-outline btn-primary" & Chr(34) & "Dose Chart</button>"
            'div_title_right.InnerHtml = strDoseChartButton

            'vertical_timeline_dosing.InnerHtml = BuildColumn("Dosing", strDosing)
            'vertical_timeline_details.InnerHtml = BuildColumn("Detail", strDetails)
        Catch ex As Exception
            lblErr.Text = ex.Message
        End Try
    End Sub
    Private Sub BuildPage_CC(ByVal strDrugGen As String)

    End Sub
    Private Function BuildColumn(ByVal strField As String, ByVal s As String) As String
        Dim iColon As Integer = 0
        Dim strTitle As String
        Dim sb As New StringBuilder
        Dim sAry As String() = s.Split(vbCrLf & vbCr)
        For Each seg As String In sAry ' Each of these should go into a segment
            Select Case strField
                Case "Dosing"
                    iColon = InStr(seg, ":")
                    If iColon > 0 Then
                        strTitle = Left(seg, iColon)
                        seg = Mid(seg, iColon + 1)
                        sb.AppendLine(GetSegment(strField, strTitle, seg))
                    End If

                Case "Detail"
                    sb.AppendLine(GetSegment(strField, "", seg))
            End Select

        Next
        Return sb.ToString


    End Function
    Private Function GetSegment(ByVal strField As String, ByVal sTitle As String, ByVal sBody As String) As String
        Dim sTitle2 As String = sTitle.ToLower
        Dim sb As New StringBuilder
        Dim sIcon As String = GetIcon("Gen")

        Dim blnBolus As Boolean '= losBOlus.Contains("S")
        Dim blnInfuse As Boolean

        Select Case strField

            Case "Dosing"
                sTitle2 = Replace(sTitle, ":", "")

                If sTitle <> "" Then

                    Dim aryBolus() As String = "bolus|loading dose".Split("|")
                    Dim aryInfuse() As String = "loading dose|infusion|starting dose".Split("|")
                    Dim losBOlus As New List(Of String)(aryBolus)
                    Dim losInfuse As New List(Of String)(aryInfuse)
                    blnBolus = losBOlus.Contains(sTitle2)
                    blnInfuse = losInfuse.Contains(sTitle2)


                    ' sTitle = "<b>" & sTitle & "</b>"
                    If blnBolus Then
                        sIcon = GetIcon("Bolus")
                    ElseIf blnInfuse Then
                        sIcon = GetIcon("Infusion")
                    Else
                        sIcon = GetIcon("Gen")
                    End If
                End If

            Case "Detail"
                Dim blnwarning As Boolean '= strWarning.IsMatch(sBody)
                Dim blnMonitor As Boolean '= strMonitor.IsMatch(sBody)
                Dim blnDoc As Boolean ' = strDoc.IsMatch(sBody
                Dim aryWarning() As String = "caution|warning|do not|always|never| only |must |should be|required|call physician |compatible| discontinue |stop|notify|avoid".Split("|")
                Dim aryMonitor() As String = " MAP | BP | monitor| ECG |check | hr |neuro|assess|maintain".Split("|")
                Dim aryDoc() As String = "document|chart".Split("|")
                Dim losWarning As New List(Of String)(aryWarning)
                Dim losMonitor As New List(Of String)(aryMonitor)
                Dim losDoc As New List(Of String)(aryDoc)

                blnBolus = losWarning.Contains(sTitle2)
                blnInfuse = losMonitor.Contains(sTitle2)
                blnDoc = losDoc.Contains(sTitle2)

                If blnwarning Then
                    sIcon = GetIcon("Warning")
                ElseIf blnMonitor Then
                    sIcon = GetIcon("Monitor")
                ElseIf blnDoc Then
                    sIcon = GetIcon("Doc")
                Else
                    sIcon = GetIcon("Gen")
                End If


        End Select

        sBody = Replace(sBody, vbCrLf, "<br/>")
        sBody = Replace(sBody, vbLf, "<br/>")

        sb.AppendLine("<div class=" & Chr(34) & "vertical-timeline-block" & Chr(34) & ">")
        sb.AppendLine("    <div class=" & Chr(34) & "vertical-timeline-icon navy-bg" & Chr(34) & ">")
        sb.AppendLine("    " & sIcon)
        sb.AppendLine("    </div>")
        sb.AppendLine("    <div class=" & Chr(34) & "vertical-timeline-content" & Chr(34) & ">")
        If sTitle <> "" Then
            sb.AppendLine("        <h2>" & sTitle & "</h2>")
        End If
        sb.AppendLine("        <p>" & sBody & "</p>")
        sb.AppendLine("    </div>")
        sb.AppendLine("</div>")
        sb.Replace(vbCrLf, "<br/>")
        Return sb.ToString

    End Function

    Private Function GetIcon(ByVal sEgmentType As String) As String
        '<i class="fa fa-briefcase"></i>
        '<span class="fa fa-briefcase"></span>
        ' "<span class=" & Chr(34) & "fa fa-plus-square" & Chr(34) & "></span>"

        Select Case sEgmentType
            Case "Conc"
                Return "<span class=" & Chr(34) & "fa fa-briefcase" & Chr(34) & "></span>"

            Case "Bolus"
                Return "fa fa-bolt"
            Case "Infusion"
                Return "<span class=" & Chr(34) & "fa fa-refresh fa-spin" & Chr(34) & " style=" & Chr(34) & "font-size:24px;color:red" & Chr(34) & "></span>"
            Case "Monitor"
                Return "<span class=" & Chr(34) & "fa fa-stethoscope" & Chr(34) & "></span>"
            Case "Doc"
                Return "<span class=" & Chr(34) & "fa fa-edit" & Chr(34) & "></span>"
               ' Return " material-icons" & Chr(34) & " style=" & Chr(34) & "font-size:36px" & Chr(34) & ">assignment_turned_in</span"
            Case "Warning"
                'Return "class=" & Chr(34) & "fa fa-warning" & Chr(34) & " style=" & Chr(34) & "font-size:24px;color:red" & Chr(34) & "></span>"
                Return "<span class=" & Chr(34) & "fa fa-warning" & Chr(34) & "style=" & Chr(34) & "font-size:24px;color:red" & Chr(34) & "></span>"
                'Return " material-icons" & Chr(34) & " style=" & Chr(34) & "font-size:24px;color:red" & Chr(34) & ">add_alert</span"
                'Return " material-icons" & Chr(34) & " style=" & Chr(34) & "font-size:24px;color:red" & Chr(34) & ">add_alert</span"
            Case "Gen"
                Return "<span class=" & Chr(34) & "fa fa-plus-square" & Chr(34) & "></span>"

        End Select
    End Function

    Private Sub DRUGS_DrugProfile_Load(sender As Object, e As EventArgs) Handles Me.Load
        Try
            Call DisplayDrugProfile()

        Catch ex As Exception
            lblErr.Text = ex.Message
        End Try
    End Sub
End Class
