<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="ContactUs.aspx.vb" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

     <head>
    
<title>CONTACT US</title>
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
</head>


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



     <!-- body -->
			
				<header class="major">
<br />
<br />				    
                    <h2><strong> Contact Us</strong></h2>
                    <hr />
                	<p ><strong>Feel free to Contact Us. Thank You!</strong></p>
                    
					
				</header>
				


         <!--contact -->
	<div class="container">
		<div class="row">	
		
			<div class="8u">
			 
                   
			
				
			
                      <asp:TextBox ID="txtname" runat="server" placeholder="Name*"></asp:TextBox>
				
		
						  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Your Name" ControlToValidate="txtname" ForeColor="Red"></asp:RequiredFieldValidator>
				
		
						  <asp:TextBox ID="txtmail" runat="server" placeholder="Email*" TextMode="Email"></asp:TextBox>
	                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Your Email" ControlToValidate="txtmail" ForeColor="Red"></asp:RequiredFieldValidator>
		
					  <asp:TextBox ID="txtmobino" runat="server" placeholder="Mobile No.*" MaxLength="10"></asp:TextBox>

                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtmobino" ErrorMessage="Please Enter Your Mobile No" ForeColor="Red"></asp:RequiredFieldValidator>

                 <asp:TextBox ID="txtmsg" runat="server" placeholder="Message*" TextMode="MultiLine"></asp:TextBox>
					   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtmsg" ErrorMessage="Please Enter Your Feedback" ForeColor="Red"></asp:RequiredFieldValidator>
					   <br />
                <center>
                    <asp:Button ID="btnsubmit" runat="server" Text="Submit" />
					&nbsp;&nbsp;&nbsp;
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:carrentalsConnection %>" SelectCommand="SELECT * FROM [con]"></asp:SqlDataSource>
			</center>	
			</div>


            <div class="4u">

                <p class="phone"><strong> Phone : </strong>+91 94265 57366
							<br /><span><strong> Email : </strong><a href="https://mail.google.com/mail/shubhamravani67890@gmail.com">shubhamravani67890@gmail.com</a></span>
				</p>

                 
                <div class="agileits-social-grids">
                <ul class="icons">
								<li><a href="http://www.twitter.com/shubham_ravani" class="icon fa-twitter-square"><span class="label">Twitter</span></a></li>
								<li><a href="https://www.facebook.com/shubham.ravani.555" class="icon fa-facebook-square"><span class="label">Facebook</span></a></li>
								<li><a href="http://www.instagram.com/shubham_ravani" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
				</ul>
                </div>
            </div>
		</div>
	</div>		
	<!--//contact -->

         <br /><br />

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

