<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="reserv.aspx.vb" Inherits="Reservation_reserv" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <title>Make A Reservation</title>

    <script language="javascript" type="text/javascript">

        function checkClosingDate(sender, args)
        {
            if (sender._selectedDate < new Date())
            {

                alert("Day earlier than today cannot be selected.");

            }
            else if(sender._selectedDate >= new Date())
            {
                sender._textbox.set_Value(sender._selectedDate.format(sender._format))
            }
        }
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
				<h1><a href="start.aspx">CAR RENTALS </a></h1>
				<nav id="nav">
					<ul>
			            <li><a href="aboutus.aspx">ABOUT US</a></li>
                           <%     
                           If (Session("u_id") <> "") Then
                                %>
                        <li><a href="uaccount.aspx">ACCOUNT</a></li>
                         <%
                               
                            End If
                        %>

						<li class="car_di"><a href="car.aspx">CARS</a>


                            <div class ="sub_div">

                        
                      <ul class="">
                                    <li style="background-color:white; width:100px;"><a href="ceconomy.aspx">Economy</a></li>
                                    <li style="background-color:white; width:100px;"><a href="cstandard.aspx">Standard</a></li>
                                    <li style="background-color:white; width:100px;"><a href="cluxury.aspx">Luxury</a></li>
                       </ul>
                            </div>




						</li>
						
                        <li><a href="ContactUs.aspx">CONTACT US</a></li>
                          
                       <%
                            If (Session("u_id") <> "") Then
                         %>
                              <li><a href="Logout.aspx"  class="button special">Log Out</a></li>
                                 <%
                          Else
                          %>
                             <li><a href="Login.aspx"  class="button special">Log In</a></li>
                          <%
                         End If
        
                        %>      
						
					</ul>
				</nav>
			</header>



        <header class="major">
                    <br />
                    <br />				    
                    <h2><strong> Make A Reservation</strong></h2>
                    <hr />
                
                    
					
				</header>


        <div class="container">
            <div class="row">

                <div class="4u">

                    <asp:TextBox ID="txtname" runat="server" placeholder="Name*"></asp:TextBox>
                    <br />

                    <asp:TextBox ID="txtmail" runat="server" placeholder="Email*" TextMode="Email"></asp:TextBox>
                    <br />

                    <asp:TextBox ID="txtcontact" runat="server" placeholder="Contact No.*" MaxLength="10"></asp:TextBox>
                    <br />
                    <br />
                    <asp:ScriptManager ID="ScriptManager1" runat="server" EnableScriptGlobalization="true" EnableScriptLocalization="true"></asp:ScriptManager>
                    <asp:TextBox ID="txtdedate" placeholder="Departure Date*" runat="server"></asp:TextBox>
                    <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtdedate" PopupButtonID="txtdedate" Format="dd/MM/yyyy" OnClientDateSelectionChanged="checkClosingDate"></asp:CalendarExtender>

                    <br />
                    <asp:TextBox ID="txtredate" placeholder="Return Date*" runat="server"></asp:TextBox>
                    <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txtredate" PopupButtonID="txtredate" Format="dd/MM/yyyy"></asp:CalendarExtender>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Only Date greater then 7 Days from Current Date can be entered." ForeColor="Red" Type="Date" ControlToCompare="txtdedate" ControlToValidate="txtredate" Operator="GreaterThanEqual" Display="Dynamic"></asp:CompareValidator>
                    <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" TargetControlID="CompareValidator1"></asp:ValidatorCalloutExtender>
                    <br />
                    <br />
                    <asp:TextBox ID="txtctype" placeholder="Car Type*" runat="server" Width="275px" Enabled="False"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="txtcname" placeholder="Car Name*" runat="server" Width="275px" Enabled="False"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="txtcrate" placeholder="Car Rate*" runat="server" Width="275px" Enabled="False"></asp:TextBox>
                    <br />
                    <asp:Label ID="lblMessage" runat="server" />
                    <br />

                    <br />
                    <center>

                    <asp:Button ID="btnsubmit" runat="server" Text="Submit" />
					&nbsp;&nbsp;&nbsp;
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:carrentalsConnection %>" SelectCommand="SELECT * FROM [reservation]"></asp:SqlDataSource>
			        </center>
                </div>

            </div>
        </div>
        <!--//reservation -->

        <br />
        <br />






        <footer id="footer">
            <center>
                 <div class="6u">
					
					
					<ul class="copyright">
						<li><strong>&copy; Car Rentals. All rights reserved.</strong></li>
						<li><strong>Design By: Shubham Ravani. </strong></li>
                            <%--<li>Images: <a href="http://unsplash.com">Google/Suport</a></li>--%>
					</ul>
			
                </center>
                </footer>

    </form>

</asp:Content>

