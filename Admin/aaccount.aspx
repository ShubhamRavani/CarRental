<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/asite.master" AutoEventWireup="false" CodeFile="aaccount.aspx.vb" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <title>Edit Account</title>
   
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
			          <%--  <li><a href="aboutus.aspx">ABOUT US</a></li>--%>
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
                    

          <!-- Edit Account -->
		<section>
				<div class="container">
                    <header class="major">
                        <br />
                        <br />				    
                        <h2><strong> EDIT ACCOUNT</strong></h2>
                    <hr />
                
                    
					
				    </header>

                                           <div class="6u">
                 

                      <asp:TextBox ID="txtfirst" runat="server" placeholder="First Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtfirst" ErrorMessage="Please Enter Your First Name" 
                            ForeColor="Red"></asp:RequiredFieldValidator>

                                               <br />
                                               
                      <asp:TextBox ID="txtlast" runat="server" placeholder="Last Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtlast" ErrorMessage="Pease Enter Your Last Name" ForeColor="Red"></asp:RequiredFieldValidator>

                                               <br />

                    <asp:TextBox ID="txtcontact" runat="server" placeholder="Contact No" MaxLength="10"></asp:TextBox>
                     
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtcontact" ErrorMessage="Please Enter Your Contact No." 
                            ForeColor="Red"></asp:RequiredFieldValidator>

                                                    <br />
                     <asp:TextBox ID="txtemail" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>					
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtemail" ErrorMessage="Please Enter Your Email" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="txtemail" ErrorMessage="Invalid Email Address" ForeColor="Red" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                                               <br />

                      <asp:TextBox ID="txtpass" runat="server" placeholder="New Password" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="txtpass" ErrorMessage="Please Enter Your Password" ForeColor="Red"></asp:RequiredFieldValidator>

                                              <br />

                      <asp:TextBox ID="txtcompass" runat="server" placeholder="Confirm password" 
                            TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="txtcompass" ErrorMessage="Please Re-enter Your Password" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="txtpass" ControlToValidate="txtcompass" 
                            ErrorMessage="Password Not Matched" ForeColor="Red"></asp:CompareValidator>
                        

                                              <br />

                                <asp:Label ID="lblMessage" runat="server" />

                                                 <br />
                             <center>
                                 <asp:Button ID="Btnsubmit" runat="server" Text="Submit" Height="41px"></asp:Button>
                                 
                                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:carrentalsadminConnection %>" SelectCommand="SELECT * FROM [regi]"></asp:SqlDataSource>
                                 
                             </center>
                        </div>
                </div>
            </section>



        <footer id="footer">
   <center>
   <div class="6u">
		
					<ul class="copyright">
						<li><strong>&copy; Car Rentals. All rights reserved.</strong></li>
						<li><strong>Design By: Shubham Ravani & Harshil Ramanuj.</strong></li>
					</ul>
				</div>
                </center>
                </footer>						
    </form>

</asp:Content>

