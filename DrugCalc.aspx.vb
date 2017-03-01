
Partial Class DrugCalc
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim dblORderedAmt As Double
        Dim strOrderedUOM As String = ddlOrderedAmtUOM.SelectedValue
        Dim strTimeUOM As String = ddlTimeUOM.SelectedValue

        Dim dblPtWt As Double
        Dim blnWeightBased As Boolean = chkWtBased.Checked
        Dim dblTotalDrugAmt As Double
        Dim strTotalDrugAmtUOM As String = ddlTotalDrugUOM.SelectedValue

        Dim dblTotalVol As Double
        Dim strTotalVolUOM As String = ddlTotalVolUOM.SelectedValue

        Dim dblConc As Double
        Dim strConcUOM As String = ddlOrderedAmtUOM.SelectedValue

        Dim ENDTotalAvailAmt As Double
        Dim ENDUnitPerMl As Double
        Dim ENDRate As Double
        Dim strResult As String

        If IsNumeric(txtDoseAmt.Text) Then
            dblORderedAmt = txtDoseAmt.Text
        End If
        If blnWeightBased Then
            If IsNumeric(txtPtWt.Text) Then
                dblPtWt = txtPtWt.Text
            End If

        End If
        If IsNumeric(txtTotalDrugAmt.Text) Then
            dblTotalDrugAmt = txtTotalDrugAmt.Text
        End If
        If IsNumeric(txtTotalVolAmt.Text) Then
            dblTotalVol = txtTotalVolAmt.Text
        End If

        'If IsNumeric(txtConcAmt.Text) Then
        '    dblConc = txtConcAmt.Text
        'End If
        '=========================================
        'Ensure same UOM between ordered and available
        ENDTotalAvailAmt = CorrectedConcenUOM(strOrderedUOM, strTotalDrugAmtUOM, dblORderedAmt, dblTotalDrugAmt)
        'convert voume available to mls
        If strTotalVolUOM = "L" Then dblTotalVol = dblTotalVol * 1000
        ENDUnitPerMl = Math.Round((ENDTotalAvailAmt / dblTotalVol), 2) 'this is how many units/ml ---> divide orderd amt by this to get how many mls required
        lblConc.Text = "Concentration = " & ENDUnitPerMl & strOrderedUOM & "/ml"
        ENDRate = Math.Round((dblORderedAmt / ENDUnitPerMl), 2)

        If blnWeightBased Then
            strResult = Math.Round(ENDRate * dblPtWt, 2) & " ml/" & strTimeUOM

        Else
            strResult = Math.Round(ENDRate, 2) & " ml/" & strTimeUOM
        End If
        Select Case strTimeUOM
            Case "min"
                strResult += " (" & Math.Round((ENDRate / dblPtWt) * 60, 2) & " ml/hr)"
            Case "hr"
                If Math.Round((ENDRate / dblPtWt) / 60, 2) < 1 Then
                    If Math.Round((ENDRate / dblPtWt) / 60, 4) < 1 Then
                        strResult += " (<1 ml/min)"
                    Else
                        strResult += " (" & Math.Round((ENDRate / dblPtWt) / 60, 4) & " ml/min)"

                    End If
                Else
                    strResult += " (" & Math.Round((ENDRate / dblPtWt) / 60, 2) & " ml/min)"

                End If
        End Select
        Try
            lblResult.Text = strResult
        Catch ex As Exception
            lblResult.Text = ex.Message
        End Try


    End Sub
    Private Function CorrectedConcenUOM(ByVal strOrderedUOM As String, ByVal strTotalDrugAmtUOM As String, ByVal dblORderedAmt As Double, ByVal dblTotalDrugAmt As Double) As Double
        Dim TotalAmt As Double
        Select Case strOrderedUOM
            Case "mcg" '100
                Select Case strTotalDrugAmtUOM
                    Case "mcg" '100
                        TotalAmt = dblTotalDrugAmt

                    Case "mg" '  / 1,000  = 0.1
                        TotalAmt = (dblTotalDrugAmt * 1000)
                    Case "gm"
                        TotalAmt = (dblTotalDrugAmt * 1000000)
                    Case "units"
                        Throw New Exception("No standard conversion between mass and Units - varies by substance.")
                End Select
            Case "mg" '1
                Select Case strTotalDrugAmtUOM
                    Case "mcg" '1,000
                        TotalAmt = (dblTotalDrugAmt / 1000)
                    Case "mg"
                        TotalAmt = dblTotalDrugAmt
                    Case "gm"
                        TotalAmt = (dblTotalDrugAmt * 1000)
                    Case "units"
                        Throw New Exception("No standard conversion between mass and Units - varies by substance.")
                End Select
            Case "gm"
                Select Case strTotalDrugAmtUOM
                    Case "mcg"
                        TotalAmt = (dblTotalDrugAmt / 1000000)
                    Case "mg"
                        TotalAmt = (dblTotalDrugAmt / 1000)
                    Case "gm"
                        TotalAmt = dblTotalDrugAmt
                    Case "units"
                End Select
            Case "units"
                Select Case strTotalDrugAmtUOM
                    Case "units"
                        TotalAmt = dblTotalDrugAmt
                    Case Else
                        Throw New Exception("No standard conversion between mass and Units - varies by substance.")

                End Select
        End Select


        Return TotalAmt
    End Function
End Class
