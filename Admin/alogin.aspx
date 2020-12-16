<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/asite.master" AutoEventWireup="false" CodeFile="alogin.aspx.vb" Inherits="Admin_Default" %>

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
				<h1><a href="astart.aspx">CAR RENTALS </a></h1>
				<nav id="nav">
					<ul>
			           
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

						
                       <%-- <li><a href="ContactUs.aspx">CONTACT US</a></li>--%>
                          
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
                    
            <!-- Three -->
			<br />
				<div class="container">

                     <header class="major">
                        <br />
                        <br />				    
                        <h2><strong> LOGIN HERE</strong></h2>
                    <hr />
                
                    
					
				    </header>

					<div class="row">
					
                       
						<div class="6u">
                         <!-- Content -->
					<div id="content" class="8u skel-cell-important">
                      
                   
                      
                        
                        	
         
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
                                    
                         <br />
								<center>
														<br />
							<asp:Button ID="btnLogin" runat="server" Height="43px" Text="Login" 
                            Width="126px" />
                            
							                            <br />
                                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:carrentalsadminConnection %>" SelectCommand="SELECT * FROM [regi]"></asp:SqlDataSource>
                            
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

