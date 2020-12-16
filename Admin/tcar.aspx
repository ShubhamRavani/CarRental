<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="tcar.aspx.vb" Inherits="tcar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <title>Add Car</title>

    <script language="javascript" type="text/javascript">
        // <![CDATA[





        // ]]>
    </script>
    <style>
        #p {
            text-align: justify;
        }

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
            <h1><a href="../astart.aspx">CAR RENTALS </a></h1>
            <nav id="nav">
                <ul>
                    <%--  <li><a href="aboutus.aspx">ABOUT US</a></li>--%>
                    <%     
                        If (Session("a_id") <> "") Then
                    %>
                    <li><a href="../aaccount.aspx">ACCOUNT</a></li>
                    <li class="car_di">CARS


                            <div class="sub_div">


                                <ul class="">
                                    <li style="background-color: white; width: 100px;"><a href="tcar.aspx">Add Car</a></li>
                                    <li style="background-color: white; width: 100px;"><a href="mcar.aspx">Manage Car</a></li>
                                </ul>
                            </div>




                    </li>
                    <li><a href="../mreserv.aspx">RESERVATION</a></li>
                    <%
                               
                    End If
                    %>


                    <%--<li><a href="ContactUs.aspx">CONTACT US</a></li>--%>

                    <%
                        If (Session("a_id") <> "") Then
                    %>
                    <li><a href="../alogout.aspx" class="button special">Log Out</a></li>
                    <%
                    Else
                    %>
                    <li><a href="../alogin.aspx" class="button special">Log In</a></li>
                    <%
                    End If
        
                    %>
                </ul>
            </nav>
        </header>


        <!-- Add Car -->
        <section>
            <div class="container">
                <header class="major">
                    <br />
                    <br />
                    <h2><strong>ADD CAR</strong></h2>
                    <hr />



                </header>

                <div class="6u">


                     <asp:DropDownList ID="ddlctype" runat="server" DataSourceID="SqlDataSource1" DataTextField="c_type" DataValueField="c_type">
                        <asp:ListItem>Economy</asp:ListItem>
                        <asp:ListItem>Standard</asp:ListItem>
                        <asp:ListItem>Luxury</asp:ListItem>
                    </asp:DropDownList>

                    <br />
                    <br />
                    <center>
                                 <asp:Button ID="Btnsubmit" runat="server" Text="Submit" Height="41px"></asp:Button>
                                 
                                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:carrentalsConnection %>" SelectCommand="SELECT * FROM [car]"></asp:SqlDataSource>
                                 
                             </center>
                </div>
        </section>



        <footer id="footer">
            <center>
                <div class="6u">
		
					<ul class="copyright">
						<li><strong>&copy; Car Rentals. All rights reserved.</strong></li>
						<li><strong>Design By: Shubham Ravani. </strong></li>
                            <%--<li>Images: <a href="http://unsplash.com">Google/Suport</a></li>--%>
					</ul>
				</div>
                </center>
        </footer>
    </form>
</asp:Content>

