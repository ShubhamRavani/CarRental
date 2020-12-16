<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="ceconomy.aspx.vb" Inherits="c" %>

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
		
				<%--<header class="major">
                        <br />
                        <br />				    
                    <h2> Car</h2>
                    <hr />
                
                    
					
				</header>--%>
        


         <!--Economy-->



     	<section id="two" class="wrapper style2">
                <center>
                    <header class="major">
                   
						<h2>Economy</h2>
                       <hr />
					</header>

            <div class="container">
			    <div class="row">
					 <div class="4u">
                         <section class="special box">
						<asp:Image ID="Image1" runat="server" ImageUrl="~/Cars/e1.jpg" Width="230px"></asp:Image>
						<div class="grid_desc">
							<asp:DataList ID="DataList1" runat="server" DataKeyField="i_id" DataSourceID="SqlDataSource1">
                                    <ItemTemplate>
                                        <p class="title">
                                            <asp:Label ID="com_nameLabel" runat="server" Text='<%# Eval("com_name") %>' Font-Bold="True" />
                                            <br />
                                            <asp:Label ID="c_nameLabel" runat="server" Text='<%# Eval("c_name") %>' Font-Bold="True" />
                                            <br />
                                        </p>
                                        <div class="price1" style="height: 19px;">
                                            <asp:Label ID="c_rateLabel" runat="server" Text='<%# Eval("c_rate") %>' Font-Bold="True" />
                                            <span class="actual"></span>
							            </div>
                                    </ItemTemplate>
                                </asp:DataList>
							    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:carrentalsConnection1 %>" SelectCommand="SELECT * FROM [carinform] WHERE [com_name]=@com_name">
                                    <SelectParameters>
                                        <asp:Parameter  Name="com_name" DefaultValue="Volkswagen" Type="String" />
                                    </SelectParameters>
							    </asp:SqlDataSource>
						</div>
                        <br />
						<div class="Details">
							<asp:LinkButton ID="LinkButton1" runat="server" class="button alt" PostBackUrl="~/ecopolo.aspx">Details</asp:LinkButton>
						</div>
                    
                         </section>
					</div>



					 <div class="4u">
                         <section class="special box">
						<asp:Image ID="Image2" runat="server" ImageUrl="~/Cars/e2.jpg" Width="230px"></asp:Image>
						<div class="grid_desc">
							<asp:DataList ID="DataList2" runat="server" DataKeyField="i_id" DataSourceID="SqlDataSource2">
                                        <ItemTemplate>
                                            <p class="title">
                                                <asp:Label ID="com_nameLabel" runat="server" Text='<%# Eval("com_name") %>' Font-Bold="True" />
                                                <br />
                                                <asp:Label ID="c_nameLabel" runat="server" Text='<%# Eval("c_name") %>' Font-Bold="True" />
                                                <br />
                                            </p>
                                            <div class="price1" style="height: 19px;">
                                                <asp:Label ID="c_rateLabel" runat="server" Text='<%# Eval("c_rate") %>' Font-Bold="True" />
                                                <span class="actual"></span>
							                </div>
                                        </ItemTemplate>
                                    </asp:DataList>
							        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:carrentalsConnection1 %>" SelectCommand="SELECT * FROM [carinform] WHERE [com_name]=@com_name" >
                                        <SelectParameters>
                                            <asp:Parameter  Name="com_name" DefaultValue="Maruti" Type="String" />
                                        </SelectParameters>
							    </asp:SqlDataSource>
						</div>
                        <br />
						<div class="Details">
							<asp:LinkButton ID="LinkButton2" runat="server" class="button alt" PostBackUrl="~/ecoalto.aspx">Details</asp:LinkButton>
						</div>
                  
                         </section>
					</div>


                
					<div class="4u">
                       <section class="special box">
						<asp:Image ID="Image3" runat="server" ImageUrl="~/Cars/e3.jpg" Width="230px"></asp:Image>
						<div class="grid_desc">
                            <asp:DataList ID="DataList3" runat="server" DataKeyField="i_id" DataSourceID="SqlDataSource3">
                                    <ItemTemplate>
                                        <p class="title">
                                            <asp:Label ID="com_nameLabel" runat="server" Text='<%# Eval("com_name") %>' Font-Bold="True" />
                                            <br />
                                            <asp:Label ID="c_nameLabel" runat="server" Text='<%# Eval("c_name") %>' Font-Bold="True" />
                                            <br />
                                        </p>
                                        <div class="price1" style="height: 19px;">
                                            <asp:Label ID="c_rateLabel" runat="server" Text='<%# Eval("c_rate") %>' Font-Bold="True" />
                                            <span class="actual"></span>
							            </div>
                                    </ItemTemplate>
                                </asp:DataList>
							    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:carrentalsConnection1 %>" SelectCommand="SELECT * FROM [carinform] WHERE [com_name]=@com_name">
                                    <SelectParameters>
                                        <asp:Parameter  Name="com_name" DefaultValue="Suzuki" Type="String" />
                                    </SelectParameters>
							    </asp:SqlDataSource>
						</div>
                        <br />
						<div class="Details">
							<asp:LinkButton ID="LinkButton3" runat="server" class="button alt" PostBackUrl="~/ecoswift.aspx">Details</asp:LinkButton>
						</div>
                
                        </section>
                </div>
                 
                <div class="clear"></div>
             </div>
            </div>
           </center>
    </section>

            <!--Economy End-->




            <%--<!--Standard-->


         <section id="one" class="wrapper style1">
              
                      <center>
              
                     <header class="major">
                   
						<h2><strong>Standard</strong></h2>
                     <hr />
					</header>

                   <div class="container">
					<div class="row">
					 <div class="4u">
                        <section class="special box">
						<asp:Image ID="Image4" runat="server" ImageUrl="~/Cars/s1.jpg"></asp:Image>
						<div class="grid_desc">
							<p class="title"></p>
							<p class="title1"></p>
							<div class="price1" style="height: 19px;">
							
								<span class="actual"></span>
							</div>
						</div>
                        <br />
						<div class="Details">
							<asp:LinkButton ID="LinkButton4" runat="server" class="button alt" PostBackUrl="~/stdcr-v.aspx"><strong>Details</strong></asp:LinkButton>
						</div>
                   
                             </section>
					</div>


			 


					 <div class="4u">
                        <section class="special box">
						<asp:Image ID="Image5" runat="server" ImageUrl="~/Cars/s2.jpg"></asp:Image>
						<div class="grid_desc">
							<p class="title"></p>
							<p class="title1"></p>
							<div class="price1" style="height: 19px;">
							
								<span class="actual"></span>
							</div>
						</div>
                        <br />
						<div class="Details">
							<asp:LinkButton ID="LinkButton5" runat="server" class="button alt"><strong>Details</strong></asp:LinkButton>
						</div>
                      
                         </section>
					</div>



                    


					 <div class="4u">
                       <section class="special box">
						<asp:Image ID="Image6" runat="server" ImageUrl="~/Cars/s3.jpg"></asp:Image>
						<div class="grid_desc">
							<p class="title"></p>
							<p class="title1"></p>
							<div class="price1" style="height: 19px;">
							
								<span class="actual"></span>
							</div>
						</div>
                        <br />
						<div class="Details">
							<asp:LinkButton ID="LinkButton6" runat="server" class="button alt"><strong>Details</strong></asp:LinkButton>
						</div>
           
                        </section>
					</div>
                       
                    <div class="clear"></div>

                   </div>
                       </div>
                 </center>        
        </section>


            <!--Standard End-->--%>




             <%--<!--Luxury-->


         <section id="two" class="wrapper style2">
            

                     <center>
  
                     <header class="major">
                   
						<h2>Luxury</h2>
                  <hr />
					</header>

                  <div class="container">
					<div class="row">
					 <div class="4u">
                        <section class="special box">
						<asp:Image ID="Image7" runat="server" ImageUrl="~/Cars/l1.jpg"></asp:Image>
						<div class="grid_desc">
							<p class="title"></p>
							<p class="title1"></p>
							<div class="price1" style="height: 19px;">
							
								<span class="actual"></span>
							</div>
						</div>
                        <br />
						<div class="Details">
							<asp:LinkButton ID="LinkButton7" runat="server" class="button alt">Details</asp:LinkButton>
						</div>
                    
                             </section>
					</div>


                     


					 <div class="4u">
                      <section class="special box">
						<asp:Image ID="Image8" runat="server" ImageUrl="~/Cars/l2.jpg"></asp:Image>
						<div class="grid_desc">
							<p class="title"></p>
							<p class="title1"></p>
							<div class="price1" style="height: 19px;">
								
								<span class="actual"></span>
							</div>
						</div>
                        <br />
						<div class="Details">
							<asp:LinkButton ID="LinkButton8" runat="server" class="button alt">Details</asp:LinkButton>
						</div>
                     
                            </section>
					</div>



                     



                    <div class="4u">
                      <section class="special box">
				        <asp:Image ID="Image9" runat="server" ImageUrl="~/Cars/l3.jpg"></asp:Image>
						<div class="grid_desc">
							<p class="title"></p>
							<p class="title1"></p>
							<div class="price1" style="height: 19px;">
								
								<span class="actual"></span>
							</div>
						</div>
                        <br />
						<div class="Details">
							<asp:LinkButton ID="LinkButton9" runat="server" class="button alt">Details</asp:LinkButton>
						</div>
                  
                      </section>
					</div>


					<div class="clear"></div>
		           </div>
                </div>
            </center>
	</section>


          <!--Luxury End-->--%>


         <!--Footer-->


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
    <!--Footer End-->

</asp:Content>

