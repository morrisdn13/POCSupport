Imports System.Data
Imports System.Data.SqlClient
Partial Class AppIdeas
    Inherits System.Web.UI.Page

    Private mstrPage As String
    Private oAppFeedback As New clsAppSug("")

    Private Sub SaveFeedback()
        Dim strSubject As String = "" & txtSubject.Text.Trim
        Dim strDetails As String = "" & txtDetails.Text.Trim

        Try
            oAppFeedback.AppIdea_Save(strSubject, strDetails)
            txtDetails.Text = ""
            txtSubject.Text = ""
            ScriptManager.RegisterClientScriptBlock(Me, GetType(Page), "ToggleScript", "window.close();", True)

        Catch ex As Exception
            lblErr.Text = ex.Message
        End Try
    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        Call SaveFeedback()
    End Sub


End Class
