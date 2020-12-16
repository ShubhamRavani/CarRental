
Partial Class Admin_Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Session("email") = ""
        Session.Abandon()
        Response.Redirect("astart.aspx")
    End Sub
End Class
