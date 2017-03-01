Imports System.Data
Imports System.Data.SqlClient
Partial Class AppFeedback
    Inherits System.Web.UI.Page

    Private mstrPage As String
    Private oAppFeedback As clsAppSug

    Public Sub New()

    End Sub

    Private Sub AppFeedback_Load(sender As Object, e As EventArgs) Handles Me.Load
        mstrPage = Request.QueryString("f")
        oAppFeedback = New clsAppSug(mstrPage)
        lblAppFeature.Text = "on " & oAppFeedback.Feature
    End Sub

    Private Sub SaveFeedback()
        Dim strSubject As String = "" & txtSubject.Text.Trim
        Dim strDetails As String = "" & txtDetails.Text.Trim
        Dim blnAppError As Boolean = cbAppErr.Checked
        Dim blnContError As Boolean = cbCOntErr.Checked
        Dim blnSug As Boolean = cbSug.Checked
        Try
            With oAppFeedback
                .Page = mstrPage
                .Subject = strSubject
                .Details = strDetails
                .AppError = blnAppError
                .ContError = blnContError
                .Sug = blnSug
                .AppSug_Save()
                ScriptManager.RegisterClientScriptBlock(Me, GetType(Page), "ToggleScript", "window.close();", True)
            End With

        Catch ex As Exception
            lblErr.Text = ex.Message
        End Try
    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        Call SaveFeedback()
    End Sub
End Class
