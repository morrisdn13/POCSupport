Imports System.Data
Imports System.Data.SqlClient

Partial Class LabTubes
    Inherits System.Web.UI.Page

    Private mBase As New clsBase


    Private Function GetLabTubesTableHTML(ByVal dt As DataTable) As String
        Dim sb As New StringBuilder
        Dim dr As DataRow
        sb.AppendLine("<table id=" & Chr(34) & "Labs" & Chr(34) & " class=" & Chr(34) & "display" & Chr(34) & ">")
        sb.AppendLine("<thead>") 'thead
        sb.AppendLine("<tr>") 'tr
        sb.AppendLine("<th></th>")
        sb.AppendLine("<th>Test</th>")
        sb.AppendLine("<th>Tube Color</th>")
        sb.AppendLine("</tr>") 'tr
        sb.AppendLine("</thead>") 'thead
        sb.AppendLine("<tbody>") 'thead

        'llop table and build table content
        For Each dr In dt.Rows
            sb.AppendLine("<tr>") 'tr
            sb.AppendLine(GetColorClass("" & dr("Test"), "" & dr("TubeColor"), "" & dr("Spec")))
            sb.AppendLine("</tr>") 'tr

        Next
        sb.AppendLine("</tbody>") 'thead

        sb.AppendLine("</table>")
        'sb.AppendLine("</div>")
        'sb.AppendLine("</div>")

        Return sb.ToString
    End Function
    Private Function GetColorClass(ByVal sVal As String, ByVal sColor As String, ByVal sDet As String) As String
        '  If sDet <> "" Then sColor += " (" & sDet & ")"
        sColor = sColor.ToLower
        Dim strCOL As String = ""
        Dim strVAL As String = "<td><b>" & sVal & "</b></td>"
        Dim strTUB As String = sColor
        If sDet <> "" Then
            strTUB = sColor & " (" & sDet & ")"
        End If
        strTUB = "<td>" & strTUB & "</td>"
        Dim aryColors As String()
        Dim losCOlors As List(Of String)
        If InStr(sColor, ",") Then
            aryColors = sColor.Split(",")
            losCOlors = aryColors.ToList
            For Each sc As String In losCOlors
                strCOL += "<div class=" & Chr(34) & "full-circle-" & sc.Trim & Chr(34) & "></div>"
            Next
        Else
            strCOL += "<div class=" & Chr(34) & "full-circle-" & sColor.Trim & Chr(34) & "></div>"
        End If
        strCOL = "<td>" & strCOL & "</td>"

        Return strCOL & vbCrLf & strVAL & vbCrLf & strTUB
    End Function
    Private Sub LoadTable()
        Try
            Dim dt As DataTable = mBase.GetTable_LabTubes
            LabTableDiv.InnerHtml = GetLabTubesTableHTML(dt)

        Catch ex As Exception
            lblErr.Text = ex.Message
        End Try


        'uspDrugsCritCare
    End Sub

    Private Sub DRUGS_CritCareDrugs_Load(sender As Object, e As EventArgs) Handles Me.Load
        LoadTable()
    End Sub
End Class
