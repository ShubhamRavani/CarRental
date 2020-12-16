Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Configuration
Partial Class tcar
    Inherits System.Web.UI.Page

    Protected Sub Btnsubmit_Click(sender As Object, e As EventArgs) Handles Btnsubmit.Click

        Dim str As String
        str = "select * from car"

        Dim con As New SqlConnection("Data Source=SHUBHAM\SRKING;Initial Catalog=carrentals;Integrated Security=True")
        Dim cmd As New SqlCommand(str, con)
        Dim da As New SqlDataAdapter(cmd)
        Dim dt As New DataTable()

        da.Fill(dt)



        If dt.Rows.Count > 0 Then

            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            Session("c_id") = dt.Rows(0)(0).ToString()
            Session("c_type") = ddlctype.SelectedItem.Text

            Response.Redirect("addcar.aspx")

        Else

        End If

        If (ddlctype.SelectedIndex = 0) Then
            Response.Redirect("economy.aspx")

        ElseIf (ddlctype.SelectedIndex = 1) Then
            Response.Redirect("standard.aspx")

        ElseIf (ddlctype.SelectedIndex = 2) Then
            Response.Redirect("luxury.aspx")

        End If

    End Sub
End Class
