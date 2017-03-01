
Partial Class POCS2
    Inherits System.Web.UI.MasterPage
    Private mstrChildPage As String
    'Private mstrAppFeature As String
    Private BaseClass As New clsBase
    Private mstrErr As String
    Private oAppFeedback As clsAppSug

    Public Sub New()

    End Sub

    Protected Function GetPageName() As String
        Return "POCS2.aspx"
    End Function
    Public Property Err As String
        Get
            Return mstrErr
        End Get
        Set(value As String)
            lblErr.Text = value & "<br/>OK, there was an error in the app.  The error you see was logged and sent to the development team.<br/>If you can provide feedback about what you were trying to do it could help us fix it.<br/>If you don't see a " & Chr(34) & "Provide Feedback" & Chr(34) & "link, disregard the suggestion, we'll still get it and resolve the problem.<br/> Sorry for the inconvenience :("
        End Set
    End Property
    'Public Property AppFeature As String
    '    Get
    '        Return mstrAppFeature
    '    End Get
    '    Set(value As String)
    '        lblFeature.Text = value
    '    End Set
    'End Property
    Public Property ChildPage As String
        Get
            Return mstrChildPage
        End Get
        Set(value As String)
            oAppFeedback = New clsAppSug(value)
            mstrChildPage = value
            lblFeature.Text = oAppFeedback.Feature
        End Set
    End Property

    Private Sub SaveFeedback()
        oAppFeedback = New clsAppSug(lblFeature.Text)
        Dim strSubject As String = "" & txtSubject.Text.Trim
        Dim strDetails As String = "" & txtDetails.Text.Trim
        Dim blnAppError As Boolean = cbAppErr.Checked
        Dim blnContError As Boolean = cbCOntErr.Checked
        Dim blnSug As Boolean = cbSug.Checked
        Dim strAppFeature As String = lblFeature.Text
        Try
            With oAppFeedback
                .Page = mstrChildPage
                .Feature = lblFeature.Text
                .Subject = strSubject
                .Details = strDetails
                .AppError = blnAppError
                .ContError = blnContError
                .Sug = blnSug
                .AppSug_Save()
                ScriptManager.RegisterClientScriptBlock(Me, GetType(Page), "ToggleScript", "window.close();", True)
            End With
            txtSubject.Text = ""
            txtDetails.Text = ""
            cbAppErr.Checked = False
            cbCOntErr.Checked = False
            cbSug.Checked = False
        Catch ex As Exception
            lblErr.Text = ex.Message
        End Try
    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        Call SaveFeedback()
    End Sub
End Class

