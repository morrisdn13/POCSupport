
Partial Class NewTask
    Inherits System.Web.UI.Page
    Private mBase As New clsBase
    Private mintDeptID As Integer
    Private mstrEmp As String

    Private Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        Try
            mBase.Task_Save(mintDeptID, mstrEmp, txtRm.Text, txtTask.Text)
            ScriptManager.RegisterClientScriptBlock(Me, GetType(Page), "ToggleScript", "window.close();window.opener.document.forms(0).submit();", True)

        Catch ex As Exception
            lblErr.Text = ex.Message
        End Try
    End Sub

    Private Sub NewTask_Load(sender As Object, e As EventArgs) Handles Me.Load

        If Not Page.IsPostBack Then
            Dim strDeptId As String = Request.QueryString("d")
            mstrEmp = Request.QueryString("e")
            If Not IsNumeric(strDeptId) Then
                lblErr.Text = "Invalid Dept Param"
                txtRm.Enabled = False
                txtTask.Enabled = False
            End If
            mintDeptID = CInt(strDeptId)
            SetStateVars()
            Page.FindControl("txtRm").Focus()
        Else
            GetStateVars()

        End If
    End Sub
    Private Sub SetStateVars()
        '======  THese need to be passed to page ===============
        'mintDeptID = 3
        'mstrEmp = "Dan Morrissey (Nurse)"
        hidState.Value = mintDeptID & "," & mstrEmp
    End Sub
    Private Sub GetStateVars()
        Dim sHid As String = hidState.Value
        If InStr(sHid, ",") = 0 Then Exit Sub
        Dim aryState As String() = sHid.Split(",")
        mintDeptID = aryState(0)
        mstrEmp = aryState(1)
    End Sub
End Class
