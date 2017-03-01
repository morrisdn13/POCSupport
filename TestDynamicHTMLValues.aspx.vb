Imports System.Data
Imports System.Data.SqlClient
Partial Class TestDynamicHTMLValues
    Inherits System.Web.UI.Page
    Private mBase As New clsBase
    Private mintDeptID As Integer

    Private Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        Call LoadNurses()
    End Sub

    Protected Sub LoadNurses()
        Dim dtNurses As DataTable = mBase.Emp_GetByRole("RN")
        If dtNurses.Rows.Count > 0 Then
            With rblRN
                .DataSource = dtNurses
                .DataTextField = "EMP"
                .DataValueField = "EMP"
                .DataBind()
            End With
        End If
    End Sub
End Class
