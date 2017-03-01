Imports System.Data
Imports System.Data.SqlClient

Partial Class Procedures
    Inherits System.Web.UI.Page
    Private mProcedures As New clsProcedures
    Private mstrSession_Bodysystem As String = "" 'comma delimited string of the body systems checked by user
    Private mstrsession_SearchString As String = ""

    Private Sub Procedures_Load(sender As Object, e As EventArgs) Handles Me.Load
        Select Case Page.IsPostBack
            Case False
                LoadList_BodySys()
                Call LoadGrid()
            Case True
                CreateSessionFilter_BodySys()
        End Select


    End Sub


    'Protected Overridable Sub OnServerClick(e As EventArgs)
    '    Call LoadGrid()
    'End Sub
    'Sub btnSearchProc_Click(Source As Object, E As EventArgs)
    '    ' Message.InnerHtml = "Your name is: " & Name.Value
    '    Call LoadGrid()
    'End Sub
    Private Sub LoadGrid()

        Dim blnRecords As Boolean
        Dim strProcName As String = "" & Trim(txtSearchProc.Text)
        Try

            Dim dt As DataTable = mProcedures.GetTable_Procedures(strProcName, 0, mstrSession_Bodysystem)
            dgGrid.DataSource = dt
            dgGrid.DataBind()

            blnRecords = (dgGrid.Rows.Count > 0)
            '  lblNoData.Visible = Not blnRecords
            lblGridTitle.Text = "Procedures (" & dt.Rows.Count & ")" '(20)
            'dgGrid.Visible = blnRecords

        Catch ex As Exception
            ' lblErr.Text = ex.Message
            'Throw New Exception("LoadGrid: " & ex.Message)
            'lblNoData.Text = "Error loading data <br>" & ex.Message
            'lblNoData.Visible = True
        End Try
    End Sub
    Private Sub LoadList_BodySys()
        Try
            Dim dtBodySys As DataTable = mProcedures.GetTable_Bodysystem
            If dtBodySys.Rows.Count > 0 Then
                With cblBodySys
                    .DataSource = dtBodySys
                    .DataTextField = "BodySys"
                    .DataValueField = "BodySys"
                    .DataBind()
                End With
                'If user has previously selected items, then reselect those items
                If Not IsNothing(Session("Filter_Bodysys")) Then
                    Dim strbodySys As String = Session("Filter_Bodysys").ToString
                    Dim aryBodySys As String() = strbodySys.Split(",")
                    Dim losBodySys As List(Of String) = aryBodySys.ToList

                    For Each li As ListItem In cblBodySys.Items
                        For Each s As String In losBodySys
                            If li.Text = s Then li.Selected = True
                        Next
                    Next
                End If
            End If
        Catch ex As Exception
            lblErr.Text = ex.Message
        End Try

    End Sub

    Private Sub CreateSessionFilter_BodySys()
        Dim i As Integer
        For Each li As ListItem In cblBodySys.Items
            i += 1
            If li.Selected Then
                mstrSession_Bodysystem += li.Text
                mstrSession_Bodysystem += ","
                Session("Filter_Bodysys") = mstrSession_Bodysystem
            End If

        Next

    End Sub
    Protected Sub UpdateButton_Click(sender As Object, e As EventArgs) Handles UpdateButton1.Click
        'LoadGrid()
        'CreateSessionFilter_BodySys()

        'DateTimeLabel1.Text = DateTime.Now.ToString()
        '' DateTimeLabel2.Text = DateTime.Now.ToString()
        'LoadList_BodySys()
    End Sub
    Protected Sub cmdProcSearch_Click(sender As Object, e As EventArgs) Handles cmdProcSearch.Click
        LoadGrid()
    End Sub
End Class
