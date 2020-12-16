
Partial Class gallary
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Session("email") = ""
        Session.Abandon()
        Response.Redirect("start.aspx")
    End Sub
End Class
