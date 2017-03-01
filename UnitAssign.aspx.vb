Imports System.Data
Imports System.Data.SqlClient

Partial Class UnitAssign
    Inherits System.Web.UI.Page
    Private mBase As New clsBase
    Private mintDeptID As Integer

    Private Sub LoadNurses()
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
    Private Sub LoadRooms(ByVal intDeptID As Integer)
        Dim dtTechs As DataTable = mBase.UnitAssign_GetTable(intDeptID)
        If dtTechs.Rows.Count > 0 Then
            With cblRM
                .DataSource = dtTechs
                .DataTextField = "ASN"
                .DataValueField = "RM"
                .DataBind()
            End With
        End If
    End Sub
    Private Sub AssignRoom(ByVal strRole As String, ByVal intRM As Integer, ByVal strRN As String)

    End Sub
    Private Sub AssignNurse(ByVal blnAssign As Boolean)
        Dim strRN As String = rblRN.SelectedItem.Value
        Try
            For Each li As ListItem In cblRM.Items
                If li.Selected Then
                    If blnAssign Then
                        Call mBase.UNITAssign_Assign(3, "RN", li.Value, strRN)
                    Else
                        Call mBase.UNITAssign_UnAssign(3, "RN", li.Value)
                    End If
                End If
            Next
            Call LoadRooms(3)
        Catch ex As Exception
            lblErr.Text = ex.Message
        End Try
    End Sub
    Private Sub UnitAssign_Load(sender As Object, e As EventArgs) Handles Me.Load
        'Dim strQS As String = Request.QueryString("d")
        'If Not IsNumeric(strQS) Then
        '    lblErr.Text = "Invalid Dept Identifier - page will not render"
        '    Exit Sub
        'End If
        If Not IsPostBack Then
            Call LoadRooms(3)
            Call LoadNurses()

        End If

    End Sub

    Private Sub btnAssign_Click(sender As Object, e As EventArgs) Handles btnAssign.Click
        Call AssignNurse(True)
    End Sub
    Protected Sub btnUnassign_Click(sender As Object, e As EventArgs) Handles btnUnassign.Click
        Call AssignNurse(False)

    End Sub
End Class
