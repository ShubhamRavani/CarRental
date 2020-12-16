<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="car.aspx.vb" Inherits="car" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

   
    
<title>CARS</title>
   
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



    <!-- body -->
			
				<header class="major">
                        <br />
                        <br />				    
                    <h2><strong> Cars</strong></h2>
                    <hr />
                
                    
					
				</header>

     	<section id="two" class="wrapper style2">
      
             <div class="container">
					<div class="row">

            <div class="4u">
                <section class="special">
			<div id="content" class="8u skel-cell-important">
			

                 <header class="major">
                   
						<h2>Economy</h2>
                       <hr />
					</header>


					<div class="col_1_of_4 span_1_of_4">
						<asp:Image ID="Image1" runat="server" ImageUrl="~/Cars/e1.jpg"></asp:Image>
						
                        <br />
                        <br />
						<div class="Details">
							<asp:LinkButton ID="LinkButton4" runat="server" class="button alt" PostBackUrl="~/ceconomy.aspx"><strong>Details</strong></asp:LinkButton>
						</div>
                    
					</div>




                


					<%--<div class="col_1_of_4 span_1_of_4">
						<img src="Cars/2.jpg" alt="" />
						<div class="grid_desc">
							<p class="title">Lorem ipsum dolor sitconsectetueradipis</p>
							<p class="title1">Lorem ipsum dolor sitconsectetueradipis</p>
							<div class="price1" style="height: 19px;">
								
								<span class="actual">$12.00</span>
							</div>
						</div>
                        <br />
						<div class="Details">
							<a href="single.html" title="Lorem ipsum dolor sit amet, consect etuer" class="button alt">Details
								<span></span>
							</a>
						</div>
                  
                          <hr />
					</div>


                


					<div class="col_1_of_4 span_1_of_4">
						<img src="Cars/3.jpg" alt="" />
						<div class="grid_desc">
							<p class="title">Lorem ipsum dolor sitconsectetueradipis</p>
							<p class="title1">Lorem ipsum dolor sitconsectetueradipis</p>
							<div class="price1" style="height: 19px;">
								
								<span class="actual">$12.00</span>
							</div>
						</div>
                        <br />
						<div class="Details">
							<a href="single.html" title="Lorem ipsum dolor sit amet, consect etuer" class="button alt">Details
								<span></span>
							</a>
						</div>
                
                          <hr />
                </div>--%>
                 
                <div class="clear"></div>
                </div>
                    </section>
                </div>



                
                  <div class="4u">
                      <section class="special">
                      <center>
                <div id="content" class="8u skel-cell-important">
                    
                    
                     <header class="major">
                   
						<h2>Standard</h2>
                     <hr />
					</header>


					<div class="col_1_of_4 span_1_of_4">
						<asp:Image ID="Image2" runat="server" ImageUrl="~/Cars/s1.jpg"></asp:Image>
						
                        <br />
                         <br />
						<div class="Details">
							<asp:LinkButton ID="LinkButton1" runat="server" class="button alt" PostBackUrl="~/cstandard.aspx"><strong>Details</strong></asp:LinkButton>
						</div>
                       
					</div>


			 


				<%--	<div class="col_1_of_4 span_1_of_4">
						<img src="Cars/5.jpg" alt="" />
						<div class="grid_desc">
							<p class="title">Lorem ipsum dolor sitconsectetueradipis</p>
							<p class="title1">Lorem ipsum dolor sitconsectetueradipis</p>
							<div class="price1" style="height: 19px;">
							
								<span class="actual">$12.00</span>
							</div>
						</div>
                        <br />
						<div class="Details">
							<a href="single.html" title="Lorem ipsum dolor sit amet, consect etuer" class="button alt">Details
								<span></span>
							</a>
						</div>
                      
                          <hr />
					</div>--%>



                    


					<%--<div class="col_1_of_4 span_1_of_4">
						<img src="Cars/6.jpg" alt="" />
						<div class="grid_desc">
							<p class="title">Lorem ipsum dolor sitconsectetueradipis</p>
							<p class="title1">Lorem ipsum dolor sitconsectetueradipis</p>
							<div class="price1" style="height: 19px;">
							
								<span class="actual">$12.00</span>
							</div>
						</div>
                        <br />
						<div class="Details">
							<a href="single.html" title="Lorem ipsum dolor sit amet, consect etuer" class="button alt">Details
								<span></span>
							</a>
						</div>
            
                          <hr />
					</div>--%>
                       
                    <div class="clear"></div>

                </div>
                          </center>
                          </section>
                </div>


                 <div class="4u">
                     <section class="special">
                     <center>
                <div id="content" class="8u skel-cell-important">

                     <header class="major">
                   
						<h2>Luxury</h2>
                  <hr />
					</header>


					<div class="col_1_of_4 span_1_of_4">
						<asp:Image ID="Image3" runat="server" ImageUrl="~/Cars/l1.jpg"></asp:Image>
						
                        <br />
                         <br />
						<div class="Details">
							<asp:LinkButton ID="LinkButton2" runat="server" class="button alt" PostBackUrl="~/cluxury.aspx"><strong>Details</strong></asp:LinkButton>
						</div>
                       
					</div>


                     


					<%--<div class="col_1_of_4 span_1_of_4">
						<img src="Cars/8.jpg" alt="" />
						<div class="grid_desc">
							<p class="title">Lorem ipsum dolor sitconsectetueradipis</p>
							<p class="title1">Lorem ipsum dolor sitconsectetueradipis</p>
							<div class="price1" style="height: 19px;">
								
								<span class="actual">$12.00</span>
							</div>
						</div>
                        <br />
						<div class="Details">
							<a href="single.html" title="Lorem ipsum dolor sit amet, consect etuer" class="button alt">Details
								<span></span>
							</a>
						</div>
                       
                        <hr />
					</div>--%>



                     



                    <%--	<div class="col_1_of_4 span_1_of_4">
						<img src="Cars/9.jpg" alt="" />
						<div class="grid_desc">
							<p class="title">Lorem ipsum dolor sitconsectetueradipis</p>
							<p class="title1">Lorem ipsum dolor sitconsectetueradipis</p>
							<div class="price1" style="height: 19px;">
								
								<span class="actual">$12.00</span>
							</div>
						</div>
                        <br />
						<div class="Details">
							<a href="single.html" title="Lorem ipsum dolor sit amet, consect etuer" class="button alt">Details
								<span></span>
							</a>
						</div>
                       
                        <hr />
					</div>--%>


					<div class="clear"></div>
		           </div>
                         </center>
                         </section>
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
			
                </center>
                </footer> 

               </form>
</asp:Content>

