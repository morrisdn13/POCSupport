Imports System.Data
Imports System.Data.SqlClient

Partial Class CritDrugInfusionProtocol
    Inherits System.Web.UI.Page

    Private mBase As New clsBase


    Private Function GetDrugTableHTML(ByVal dt As DataTable) As String
        Dim sb As New StringBuilder
        Dim strDrugGen As String
        Dim strDrugName As String
        Dim dr As DataRow
        Dim strConc As String
        Dim strDosing As String
        Dim strDetails As String
        Dim i As Integer
        Dim strTDD As String = "<td class=" & Chr(34) & "vertical-top text-success" & Chr(34) & "><b>*</b></td>"
        Dim strTD As String = "<td class=" & Chr(34) & "vertical-top" & Chr(34) & ">*</td>"
        Dim strTDDoseChart As String = "<td class=" & Chr(34) & "vertical-top" & Chr(34) & ">*</td>"
        Dim strDoseChart As String
        Dim strDrugLink As String = "<a onclick=" & Chr(34) & "openPopup('DrugProfile.aspx?ID=IP-*','Drug Profile',900,850)" & Chr(34) & "><b>@</b></a>"
        Dim strDrugLink2 As String
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
        sb.AppendLine("<th>Dose<br/>Chart</th>")

        sb.AppendLine("</tr>") 'tr
        sb.AppendLine("</thead>") 'thead
        sb.AppendLine("<tbody>") 'thead

        'llop table and build table content
        For Each dr In dt.Rows
            strDrugLink2 = strDrugLink
            strDrugGen = "" & dr("DrugGen")
            strDrugGen = Replace(strDrugGen, vbCrLf, "")
            strDrugGen = Replace(strDrugGen, " ", "_")
            strDrugName = "" & dr("Drug")
            If InStr(strDrugName, "(") > 0 Then
                strDrugName = "<b>" & Replace(strDrugName, "(", "<b/><br/>(")
            Else
                strDrugName = "<b>" & strDrugName & "<b/>"
            End If

            strDrugLink2 = Replace(strDrugLink2, "*", strDrugGen)
            strDrugLink2 = Replace(strDrugLink2, "@", strDrugName)
            strDoseChart = "" & dr("DoseChart")
            If strDoseChart.Length > 0 Then
                'openPopup(strOpen, strTitle,w,h)
                '<a href="javascript:openPopup('<%# Eval("refUrl")  %>')">  <%# Eval("RefID") %></a>
                '<a onclick="openPopup('DrugCalc.aspx','Dose Calculator',450,500)">Dose Calculator</a>
                strDoseChart = "<a onclick=" & Chr(34) & "openPopup('/DoseCharts/Dosage_" & strDoseChart & ".pdf','Dose Chart',800,800)" & Chr(34) & "><b>DOSE<br/>CHART</b></a>"
            Else
                strDoseChart = ""
            End If
            strConc = "" & dr("conc")
            strDosing = "" & dr("Dosing")
            strDetails = "" & dr("Comments")

            strConc = Replace(strConc, vbCrLf, "<br>")
            strDosing = Replace(strDosing, vbCrLf, "<br>")
            strDetails = Replace(strDetails, vbCrLf, "<br>")

            '   i = InStr(strDetails, vbCrLf)
            sb.AppendLine("<tr>") 'tr

            sb.AppendLine(Replace(strTDD, "*", "" & strDrugLink2))
            sb.AppendLine(Replace(strTD, "*", strConc))
            sb.AppendLine(Replace(strTD, "*", strDosing))
            sb.AppendLine(Replace(strTD, "*", "" & dr("Class")))
            sb.AppendLine(Replace(strTD, "*", strDetails))
            sb.AppendLine(Replace(strTD, "*", strDoseChart))

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
            SetMasterAppFeature()
            Dim dt As DataTable = mBase.GetTable_DrugInfusionProtocol("")
            CritCareDrugsDiv.InnerHtml = GetDrugTableHTML(dt)

        Catch ex As Exception
            lblErr.Text = ex.Message
        End Try


        'uspDrugsCritCare
    End Sub
    Private Sub SetMasterAppFeature()
        Dim MyPage As String = System.IO.Path.GetFileName(Page.AppRelativeVirtualPath.ToString).ToString
        Master.ChildPage = MyPage
    End Sub

    Private Sub CritDrugInfusionProtocol_Load(sender As Object, e As EventArgs) Handles Me.Load
        LoadTable()

    End Sub
    Protected Function GetPageName() As String
        Dim MyPage As String = System.IO.Path.GetFileName(Page.AppRelativeVirtualPath.ToString).ToString
        Master.ChildPage = MyPage
        Return MyPage
    End Function
End Class


