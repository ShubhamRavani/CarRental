<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Logout.aspx.vb" Inherits="gallary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
     <form id="form1" runat="server">

          <style>
        
        .sub_div
        {
            width:150px; height:100px; margin-left:-7%; position:absolute;
            display:none;
           
        }
        .sub_div ul li
        {
            list-style-type:none
        }
        .car_di:hover .sub_div
        {
            display:block
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


          <footer id="footer">
   <center>
   <div class="6u">
		
					<ul class="copyright">
						<li><strong>&copy; Car Rentals. All rights reserved.</strong></li>
						<li><strong>Design By: Shubham Ravani.</strong></li>
					<%--	<li>Images: <a href="http://unsplash.com">Google/Suport</a></li>--%>
					</ul>
				</div>
                </center>
                </footer>						
    </form>
</asp:Content>

