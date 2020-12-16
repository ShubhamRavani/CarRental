'Imports System.Data
'Imports System.Data.Sql
'Imports System.Drawing
'Imports System.Data.SqlClient
'Imports System.Configuration
Partial Class cstandard
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        'If (Not (IsPostBack)) Then

        '    Dim con As SqlConnection
        '    con = New SqlConnection("Data Source=SHUBHAM\SRKING;Initial Catalog=carrentals;Integrated Security=True")
        '    con.Open()

        '    Dim str As String

        '    str = "select * from carinform"

        '    Dim cmd As New SqlCommand(str, con)
        '    Dim da As SqlDataAdapter
        '    da = New SqlDataAdapter(cmd)
        '    Dim dt As New DataTable
        '    da.Fill(dt)

        '    If dt.Rows.Count > 0 Then

        '        Session("ucname") = dt.Rows(1)(3).ToString
        '    End If
        '    con.Close()
        'End If

    End Sub
End Class
