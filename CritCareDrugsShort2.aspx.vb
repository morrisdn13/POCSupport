Imports System.Data
Imports System.Data.SqlClient

Partial Class CritCareDrugsShort2
    Inherits System.Web.UI.Page

    Private mBase As New clsBase


    Private Function GetDrugTableHTML(ByVal dt As DataTable) As String
        Dim sb As New StringBuilder
        Dim dr As DataRow
        Dim strTDD As String = "<td class=" & Chr(34) & "text-success" & Chr(34) & "><b>*</b></td>"

        'sb.AppendLine("<div class=" & Chr(34) & "ibox-content" & Chr(34) & ">")
        'sb.AppendLine("<div class=" & Chr(34) & "table-responsive" & Chr(34) & ">")
        sb.AppendLine("<table id=" & Chr(34) & "Drugs" & Chr(34) & " class=" & Chr(34) & "display" & Chr(34) & ">")
        sb.AppendLine("<thead>") 'thead
        sb.AppendLine("<tr>") 'tr
        sb.AppendLine("<th>Drug Name</th>")
        sb.AppendLine("<th>Onset</th>")
        sb.AppendLine("<th>Duration</th>")
        sb.AppendLine("<th>Concentration</th>")
        sb.AppendLine("<th>Unit of Measure</th>")
        sb.AppendLine("<th>Class</th>")
        sb.AppendLine("<th>Titration</th>")
        sb.AppendLine("</tr>") 'tr
        sb.AppendLine("</thead>") 'thead
        sb.AppendLine("<tbody>") 'thead

        'llop table and build table content
        For Each dr In dt.Rows
            sb.AppendLine("<tr>") 'tr
            sb.AppendLine(Replace(strTDD, "*", "" & dr("DrugName")))
            'sb.AppendLine("<td>" & dr("DrugName") & "</td>")
            sb.AppendLine("<td>" & dr("Onset") & "</td>")
            sb.AppendLine("<td>" & dr("Duration") & "</td>")
            sb.AppendLine("<td>" & dr("COncentration") & "</td>")
            sb.AppendLine("<td>" & dr("Dosing") & "</td>")
            sb.AppendLine("<td>" & dr("Class") & "</td>")
            sb.AppendLine("<td>" & dr("Titration") & "</td>")
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
            Dim dt As DataTable = mBase.GetTable_DrugsCritCare
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
