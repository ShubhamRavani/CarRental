<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Registration.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <title>REGISTRATION</title>
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
		<section>
				<div class="container">
					<div class="row">
						<div class="8u">
                        <br />
                        <br />
						   
								&nbsp;&nbsp;&nbsp;
								<a href="#" class="image fit"><img src="images/05.jpg" alt="" /></a>
								<p id="p">A car rental is a vehicle that can be used temporarily for a period of time with a fee. Renting a car assists people to get around even when they do not have access to their own personal vehicle or don't own a vehicle at all. The individual who want to rent a car must first contact the car rental company for the desire vehicle. This can be done online. At this point, this person has to supply some information such as; dates of rental, and type of car. After these details are worked out, the individual renting the car must present a valid Identification Card. Most companies throughout the industry make a profit based of the type of cars that are rented. The rental cars are categorized into Economy, Standard and Luxury. And customers are free to choose any car of their choice based on their purse and availability of such car at the time of reservation.</p> 
                               
                            
                            
                            	
						</div>
						<div class="4u">
                         <!-- Content -->
					<div id="content" class="8u skel-cell-important">
                    <header class="major">
                    <br />
                    <br />
						<h2><strong>Register Now</strong></h2>
                        <hr />
					</header>
				     First Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtfirst" runat="server" placeholder="First Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtfirst" ErrorMessage="Please Enter Your First Name" 
                            ForeColor="Red"></asp:RequiredFieldValidator>

                     <br />Last Name  :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtlast" runat="server" placeholder="Last Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtlast" ErrorMessage="Pease Enter Your Last Name" ForeColor="Red"></asp:RequiredFieldValidator>

                     <br />Address :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtaddress" runat="server" placeholder="Address"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtaddress" ErrorMessage="Please Enter Your Address" 
                            ForeColor="Red"></asp:RequiredFieldValidator>  
    
                   

                 
                     
                    
                       
                       
                     
                       <br />Post code :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
                            ID="txtpostcode" runat="server" placeholder="Post Code" MaxLength="6"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="txtpostcode" ErrorMessage="Please Enter Your Post Code" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                     <br />Contact No :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtcontact" 
                            runat="server" placeholder="Contact No" MaxLength="10"></asp:TextBox>
                     
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                            ControlToValidate="txtcontact" ErrorMessage="Please Enter Your Contact No." 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                     
                     <br />Gender :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
					                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                            <asp:ListItem>Male</asp:ListItem>
                                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                                        
                                        <br />Email Address :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtemail" runat="server" placeholder="Email"></asp:TextBox>					
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                            ControlToValidate="txtemail" ErrorMessage="Please Enter Your Email" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="txtemail" ErrorMessage="Invalid Email" ForeColor="Red" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        
                   <br />Password :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtpass" 
                            runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                            ControlToValidate="txtpass" ErrorMessage="Please Enter Your Password" ForeColor="Red"></asp:RequiredFieldValidator>
                  <br />Confirm Password :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
                            ID="txtcompass" runat="server" placeholder="Confirm password" 
                            TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                            ControlToValidate="txtcompass" ErrorMessage="Please Re-enter Your Password" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="txtpass" ControlToValidate="txtcompass" 
                            ErrorMessage="Not Matched" ForeColor="Red"></asp:CompareValidator>
                        <br />
                        <asp:Label ID="errormsg" runat="server"></asp:Label>
                        <ul class="actions">
								
								<br />
                                 <center>
                                <asp:Button ID="Btnsubmit" runat="server" Text="Submit" Height="41px"></asp:Button>
								     
								     								     
								     <br />
                                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:carrentalsConnection %>" SelectCommand="SELECT [firstname], [lastname], [address], [postcode], [contact], [gender], [email], [pass_word] FROM [regis]"></asp:SqlDataSource>

								     								     
								</center>  
								
							</ul>
							
						</div>
					</div>
				</div>
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

