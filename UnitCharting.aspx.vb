Imports System.Data
Imports System.Data.SqlClient

Partial Class UnitCharting
    Inherits System.Web.UI.Page

    Private mBase As New clsBase
    Private mstrSession_Optionals As String = "" 'comma delimited string of optional interventions
    'Private mstrSession_CritCare As String
    'Private mstrSession_CritMed As String
    Private Sub Procedures_Load(sender As Object, e As EventArgs) Handles Me.Load
        Select Case Page.IsPostBack
            Case False
                LoadList_Depts()
                LoadList_Optionals(ddlDept.SelectedItem.Value)
                LoadDivs()
               ' Call LoadGrid()
            Case True

        End Select


    End Sub
    Private Sub LoadList_Optionals(ByVal intDeptID As Integer)
        Try
            Dim dtOptionals As DataTable = mBase.GetTable_DocItemOptionals(intDeptID)
            If dtOptionals.Rows.Count > 0 Then
                With cblOptionals
                    .DataSource = dtOptionals
                    .DataTextField = "Criteria"
                    .DataValueField = "Criteria"

                    '.DataValueField = "DocItem"
                    .DataBind()
                End With
                'If user has previously selected items, then reselect those items
                'If Not IsNothing(Session("mstrSession_Optionals")) Then
                '    Dim strOptionals As String = Session("mstrSession_Optionals").ToString
                '    Dim aryOptionals As String() = strOptionals.Split(",")
                '    Dim losOptionals As List(Of String) = aryOptionals.ToList

                '    For Each li As ListItem In cblOptionals.Items
                '        For Each s As String In losOptionals
                '            If li.Value = s Then li.Selected = True
                '        Next
                '    Next
                'End If
            End If
        Catch ex As Exception
            lblErr.Text = "Error in 'LoadList_Optionals':" & ex.Message
        End Try

    End Sub
    Private Sub LoadList_Depts()
        Dim dr As DataRow
        Try
            Dim dtDepts As DataTable = mBase.GetTable_DocItemIntervalsDepts()
            If dtDepts.Rows.Count > 0 Then
                With ddlDept
                    .DataSource = dtDepts
                    .DataTextField = "Dept"
                    .DataValueField = "DeptID"
                    .DataBind()
                End With
                'If user has previously selected items, then reselect those items
            End If
        Catch ex As Exception
            lblErr.Text = "Error in 'LoadList_Depts':" & ex.Message

        End Try

    End Sub

    Private Sub LoadGrid()

        'Dim blnRecords As Boolean
        'Dim intDept As Integer
        'Dim strDept As String = ""
        'Dim strCritCare As String = "NA"
        'Dim strCritMed As String = "NA"

        'Try
        '    intDept = ddlDept.SelectedValue
        '    strDept = ddlDept.Text
        '    If cblCond.Items(0).Selected = True Then
        '        strCritCare = cblCond.Items(0).Value
        '    End If
        '    If cblCond.Items(1).Selected = True Then
        '        strCritMed = cblCond.Items(1).Value
        '    End If
        '    Dim dt As DataTable = mBase.GetTable_DocItemIntervals(intDept, strCritCare, strCritMed)
        '    dgGrid.DataSource = dt
        '    dgGrid.DataBind()

        '    blnRecords = (dgGrid.Rows.Count > 0)
        '    '  lblNoData.Visible = Not blnRecords
        '    lblGridTitle.Text = "Charting Requirements for " & strDept & "" '(20)
        '    'dgGrid.Visible = blnRecords

        'Catch ex As Exception
        '    lblErr.Text = ex.Message
        '    'Throw New Exception("LoadGrid: " & ex.Message)
        '    'lblNoData.Text = "Error loading data <br>" & ex.Message
        '    'lblNoData.Visible = True
        'End Try
    End Sub
    Private Sub LoadDivs()
        Dim intDept As Integer = 0
        Dim strDept As String = ""
        Dim strCritCare As String = "NA"
        Dim strCritMed As String = "NA"
        Dim intDivLevel As Integer
        Dim strIntDivLevel As String = 0
        Dim strIntervCur As String
        Dim strIntervPrev As String = ""
        Dim dblIntHrs As Double = 0
        Dim intIntHrs As Integer = 0
        Dim strIntHrsLabel As String

        Dim strIntervalDisplay As String
        Dim strDisplayClass As String
        Dim strDetails As String
        Dim dr As DataRow
        Panel1.Visible = False
        Panel2.Visible = False
        Panel3.Visible = False
        Panel4.Visible = False
        Panel5.Visible = False
        Panel6.Visible = False

        Try
            If Page.IsPostBack Then
                Call CreateSessionFilter_Optionals()
            End If
            intDept = ddlDept.SelectedItem.Value
            strDept = ddlDept.SelectedItem.Text
            lblIO.Text = "I & O's for " & strDept & " are done at " & mBase.GetDocItem_DeptIO(intDept)
            lblGridTitle.Text = "Charting Requirements for " & strDept & "" '(20)
            Dim ds As DataSet = mBase.GetTable_DocItemIntervals(intDept, mstrSession_Optionals)
            For Each dt In ds.Tables
                If dt.rows.count > 0 Then
                    intDivLevel += 1
                    dr = dt.rows(0)
                    strIntervCur = dr("IntHrs").ToString
                    strDetails = dr("CondDetails").ToString
                    strIntHrsLabel = dr("IntHrsLabel").ToString
                    dblIntHrs = CDbl(strIntervCur)
                    strDisplayClass = GetIntervalLevelDisplayClass(dblIntHrs) 'sets color of div
                    strIntervalDisplay = dr("IntLabel").ToString & " " & GetIntervalDisplayHours(dblIntHrs, strIntHrsLabel) 'Label will be Q x hours, but if < 1


                    Select Case intDivLevel
                        Case 1
                            Panel1.Visible = True
                            Panel1Div.Attributes("class") = strDisplayClass
                            lblPanel1Label.Text = strIntervalDisplay
                            Panel1DivList.InnerHtml = GetIntervalDisplayUL(dt)
                        Case 2
                            Panel2.Visible = True
                            Panel2Div.Attributes("class") = strDisplayClass
                            lblPanel2Label.Text = strIntervalDisplay
                            Panel2DivList.InnerHtml = GetIntervalDisplayUL(dt)

                        Case 3
                            Panel3.Visible = True
                            Panel3Div.Attributes("class") = strDisplayClass
                            lblPanel3Label.Text = strIntervalDisplay
                            Panel3DivList.InnerHtml = GetIntervalDisplayUL(dt)

                        Case 4
                            Panel4.Visible = True
                            Panel4Div.Attributes("class") = strDisplayClass
                            lblPanel4Label.Text = strIntervalDisplay
                            Panel4DivList.InnerHtml = GetIntervalDisplayUL(dt)

                        Case 5
                            Panel5.Visible = True
                            Panel5Div.Visible = True
                            Panel5Div.Attributes("class") = strDisplayClass
                            lblPanel5Label.Text = strIntervalDisplay
                            Panel5DivList.InnerHtml = GetIntervalDisplayUL(dt)
                        Case 6
                            Panel6.Visible = True
                            Panel6Div.Visible = True
                            Panel6Div.Attributes("class") = strDisplayClass
                            lblPanel6Label.Text = strIntervalDisplay
                            Panel6DivList.InnerHtml = GetIntervalDisplayUL(dt)
                    End Select
                End If
            Next
            Select Case intDivLevel
                Case 5
                    Panel6.Visible = False
                    Panel6Div.Visible = False
                Case 4
                    Panel5.Visible = False
                    Panel5Div.Visible = False
                    Panel6.Visible = False
                    Panel6Div.Visible = False
            End Select
            'dgGrid.DataSource = dt
            'For Each dr In dt.Rows
            '    strIntervCur = dr("IntHrs").ToString
            '    strDetails = dr("CondDetails").ToString
            '    dblIntHrs = CDbl(strIntervCur)
            '    strDisplayClass = GetIntervalLevelDisplayClass(dblIntHrs) 'If interval is < 2hrs, display in red div class
            '    strIntervalDisplay = GetIntervalDisplayLabel(dblIntHrs, strDetails) 'Label will be Q x hours, but if < 1
            '    If strIntervPrev <> strIntervCur Then ' New interval = new div        then display whatever the details field has
            '        intDivLevel += 1
            '        'New interval, place in next div, then create <ul> with DocItems until interval changes (how to close </ul>?)
            '        Select Case strIntDivLevel
            '            Case 1

            '                Panel1.Visible = True
            '                Panel1Div.Attributes("class") = strIntervalDisplay
            '                lblPanel1Label.Text = strIntervalDisplay
            '                'lblPanel1Label.Text = dr(")
            '            Case 2
            '            Case 3
            '            Case 4
            '            Case 5

            '        End Select
            '    Else
            '        Select Case strIntervCur
            '            Case 1
            '                Panel1DivList.Attributes("InnerHtml") = ""

            '        End Select
            '    End If
            'strIntervPrev = strIntervCur

            ' Next

            'dgGrid.DataBind()

            'blnRecords = (dgGrid.Rows.Count > 0)
            '  lblNoData.Visible = Not blnRecords
            'lblGridTitle.Text = "Charting Requirements for " & strDept & "" '(20)
            'dgGrid.Visible = blnRecords

        Catch ex As Exception
            lblErr.Text = "Error in 'LoadDivs':" & ex.Message
        End Try

    End Sub
    Private Function GetIntervalLevelDisplayClass(ByVal dblInterv As Double) As String
        Dim strClass As String
        Select Case dblInterv
            Case < 2
                strClass = "panel panel-danger"
            Case 2
                strClass = "panel panel-warning"
            Case 3
                strClass = "panel panel-info"
            Case 4
                strClass = "panel panel-success"
            Case 8
                strClass = "panel panel-info"
            Case Else
                strClass = "panel panel-primary"
        End Select
        Return strClass
    End Function
    Private Sub CreateSessionFilter_Optionals()
        Dim i As Integer
        For Each li As ListItem In cblOptionals.Items
            i += 1
            If li.Selected Then
                mstrSession_Optionals += li.Text
                mstrSession_Optionals += ","
            End If

        Next

    End Sub
    Private Function GetIntervalDisplayHours(ByVal dblInterv As Double, ByVal strIntHrsLabel As String) As String
        Dim strRet As String = ""
        Dim str7AP As String = ""
        Dim dt As Date = Date.Now
        Dim hr As Integer = dt.Hour
        If hr < 19 Then
            str7AP = "7A"
        Else
            str7AP = "7P"
        End If
        Select Case dblInterv
            Case < 1
                strRet = strIntHrsLabel
            Case 2
                If str7AP = "7A" Then
                    strRet = "(8, 10, 12, 14, 16, 18)"
                Else
                    strRet = "(20, 22, 24, 02, 04, 06)"
                End If
            Case 3
                If str7AP = "7A" Then
                    strRet = "(8, 11, 14, 17)"
                Else
                    strRet = "(20, 22, 02, 05)"
                End If

            Case 4
                If str7AP = "7A" Then
                    strRet = "(8, 12, 16)"
                Else
                    strRet = "(20, 24, 04)"
                End If

            Case 5
                If str7AP = "7A" Then
                    strRet = "(8, 13, 18)"
                Else
                    strRet = "(20, 01, 06)"
                End If

            Case 6
                If str7AP = "7A" Then
                    strRet = "(8, 14)"
                Else
                    strRet = "(20, 02)"
                End If

            Case 7
                If str7AP = "7A" Then
                    strRet = "(8, 15)"
                Else
                    strRet = "(20, 03)"
                End If

            Case 8
                If str7AP = "7A" Then
                    strRet = "(8, 16)"
                Else
                    strRet = "(20, 04)"
                End If

            Case 9
                If str7AP = "7A" Then
                    strRet = "(8, 17)"
                Else
                    strRet = "(20, 05)"
                End If

            Case 10
                If str7AP = "7A" Then
                    strRet = "(8, 18)"
                Else
                    strRet = "(20, 06)"
                End If
        End Select
        Return strRet
    End Function
    Private Function GetIntervalDisplayUL(ByVal dt As DataTable) As String
        Dim strUL As String = ""
        Dim sbUL As New StringBuilder
        Dim dr As DataRow
        Dim strCond As String
        Dim strFlag As String
        Dim strDocItem As String
        Dim strCriteria As String

        If dt.Rows.Count > 0 Then

            strUL = "<UL>"
            For Each dr In dt.Rows
                strDocItem = dr("DocItem")
                strCond = dr("Cond")
                strCriteria = dr("Criteria")
                If strCriteria <> "ALL" Then
                    strFlag = "<li><span class=" & Chr(34) & "text-danger" & Chr(34) & "> " & strDocItem & "</span></>"
                Else
                    strFlag = "<li><span class=" & Chr(34) & "text-success" & Chr(34) & "> " & strDocItem & "</span></>"
                End If
                sbUL.AppendLine(strFlag)

            Next
            strUL = sbUL.ToString
        End If

        Return strUL
    End Function


    Private Sub ddlDept_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlDept.SelectedIndexChanged
        'Dim intDept As Integer
        'Dim strDept As String

        'intDept = ddlDept.SelectedItem.Value
        'strDept = ddlDept.SelectedItem.Text
        'lblIO.Text = "I & O's for " & strDept & " are done at " & mBase.GetDocItem_DeptIO(intDept)
        'lblGridTitle.Text = "Charting Requirements for " & strDept & "" '(20)

        Call LoadDivs()
    End Sub

    'Private Sub cblCond_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cblCond.SelectedIndexChanged
    '    Call LoadDivs()
    'End Sub


    Protected Sub btnOptUpdate_Click(sender As Object, e As EventArgs) Handles btnOptUpdate.Click
        Call ClearOptoinals()
        Call LoadDivs()
    End Sub

    Private Sub cblOptionals_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cblOptionals.SelectedIndexChanged
        Call LoadDivs()
    End Sub
    Private Sub ClearOptoinals()
        Dim i As Integer
        mstrSession_Optionals = ""
        'mstrSession_CritMed = ""
        For Each li As ListItem In cblOptionals.Items
            li.Selected = False
        Next

        'i = 0
        'For Each li As ListItem In cblCond.Items
        '    li.Selected = False
        'Next
    End Sub
End Class
