<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="aboutus.aspx.vb" Inherits="_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<head>
    
<title>ABOUT US</title>
<style>
#p
{
    text-align:justify;
}
</style>

</head>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
<form runat="server">

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

		
<!-- body -->
			
				<header class="major">
                    <br />
                    <br />				    
                    <h2><strong> About Us</strong></h2>
                    <hr />
                
                    
					
				</header>
				<div class="container">
					<section>
						
						<a href="#" class="image fit"><img src="images/home.jpg" alt="" /></a>
						<p id="p">We developed this project to book a car on rent at the fare charges. In present system all booking work done manually and it takes very hard work to maintain the information of booking and cars. If you want to find which vehicle is available for booking then it takes a lot of time. It only makes the process more difficult and hard. This aim of the project is to automate the work performed in the car rental management system like generating daily bookings, records of car or cab available for booking, record of routes available, rental charges for cars for every rout, store record of the customer.</p>
						<p id="p">Car Rental system is a car booking software that provides a complete solution to all your day-to-day car booking office running needs. This system helps you to keep the information of Customer online. Car Rental system is a unique and innovative product. Based on this information you can take decision regarding your business development...</p>
					
                    </section>
					<hr class="major" />
		
        </div>
        			
          
    
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

