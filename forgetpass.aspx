<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="forgetpass.aspx.vb" Inherits="forgetpass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <title>Forget Password</title>
   
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
		<section>
				<div class="container">
                    <header class="major">
                        <br />
                        <br />				    
                        <h2><strong> FORGET PASSWORD</strong></h2>
                    <hr />
                
                    
					
				    </header>

                        <div class="4u">
                 


                        
                       Email Address :<asp:TextBox ID="txtemail" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>					
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtemail" ErrorMessage="Please Enter Your Email" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="txtemail" ErrorMessage="Invalid Email Address" ForeColor="Red" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                          <br />
                                <asp:Label ID="lblMessage" runat="server" />
                            <br />
                             <center>
                                 <asp:Button ID="Btnsubmit" runat="server" Text="Submit" Height="41px"></asp:Button>
                                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:carrentalsConnection %>" SelectCommand="SELECT [firstname], [pass_word] FROM [regis]"></asp:SqlDataSource>
                             </center>
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
			
                </center>
                </footer> 

        </form>


</asp:Content>

