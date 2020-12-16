Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Partial Class Admin_Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim uid As String
        uid = Request.QueryString("i_id")
        If ((Not (IsPostBack)) And Request.QueryString("ed_com") = "") Then


            Dim con As SqlConnection
            con = New SqlConnection("Data Source=SHUBHAM\SRKING;Initial Catalog=carrentals;Integrated Security=True")
            con.Open()

            Dim query As String




            query = "select * from  carinform"

            Dim cmd As New SqlCommand(query, con)
            Dim da As SqlDataAdapter
            da = New SqlDataAdapter(cmd)
            Dim dt As New DataTable
            da.Fill(dt)

            If (dt.Rows.Count > 0) Then

                GridView1.DataBind()
            End If



            con.Close()

        Else



            If (uid <> "" And Request.QueryString("ed_com") <> "" And Session("ed") = "") Then


                Dim con As SqlConnection
                con = New SqlConnection("Data Source=SHUBHAM\SRKING;Initial Catalog=carrentals;Integrated Security=True")
                con.Open()

                Dim query As String


                Session("ed") = "ok"


                query = "select * from carinform  where i_id=" + uid


                Dim cmd As New SqlCommand(query, con)
                Dim da As SqlDataAdapter
                da = New SqlDataAdapter(cmd)
                Dim dt As New DataTable
                da.Fill(dt)

                If (dt.Rows.Count > 0) Then
                    txtcomname.Text = dt.Rows(0)(1)
                    txtctype.Text = dt.Rows(0)(2)
                    txtcname.Text = dt.Rows(0)(3)
                    txtcrate.Text = dt.Rows(0)(4)

                End If



                con.Close()


                query = "select * from carinform"

                cmd = New SqlCommand(query, con)

                da = New SqlDataAdapter(cmd)
                dt = New DataTable
                da.Fill(dt)

                If (dt.Rows.Count > 0) Then

                    GridView1.DataBind()
                End If



                con.Close()


                '  Response.Redirect("Manage_user.aspx?ed_com=")



            End If


        End If
    End Sub

    Protected Sub GridView1_RowCommand(sender As Object, e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand

        Dim c_name As String
        c_name = e.CommandName
        Dim id As String

        id = e.CommandArgument

        If (c_name = "DE") Then
            Dim con As SqlConnection
            con = New SqlConnection("Data Source=SHUBHAM\SRKING;Initial Catalog=carrentals;Integrated Security=True")
            con.Open()

            Dim query As String




            query = "delete from carinform where i_id=" + id

            Dim cmd As New SqlCommand(query, con)
            cmd.ExecuteNonQuery()
            con.Close()
            Response.Redirect("mcar.aspx")

        Else
            Dim que_st As String
            que_st = "mcar.aspx?ed_com=UP&&i_id=" + id

            Response.Redirect(que_st)

        End If
    End Sub


    'Protected Sub btnsubmit_Click(sender As Object, e As EventArgs) Handles btnsubmit.Click

    '    Dim data As Boolean

    '    data = True

    '    Dim con As SqlConnection
    '    con = New SqlConnection("Data Source=SHUBHAM\SRKING;Initial Catalog=carrentals;Integrated Security=True")
    '    con.Open()

    '    Dim query As String

    '    query = "insert into carinform values(@comname,@ctype,@cname,@crate,@status)"


    '    Dim cmd As New SqlCommand(query, con)

    '    cmd.Parameters.AddWithValue("@comname", txtcomname.Text)
    '    cmd.Parameters.AddWithValue("@ctype", txtctype.Text)
    '    cmd.Parameters.AddWithValue("@cname", txtcname.Text)
    '    cmd.Parameters.AddWithValue("@crate", txtcrate.Text)
    '    cmd.Parameters.AddWithValue("@status", Data)

    '    cmd.ExecuteNonQuery()
    '    con.Close()

    '    If (txtctype.Text.Contains("Economy")) Then
    '        Response.Redirect("economy.aspx")

    '    ElseIf (txtctype.Text.Contains("Standard")) Then
    '        Response.Redirect("standard.aspx")

    '    ElseIf (txtctype.Text.Contains("Luxury")) Then
    '        Response.Redirect("luxury.aspx")

    '    Else
    '        MsgBox("Please Check Your Inserted Data and Try Again... ", vbOKOnly)
    '        Response.Redirect("mcar.aspx")

    '    End If

    'End Sub

    Protected Sub btnedit_Click(sender As Object, e As EventArgs) Handles btnedit.Click

        Dim con As SqlConnection
        con = New SqlConnection("Data Source=SHUBHAM\SRKING;Initial Catalog=carrentals;Integrated Security=True")
        con.Open()

        Dim query As String

        query = "Update carinform set com_name=@comname,c_type=@ctype,c_name=@cname,c_rate=@crate where i_id=" + Request.QueryString("i_id")

        Dim cmd As New SqlCommand(query, con)

        cmd.Parameters.AddWithValue("@comname", txtcomname.Text)
        cmd.Parameters.AddWithValue("@ctype", txtctype.Text)
        cmd.Parameters.AddWithValue("@cname", txtcname.Text)
        cmd.Parameters.AddWithValue("@crate", txtcrate.Text)

        cmd.ExecuteNonQuery()
        con.Close()

        Session("ed") = ""

        Dim i As Integer
        If (txtctype.Text.Contains("Economy")) Then

            If (txtcname.Text <> "") Then
                Session("cname") = txtcname.Text
                Response.Redirect("meconomy.aspx")
            End If


        ElseIf (txtctype.Text.Contains("Standard")) Then

            If (txtcname.Text <> "") Then
                Session("cname") = txtcname.Text
                Response.Redirect("mstandard.aspx")
            End If

        ElseIf (txtctype.Text.Contains("Luxury")) Then
            If (txtcname.Text <> "") Then
                Session("cname") = txtcname.Text
                Response.Redirect("mluxury.aspx")
            End If

        Else
            MsgBox("Please Check Your Inserted Data and Try Again... ", vbOKOnly)
            Response.Redirect("mcar.aspx")
        End If
    End Sub
End Class
