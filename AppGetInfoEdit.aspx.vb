Imports System.Data

Partial Class AppGetInfoEdit
    Inherits System.Web.UI.Page
    Private oAppFeedback As New clsAppSug("")
    Private mintID As Integer

    Private Sub AppGetInfoEdit_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Dim strID As String = "" & Request.QueryString("ID")
            If IsNumeric(strID) Then
                mintID = CInt(strID)
                hidID.Value = mintID
                Call LoadInfo()
            Else
                lblErr.Text = "Invalid record identifier."
            End If
        Else
            mintID = hidID.Value
        End If
    End Sub

    Private Sub LoadInfo()
        Dim dr As DataRow
        Dim strSubj As String
        Dim strDet As String
        Dim strInfo As String

        Dim dt As DataTable = oAppFeedback.GetTable_GetInfo(mintID)
        dr = dt.Rows(0)
        strSubj = "" & dr("Subj")
        strDet = "" & dr("Details")
        strInfo = "" & dr("Info")
        lblSubject.Text = strSubj
        lblDetails.Text = strDet
        txtInfo.Text = strInfo


    End Sub
    Private Sub UpdateInfo()
        Dim strInfo As String = "" & txtInfo.Text.Trim

        Try
            oAppFeedback.GetInfo_Update(mintID, strInfo)
            ScriptManager.RegisterClientScriptBlock(Me, GetType(Page), "ToggleScript", "window.close();", True)

        Catch ex As Exception
            lblErr.Text = ex.Message
        End Try
    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        Call UpdateInfo()
    End Sub

End Class
