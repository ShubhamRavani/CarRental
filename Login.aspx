<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>LOG IN</title>
   
    <script language="javascript" type="text/javascript">
// <![CDATA[

        

        

// ]]>
    </script>
<style>
#p
{
    text-align:justify;
}
#P
{
    text-align:center;
}

</style>
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
                    
            <!-- Three -->
			<br />
				<div class="container">
					<div class="row">
						<div class="8u">
						   
			
								&nbsp;&nbsp;&nbsp;
								<a href="#" class="image fit"><img src="images/login.jpg" alt="" /></a>
								<p id="p">This service will work 24x7. This system works online so allow anyone to book or rent a vehicle in a city without any time restriction. This system allows the customer to board the vehicle at his choice of location, pay for the rental online and could provide valuable feedback for improvement in services.  With the help of a car rental management system you can maximize the revenue by increasing your reach to customers. User can also keep the detail of car route. Using car rental system your customer can view the routs and fare for that routs. It helps him to take decision of hiring a car for their journey. By using it your customers will be able to get estimate quotes, see estimated fare summary and make Car online reservations from your website, with just a few clicks. This system also keep the information of cancellation and modification of booking in current month. This facility take the admin control over booking of the car as he can cancel the car booking if car is not available or there is some issue in booking a particular car booking. This system also helps the administrator to check the business of the company.</p> 
                               






						
						</div>
                       
						<div class="4u">
                         <!-- Content -->
					<div id="content" class="8u skel-cell-important">
                    <header class="major">
                    <br />
						<h2><strong>Login Here</strong></h2>
						
					</header>
                      
                        
                        	<hr />
                          
                        <asp:TextBox ID="txtmail" runat="server" placeholder="Email"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtmail" ErrorMessage="Please Enter Your Email" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="txtmail" ErrorMessage="Invalid Email" ForeColor="Red" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        
                                    <br />
                        
                      <asp:TextBox ID="txtpass" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpass" ErrorMessage="Please Enter Your Password" ForeColor="Red"></asp:RequiredFieldValidator>
                  
                        <br />
                        <asp:HyperLink ID="lbpass" runat="server" Text ="Forget Password?" NavigateUrl="~/forgetpass.aspx" ></asp:HyperLink>
                        <asp:Label ID="errormsg" runat="server" ></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                 <br />
								<center>
														<br />
							<asp:Button ID="btnLogin" runat="server" Height="43px" Text="Login" 
                            Width="126px" />
                            <br /><br />
							<a href="Registration.aspx" class="button">Register Now</a>
							</center>		
							<br />
							 </div>
                        </div>
						</div>
					</div>
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

