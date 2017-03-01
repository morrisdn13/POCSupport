Imports System.Data
Imports System.Data.SqlClient

Partial Class AppGetInfoList
    Inherits System.Web.UI.Page
    Private mBase As New clsBase

    Private Function GetInfoTableHTML(ByVal dt As DataTable) As String
        Dim sb As New StringBuilder
        Dim dr As DataRow
        Dim strSubj As String
        Dim strDet As String
        Dim strInfo As String
        Dim strID As String
        sb.AppendLine("<table id=" & Chr(34) & "GetInfo" & Chr(34) & " class=" & Chr(34) & "display" & Chr(34) & ">")
        sb.AppendLine("<thead>") 'thead
        sb.AppendLine("<tr>") 'tr
        sb.AppendLine("<th></th>")
        sb.AppendLine("<th>Needed Info</th>")
        sb.AppendLine("<th>Details</th>")
        sb.AppendLine("<th>Info</th>")
        sb.AppendLine("</tr>") 'tr
        sb.AppendLine("</thead>") 'thead
        sb.AppendLine("<tbody>") 'thead
        Dim strInfoLink As String = "<a onclick=" & Chr(34) & "openPopup('AppGetInfoEdit.aspx?ID=*','Needed Info',900,900)" & Chr(34) & "><b>@</b></a>"

        'llop table and build table content
        For Each dr In dt.Rows
            strSubj = "" & dr("Subj")
            strDet = "" & dr("Details")
            strInfo = "" & dr("Info")
            strID = dr("ID")

            strInfoLink = Replace(strInfoLink, "*", strID)
            strInfoLink = Replace(strInfoLink, "@", strSubj)

            sb.AppendLine("<tr>") 'tr
            sb.AppendLine("<td><b>" & strInfoLink & "</b></td>")
            sb.AppendLine("<td>" & strDet & "</td>")
            sb.AppendLine("<td>" & strInfo & "</td>")
            sb.AppendLine("</tr>") 'tr

        Next
        sb.AppendLine("</tbody>") 'thead
        sb.AppendLine("</table>")
        Return sb.ToString
    End Function
    Private Sub LoadTable()
        Try
            Dim dt As DataTable = mBase.GetTable_GetInfo(0)
            GetInfoDiv.InnerHtml = GetInfoTableHTML(dt)

        Catch ex As Exception
            lblErr.Text = ex.Message
        End Try


        'uspDrugsCritCare
    End Sub

    Private Sub AppGetInfoList_Load(sender As Object, e As EventArgs) Handles Me.Load
        LoadTable()
    End Sub
End Class
