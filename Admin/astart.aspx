﻿<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/asite.master" AutoEventWireup="false" CodeFile="astart.aspx.vb" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <title>CAR RENTALS</title>
<style>
    #P {
        text-align: center;
    }
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">

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


                            <div class ="sub_div">

                        
                                <ul class="">
                                    <li style="background-color:white; width:100px;"><a href="tcar.aspx">Add Car</a></li>
                                    <li style="background-color:white; width:100px;"><a href="mcar.aspx">Manage Car</a></li>
                                </ul>
                            </div>




						</li>
						<li><a href="mreserv.aspx">RESERVATION</a></li>
                        <%
                               
                        End If
                        %>

						
                        <%--<li><a href="ContactUs.aspx">CONTACT US</a></li>--%>
                          
                        <%
                            If (Session("a_id") <> "") Then
                         %>
                              <li><a href="alogout.aspx"  class="button special">Log Out</a></li>
                          <%
                          Else
                          %>
                             <li><a href="alogin.aspx"  class="button special">Log In</a></li>
                         <%
           End If
        
                        %>       
						
					</ul>
				</nav>
			</header>

		<!-- Banner -->
			<section id="banner">
				<div class="inner"><br /><br />
					<h2>WelCome To Our Site</h2>
					<p id="P">GREEN MEANS GO. ACCELERATING THE FUTURE!</p> 
					<ul class="actions">
                        <%
                            If (Session("a_id") <> "") Then
                        %>
                        <li><a href="alogout.aspx"  class="button big alt">Log Out</a></li>

                        <%
                        Else
                        %>
						<li><a href="alogin.aspx" class="button big alt">Log In</a></li>
                        
                        <% 
          End If
                        %>
                    </ul>
				</div>
			</section>
        			
          
    <footer id="footer">
   <center>
   <div class="6u">
					
					
					<ul class="copyright">
						<li><strong>&copy; Car Rentals. All rights reserved.</strong></li>
						<li><strong>Design By: Shubham Ravani & Harshil Ramanuj. </strong></li>
						<%--<li>Images: <a href="http://unsplash.com">Google/Suport</a></li>--%>
					</ul>
				
                </center>
                </footer


</asp:Content>
