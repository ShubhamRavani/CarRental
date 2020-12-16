Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Configuration
Partial Class Admin_Default
    Inherits System.Web.UI.Page

    Protected Sub Btnsubmit_Click(sender As Object, e As EventArgs) Handles Btnsubmit.Click
        Dim con As New SqlConnection("Data Source=SHUBHAM\SRKING;Initial Catalog=carrentals;Integrated Security=True")
        Dim data As Boolean

        data = True


        Dim str As String
        str = "Insert into carinform values(@comname,@ctype,@cname,@crate,@status)"

       

        Dim cmd As New SqlCommand(str, con)

        cmd.Parameters.AddWithValue("@comname", txtcomname.Text)
        cmd.Parameters.AddWithValue("@ctype", txttypec.Text)
        cmd.Parameters.AddWithValue("@cname", txtcname.Text)
        cmd.Parameters.AddWithValue("@crate", txtcrate.Text)
        cmd.Parameters.AddWithValue("@status", data)

        con.Open()

        cmd.ExecuteNonQuery()

        con.Close()

        If (txttypec.Text.Contains("Economy")) Then
            Response.Redirect("economy.aspx")

        ElseIf (txttypec.Text.Contains("Standard")) Then
            Response.Redirect("standard.aspx")

        ElseIf (txttypec.Text.Contains("Luxury")) Then
            Response.Redirect("luxury.aspx")

        End If
      

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        If (Not (IsPostBack)) Then


            Dim con As SqlConnection
            con = New SqlConnection("Data Source=SHUBHAM\SRKING;Initial Catalog=carrentals;Integrated Security=True")
            con.Open()

            Dim query As String

            query = "select * from car where c_id=" & Session("c_id")

            Dim cmd1 As New SqlCommand(query, con)
            Dim da As SqlDataAdapter
            da = New SqlDataAdapter(cmd1)
            Dim dt As New DataTable
            da.Fill(dt)


            If dt.Rows.Count > 0 Then

                txttypec.Text = Session("c_type")



            End If
            con.Close()


        End If


        If (IsPostBack) Then

            Dim con1 As SqlConnection
            con1 = New SqlConnection("Data Source=SHUBHAM\SRKING;Initial Catalog=carrentals;Integrated Security=True")

            Dim str1 As String
            str1 = "select * from carinform"

            Dim cmd1 As New SqlCommand(str1, con1)
            Dim da1 As New SqlDataAdapter(cmd1)
            Dim dt1 As New DataTable()

            da1.Fill(dt1)



            If dt1.Rows.Count > 0 Then
                con1.Open()
                cmd1.ExecuteNonQuery()
                con1.Close()
                Session("i_id") = dt1.Rows(0)(0).ToString()
                Session("c_name") = txtcname.Text

            Else

            End If
        End If
    End Sub
End Class
