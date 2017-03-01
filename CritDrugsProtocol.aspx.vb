Imports System.Data
Imports System.Data.SqlClient
Partial Class CritDrugsProtocol
    Inherits System.Web.UI.Page

    Private mBase As New clsBase


    Private Function GetDrugTableHTML(ByVal dt As DataTable) As String
        Dim sb As New StringBuilder
        Dim dr As DataRow
        Dim strConc As String
        Dim strDosing As String
        Dim strDetails As String
        Dim i As Integer
        Dim strTDD As String = "<td class=" & Chr(34) & "vertical-top text-success" & Chr(34) & "><b>*</b></td>"
        Dim strTD As String = "<td class=" & Chr(34) & "vertical-top" & Chr(34) & ">*</td>"
        'sb.AppendLine("<div class=" & Chr(34) & "ibox-content" & Chr(34) & ">")
        'sb.AppendLine("<div class=" & Chr(34) & "table-responsive" & Chr(34) & ">")
        sb.AppendLine("<table id=" & Chr(34) & "Drugs" & Chr(34) & " class=" & Chr(34) & "display" & Chr(34) & ">")
        sb.AppendLine("<thead>") 'thead
        sb.AppendLine("<tr>") 'tr
        sb.AppendLine("<th>Drug Name</th>")
        sb.AppendLine("<th>Concentration</th>")
        sb.AppendLine("<th>Dosing</th>")
        sb.AppendLine("<th>Class</th>")
        sb.AppendLine("<th>Details</th>")
        sb.AppendLine("</tr>") 'tr
        sb.AppendLine("</thead>") 'thead
        sb.AppendLine("<tbody>") 'thead

        'llop table and build table content
        For Each dr In dt.Rows
            strConc = "" & dr("conc")
            strDosing = "" & dr("Dosing")
            strDetails = "" & dr("Comments")
            strConc = Replace(strConc, vbCrLf, "<br>")
            strDosing = Replace(strDosing, vbCrLf, "<br>")
            strDetails = Replace(strDetails, vbCrLf, "<br>")

            '   i = InStr(strDetails, vbCrLf)
            sb.AppendLine("<tr>") 'tr

            sb.AppendLine(Replace(strTDD, "*", "" & dr("Drug")))
            sb.AppendLine(Replace(strTD, "*", strConc))
            sb.AppendLine(Replace(strTD, "*", strDosing))
            sb.AppendLine(Replace(strTD, "*", "" & dr("Class")))
            sb.AppendLine(Replace(strTD, "*", strDetails))

            'sb.AppendLine("<td class='align-top text-success'><h5>" & dr("Drug") & "</h5></td>")
            'sb.AppendLine("<td class='align-top'>" & strConc & "</td>")
            'sb.AppendLine("<td class='align-top'>" & strDosing & "</td>")
            'sb.AppendLine("<td class='align-top'>" & dr("Class") & "</td>")
            'sb.AppendLine("<td class='align-top'>" & strDetails & "</td>")
            sb.AppendLine("</tr>") 'tr

        Next
        sb.AppendLine("</tbody>") 'thead

        sb.AppendLine("</table>")
        'sb.AppendLine("</div>")
        'sb.AppendLine("</div>")

        Return sb.ToString
    End Function
    Private Sub LoadTable()
        Try
            Dim dt As DataTable = mBase.GetTable_DrugInfusionProtocol("")
            CritCareDrugsDiv.InnerHtml = GetDrugTableHTML(dt)

        Catch ex As Exception
            lblErr.Text = ex.Message
        End Try


        'uspDrugsCritCare
    End Sub

    Private Sub DRUGS_CritCareDrugs_Load(sender As Object, e As EventArgs) Handles Me.Load
        LoadTable()
    End Sub
End Class


