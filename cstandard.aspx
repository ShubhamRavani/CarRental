<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="cstandard.aspx.vb" Inherits="cstandard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">


    <form id="form1" runat="server">

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
                    <h2> Cars</h2>
                    <hr />
                
                    
					
				</header>--%>


        <!--Standard-->


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
						    <asp:Image ID="Image1" runat="server" ImageUrl="~/Cars/s1.jpg" Width="230px"></asp:Image>
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
                                        <asp:Parameter  Name="com_name" DefaultValue="Honda" Type="String" />
                                    </SelectParameters>
							    </asp:SqlDataSource>
						    </div>
                            <br />
						    <div class="Details">
							    <asp:LinkButton ID="LinkButton1" runat="server" class="button alt" PostBackUrl="~/stdcr-v.aspx"><strong>Details</strong></asp:LinkButton>
						    </div>
                       </section>
					</div>


			 


					 <div class="4u">
                        <section class="special box">
						    <asp:Image ID="Image2" runat="server" ImageUrl="~/Cars/s2.jpg" Width="230px"></asp:Image>
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
                                            <asp:Parameter  Name="com_name" DefaultValue="Hyundai" Type="String" />
                                        </SelectParameters>
							    </asp:SqlDataSource>
						    </div>
                            <br />
						    <div class="Details">
							    <asp:LinkButton ID="LinkButton2" runat="server" class="button alt" PostBackUrl="~/stdcreta.aspx"><strong>Details</strong></asp:LinkButton>
						    </div>
                        </section>
					</div>



                    


					 <div class="4u">
                       <section class="special box">
						    <asp:Image ID="Image3" runat="server" ImageUrl="~/Cars/s4.jpg" Width="230px"></asp:Image>
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
                                        <asp:Parameter  Name="com_name" DefaultValue="Toyato" Type="String" />
                                    </SelectParameters>
							    </asp:SqlDataSource>
						    </div>
                            <br />
						    <div class="Details">
							    <asp:LinkButton ID="LinkButton3" runat="server" class="button alt" PostBackUrl="~/stdinnova.aspx"><strong>Details</strong></asp:LinkButton>
						    </div>
                        </section>
					</div>
                       
                    <div class="clear"></div>

                   </div>
                       </div>
                 </center>        
        </section>


        <!--Standard End-->

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

