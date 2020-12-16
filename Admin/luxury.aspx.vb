﻿Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO
Imports AjaxControlToolkit
Partial Class Admin_Default
    Inherits System.Web.UI.Page
    Protected i1, i2, i3, i4, i5, i6 As String

    Protected Sub Btnsubmit_Click(sender As Object, e As EventArgs) Handles Btnsubmit.Click

        Dim hfc As HttpFileCollection = Request.Files
        If (hfc.Count - 1 < 6) Then

            Dim db_img(6) As String

            For i As Integer = 0 To hfc.Count - 1


                Dim hpf As HttpPostedFile = hfc(i)
                '            ' Random number code
                Dim stor_no As String = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
                Dim random_no As New Random
                Dim sb As New StringBuilder
                For ii As Integer = 1 To 14
                    Dim idx As Integer = random_no.Next(0, 35)
                    sb.Append(stor_no.Substring(idx, 1))
                Next
                Dim new_path As String
                new_path = sb.ToString()

                hpf.SaveAs(Server.MapPath("~/Admin/Cars/Image/") + new_path + hpf.FileName)

                Dim db_path As String
                db_path = "Admin/Cars/Image/" + new_path + hpf.FileName
                db_img(i) = db_path.ToString()



            Next

            If (db_img(0) = "") Then
                i1 = ""
            Else
                i1 = db_img(0)
            End If

            If (db_img(1) = "") Then
                i2 = ""
            Else
                i2 = db_img(1)
            End If


            If (db_img(2) = "") Then
                i3 = ""
            Else
                i3 = db_img(2)
            End If

            If (db_img(3) = "") Then
                i4 = ""
            Else
                i4 = db_img(3)
            End If

            If (db_img(4) = "") Then
                i5 = ""
            Else
                i5 = db_img(4)
            End If

            If (db_img(5) = "") Then
                i6 = ""
            Else
                i6 = db_img(5)
            End If

        Else
            MsgBox("Please Select Image < 6")
        End If


        Dim con As New SqlConnection("Data Source=SHUBHAM\SRKING;Initial Catalog=carrentals;Integrated Security=True")
        con.Open()

        Dim str As String
        str = "Insert into luxurycar values(@cname,@img1,@img2,@img3,@img4,@img5,@img6,@mileage,@ftype,@ftank,@engine,@bhp,@cylinders,@gears,@cruise,@sunroof,@seatcap,@boot,@sensor,@airbags)"


        Dim cmd As New SqlCommand(str, con)

        cmd.Parameters.AddWithValue("@cname", txttypec.Text)
        'cmd.Parameters.AddWithValue("@cid", lblid.Text)

        cmd.Parameters.AddWithValue("@img1", i1)
        cmd.Parameters.AddWithValue("@img2", i2)
        cmd.Parameters.AddWithValue("@img3", i3)
        cmd.Parameters.AddWithValue("@img4", i4)
        cmd.Parameters.AddWithValue("@img5", i5)
        cmd.Parameters.AddWithValue("@img6", i6)

        cmd.Parameters.AddWithValue("@mileage", txtmileage.Text)
        cmd.Parameters.AddWithValue("@ftype", ddlftype.Text)
        cmd.Parameters.AddWithValue("@ftank", txtftank.Text)

        cmd.Parameters.AddWithValue("@engine", txtengine.Text)
        cmd.Parameters.AddWithValue("@bhp", txtbhp.Text)
        cmd.Parameters.AddWithValue("@cylinders", txtcylinders.Text)
        cmd.Parameters.AddWithValue("@gears", txtgears.Text)

        cmd.Parameters.AddWithValue("@cruise", ddlcruise.Text)
        cmd.Parameters.AddWithValue("@sunroof", ddlsunroof.Text)
        cmd.Parameters.AddWithValue("@seatcap", txtseatcap.Text)
        cmd.Parameters.AddWithValue("@boot", txtboot.Text)

        cmd.Parameters.AddWithValue("@sensor", ddlsensor.Text)
        cmd.Parameters.AddWithValue("@airbags", ddlairbags.Text)

        cmd.ExecuteNonQuery()

        con.Close()

        Response.Redirect("mcar.aspx")
    End Sub

   
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        If (Not (IsPostBack)) Then

            Dim con As SqlConnection
            con = New SqlConnection("Data Source=SHUBHAM\SRKING;Initial Catalog=carrentals;Integrated Security=True")
            con.Open()

            Dim query As String

            query = "select * from carinform where i_id=" & Session("i_id")

            Dim cmd1 As New SqlCommand(query, con)
            Dim da As SqlDataAdapter
            da = New SqlDataAdapter(cmd1)
            Dim dt As New DataTable
            da.Fill(dt)





            If dt.Rows.Count > 0 Then

                txttypec.Text = Session("c_name")



            End If
            con.Close()

        End If
    End Sub

End Class
