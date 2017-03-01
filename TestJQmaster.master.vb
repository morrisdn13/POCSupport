
Partial Class TestJQmaster
    Inherits System.Web.UI.MasterPage
    Public Property Err() As String
        Get
            Return lblErr.Text
        End Get
        Set(value As String)
            lblErr.Text = value
        End Set
    End Property

End Class

