Imports System.Data
Imports System.Data.SqlClient

Partial Class CritCareDrugsShort
    Inherits System.Web.UI.Page

    Private mBase As New clsBase

    'Dim MyPage As String = Path.GetFileName(Page.AppRelativeVirtualPath.ToString).ToString

    Private Function GetDrugTableHTML(ByVal dt As DataTable) As String
        Dim sb As New StringBuilder
        Dim dr As DataRow
        Dim strDrugGen As String
        Dim strDrugName As String

        Dim strTDD As String = "<td class=" & Chr(34) & "text-success" & Chr(34) & "><b>*</b></td>"
        Dim strDoseChart As String = ""
        Dim strDrugLink As String = "<a onclick=" & Chr(34) & "openPopup('DrugProfile.aspx?ID=IP-*','Drug Profile',900,850)" & Chr(34) & "><b>@</b></a>"
        Dim strDrugLink2 As String = ""

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
        sb.AppendLine("<th>Dose<br/>Chart</th>")

        sb.AppendLine("</tr>") 'tr
        sb.AppendLine("</thead>") 'thead
        sb.AppendLine("<tbody>") 'thead

        'llop table and build table content
        For Each dr In dt.Rows
            strDrugGen = "" & dr("DrugGen")
            strDrugName = "" & dr("Drug")
            strDrugGen = Replace(strDrugGen, vbCrLf, "")
            strDrugGen = Replace(strDrugGen, " ", "_")
            strDrugLink2 = strDrugLink
            strDrugLink2 = Replace(strDrugLink2, "*", strDrugGen)
            strDrugLink2 = Replace(strDrugLink2, "@", strDrugName)

            sb.AppendLine("<tr>") 'tr
            'sb.AppendLine(Replace(strTDD, "*", "" & dr("Drug")))
            sb.AppendLine(Replace(strTDD, "*", "" & strDrugLink2))

            'sb.AppendLine("<td>" & dr("DrugName") & "</td>")
            sb.AppendLine("<td>" & dr("Onset") & "</td>")
            sb.AppendLine("<td>" & dr("Duration") & "</td>")
            sb.AppendLine("<td>" & dr("COncentration") & "</td>")
            sb.AppendLine("<td>" & dr("Dosing") & "</td>")
            sb.AppendLine("<td>" & dr("Class") & "</td>")
            sb.AppendLine("<td>" & dr("Titration") & "</td>")
            strDoseChart = "" & dr("DoseChart")
            If strDoseChart.Length > 0 Then
                'openPopup(strOpen, strTitle,w,h)
                '<a href="javascript:openPopup('<%# Eval("refUrl")  %>')">  <%# Eval("RefID") %></a>
                '<a onclick="openPopup('DrugCalc.aspx','Dose Calculator',450,500)">Dose Calculator</a>
                strDoseChart = "<a onclick=" & Chr(34) & "openPopup('/DoseCharts/Dosage_" & strDoseChart & ".pdf','Dose Chart',800,800)" & Chr(34) & "><b>DOSE<br/>CHART</b></a>"
            Else
                strDoseChart = ""
            End If
            sb.AppendLine("<td class=" & Chr(34) & "vertical-top" & Chr(34) & ">" & strDoseChart & "</td>")
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
            Master.Err = ex.Message
        End Try


        'uspDrugsCritCare
    End Sub
    Private Sub SetMasterAppFeature()
        Dim MyPage As String = System.IO.Path.GetFileName(Page.AppRelativeVirtualPath.ToString).ToString


        Master.ChildPage = System.IO.Path.GetFileName(Page.AppRelativeVirtualPath.ToString).ToString
    End Sub
    Private Sub DRUGS_CritCareDrugs_Load(sender As Object, e As EventArgs) Handles Me.Load
        SetMasterAppFeature()
        LoadTable()
    End Sub
    Protected Function GetPageName() As String
        Dim MyPage As String = System.IO.Path.GetFileName(Page.AppRelativeVirtualPath.ToString).ToString
        Master.ChildPage = MyPage
        Return MyPage
    End Function

    Private Sub lbtnFeedback_Click(sender As Object, e As EventArgs) Handles lbtnFeedback.Click
        '  Page.ClientScript.RegisterStartupScript(Me.GetType(), "modelBox", "$('#modalFeedback').modal('show');", True)
    End Sub
End Class
