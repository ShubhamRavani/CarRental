<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/asite.master" AutoEventWireup="false" CodeFile="mcar.aspx.vb" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>MANAGE CAR</title>
    <style>
        #P {
            text-align: center;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">

    <form id="form1" runat="server">

        <style>
            .sub_div {
                width: 150px;
                height: 100px;
                margin-left: -7%;
                position: absolute;
                display: none;
            }

                .sub_div ul li {
                    list-style-type: none;
                }

            .car_di:hover .sub_div {
                display: block;
            }
        </style>

        <!-- Header -->
        <header id="header" class="skel-layers-fixed">
            <h1><a href="astart.aspx">CAR RENTALS </a></h1>
            <nav id="nav">
                <ul>
                    <%--<li><a href="aboutus.aspx">ABOUT US</a></li>--%>
                    <%     
                        If (Session("a_id") <> "") Then
                    %>
                    <li><a href="aaccount.aspx">ACCOUNT</a></li>
                    <li class="car_di">CARS


                            <div class="sub_div">


                                <ul class="">
                                    <li style="background-color: white; width: 100px;"><a href="tcar.aspx">Add Car</a></li>
                                    <li style="background-color: white; width: 100px;"><a href="mcar.aspx">Manage Car</a></li>
                                </ul>
                            </div>




                    </li>
                    <li><a href="mreserv.aspx">RESERVATION</a></li>
                    <%
                               
                    End If
                    %>


                    <%-- <li><a href="ContactUs.aspx">CONTACT US</a></li>--%>

                    <%
                        If (Session("a_id") <> "") Then
                    %>
                    <li><a href="alogout.aspx" class="button special">Log Out</a></li>
                    <%
                    Else
                    %>
                    <li><a href="alogin.aspx" class="button special">Log In</a></li>
                    <%
                    End If
        
                    %>
                </ul>
            </nav>
        </header>


        <br />
        <div class="container">

            <header class="major">
                <br />
                <br />
                <h2><strong>MANAGE CAR</strong></h2>
                <hr />



            </header>
            <center>
            <div class="row">

                <div class="6u">
					<div class="8u skel-cell-important">
                         <%
                             If (Request.QueryString("i_id") <> "") Then
                         %>
                        <asp:TextBox ID="txtcomname" runat="server" placeholder="Company Name*" Enabled="False"></asp:TextBox>
                        <br />

                        <asp:TextBox ID="txtctype" runat="server" placeholder="Car Type*" Enabled="False"></asp:TextBox>
                        <br />

                        <asp:TextBox ID="txtcname" runat="server" placeholder="Car Name*" Enabled="False"></asp:TextBox>
                        <br />

                        <asp:TextBox ID="txtcrate" runat="server"  placeholder="Car Rate*"></asp:TextBox>
                        <br />
                        <br />
                       
                          <asp:Button ID="btnedit" runat="server" Text="Edit" />
                      <%--<%
                      Else
                      %>
                         <asp:Button ID="btnsubmit" runat="server" Text="Submit" />--%>
                      <%
                      End If
                      %> 
                    </div>
                </div>
            </div>
                </center>
            <br />
            <br />

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="i_id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="i_id" HeaderText="i_id" InsertVisible="False" ReadOnly="True" SortExpression="i_id" />
                    <asp:BoundField DataField="com_name" HeaderText="com_name" SortExpression="com_name" />
                    <asp:BoundField DataField="c_type" HeaderText="c_type" SortExpression="c_type" />
                    <asp:BoundField DataField="c_name" HeaderText="c_name" SortExpression="c_name" />
                    <asp:BoundField DataField="c_rate" HeaderText="c_rate" SortExpression="c_rate" />
                    <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="btnupdate" runat="server" Text="Update" CommandName="UP" CommandArgument='<%#Eval("i_id")%>' />
                            <asp:Button ID="btndelete" runat="server" Text="Delete" CommandName="DE" CommandArgument='<%#Eval("i_id")%>' />

                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>


            </asp:GridView>







            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:carrentalsConnection %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [carinform]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [carinform] WHERE [i_id] = @original_i_id AND [com_name] = @original_com_name AND [c_type] = @original_c_type AND [c_name] = @original_c_name AND [c_rate] = @original_c_rate AND [status] = @original_status" InsertCommand="INSERT INTO [carinform] ([com_name], [c_type], [c_name], [c_rate], [status]) VALUES (@com_name, @c_type, @c_name, @c_rate, @status)" UpdateCommand="UPDATE [carinform] SET [com_name] = @com_name, [c_type] = @c_type, [c_name] = @c_name, [c_rate] = @c_rate, [status] = @status WHERE [i_id] = @original_i_id AND [com_name] = @original_com_name AND [c_type] = @original_c_type AND [c_name] = @original_c_name AND [c_rate] = @original_c_rate AND [status] = @original_status">
                <DeleteParameters>
                    <asp:Parameter Name="original_i_id" Type="Int32" />
                    <asp:Parameter Name="original_com_name" Type="String" />
                    <asp:Parameter Name="original_c_type" Type="String" />
                    <asp:Parameter Name="original_c_name" Type="String" />
                    <asp:Parameter Name="original_c_rate" Type="String" />
                    <asp:Parameter Name="original_status" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="com_name" Type="String" />
                    <asp:Parameter Name="c_type" Type="String" />
                    <asp:Parameter Name="c_name" Type="String" />
                    <asp:Parameter Name="c_rate" Type="String" />
                    <asp:Parameter Name="status" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="com_name" Type="String" />
                    <asp:Parameter Name="c_type" Type="String" />
                    <asp:Parameter Name="c_name" Type="String" />
                    <asp:Parameter Name="c_rate" Type="String" />
                    <asp:Parameter Name="status" Type="Int32" />
                    <asp:Parameter Name="original_i_id" Type="Int32" />
                    <asp:Parameter Name="original_com_name" Type="String" />
                    <asp:Parameter Name="original_c_type" Type="String" />
                    <asp:Parameter Name="original_c_name" Type="String" />
                    <asp:Parameter Name="original_c_rate" Type="String" />
                    <asp:Parameter Name="original_status" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>







        </div>


        <footer id="footer">
            <center>
                <div class="6u">
		
					<ul class="copyright">
						<li><strong>&copy; Car Rentals. All rights reserved.</strong></li>
						<li><strong>Design By: Shubham Ravani & Harshil Ramanuj.</strong></li>
					<%--	<li>Images: <a href="http://unsplash.com">Google/Suport</a></li>--%>
					</ul>
				</div>
                </center>
        </footer>
    </form>

</asp:Content>

