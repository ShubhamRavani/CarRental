<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="luxaudia3.aspx.vb" Inherits="luxaudia3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

     <title>A3</title>

    <script language="javascript" type="text/javascript">
        // <![CDATA[





        // ]]>
    </script>
    <style>
        #p {
            text-align: justify;
        }

        #P {
            text-align: center;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">

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

        <!--Luxury / Land Rover Range Rover-->



        <section id="one" class="wrapper style1">
                <center>
                    <header class="major">
                   
						<h2>LUXURY / AUDI A3</h2>
                       <hr />
					</header>

            <div class="container">
                <section>
                    <style>
                        .mySlides {
                            display: none;
                          }
                    </style>
                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" DataKeyField="l_id">
                        <ItemTemplate>
                            <div class="w3-content w3-section" style="max-width:1200px"> 
                                
                                <asp:Image ID="Image1" runat="server" class="mySlides" ImageUrl ='<%# Eval("img1")%>' style="width:100%" /> 
                                <asp:Image ID="Image2" runat="server" class="mySlides" ImageUrl ='<%# Eval("img2")%>' style="width:100%" />
                                <asp:Image ID="Image3" runat="server" class="mySlides" ImageUrl ='<%# Eval("img3")%>' style="width:100%" />
                                <asp:Image ID="Image4" runat="server" class="mySlides" ImageUrl ='<%# Eval("img4")%>' style="width:100%" />
                                <asp:Image ID="Image5" runat="server" class="mySlides" ImageUrl ='<%# Eval("img5")%>' style="width:100%" />
                                <asp:Image ID="Image6" runat="server" class="mySlides" ImageUrl ='<%# Eval("img6")%>' style="width:100%" />
                   
                            </div>
                        </ItemTemplate>
                    </asp:DataList>

                        <script>
                            var myIndex = 0;
                            carousel();

                            function carousel() {
                                var i;
                                var x = document.getElementsByClassName("mySlides");
                                for (i = 0; i < x.length; i++) {
                                    x[i].style.display = "none";
                                }
                                myIndex++;
                                if (myIndex > x.length) { myIndex = 1 }
                                x[myIndex - 1].style.display = "block";
                                setTimeout(carousel, 3000); // Change image every 2 seconds
                            }
                    </script>
                </section> 
                
                         
                <div class="clear"></div>
                <br />
                <br />
                <br />
  
					<div class="row">
						<div class="3u">
							<section class="special box">
								<i class="icon fa-area-chart major"></i>
                                <h3>Economy</h3>
                                <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource1" DataKeyField="l_id">
                                    <ItemTemplate>
                                        Mileage &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="mileageLabel" runat="server" Text='<%# Eval("mileage") %>' Font-Bold="True" />
                                        <br />
                                        Fuel Type &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="fuel_typeLabel" runat="server" Text='<%# Eval("fuel_type") %>' Font-Bold="True" />
                                        <br />
                                        Fuel Tank &nbsp;
                                        <asp:Label ID="fuel_tankLabel" runat="server" Text='<%# Eval("fuel_tank") %>' Font-Bold="True" />
                                        <br />
                                        <br />
                                    </ItemTemplate>
                                </asp:DataList>
							</section>
                        </div>


						<div class="3u">
                            <section class="special box">
								<i class="icon fa-refresh major"></i>
								<h3>Performance</h3>
                                <asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataSource1" DataKeyField="l_id">
                                    <ItemTemplate>
                                        Engine &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="engineLabel" runat="server" Text='<%# Eval("engine") %>' Font-Bold="True" />
                                        <br />
                                        BHP &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="bhpLabel" runat="server" Text='<%# Eval("bhp") %>' Font-Bold="True" />
                                        <br />
                                        No. of Cylinders &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="cylindersLabel" runat="server" Text='<%# Eval("cylinders") %>' Font-Bold="True" />
                                        <br />
                                        No. of Gears  &nbsp;
                                        <asp:Label ID="gearsLabel" runat="server" Text='<%# Eval("gears") %>' Font-Bold="True" />
                                        <br />
                                        <br />
                                    </ItemTemplate>
                                </asp:DataList>
							</section>
                        </div>


                        <div class="3u">
                            <section class="special box">
								<i class="icon fa-cog major"></i>
								<h3>Comfort</h3>
                                <asp:DataList ID="DataList4" runat="server" DataSourceID="SqlDataSource1" DataKeyField="l_id">
                                    <ItemTemplate>
                                        Cruise Control &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="cruise_controlLabel" runat="server" Text='<%# Eval("cruise_control") %>' Font-Bold="True" />
                                        <br />
                                        Sun Roof &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="sun_roofLabel" runat="server" Text='<%# Eval("sun_roof") %>' Font-Bold="True" />
                                        <br />
                                        Seating Capacity &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="seat_capacityLabel" runat="server" Text='<%# Eval("seat_capacity") %>' Font-Bold="True" />
                                        <br />
                                        Boot Space
                                        <asp:Label ID="boot_spaceLabel" runat="server" Text='<%# Eval("boot_space") %>' Font-Bold="True" />
                                        <br />
                                        <br />
                                    </ItemTemplate>
                                </asp:DataList>
							</section>
                        </div>


                        <div class="3u">
                            <section class="special box">
								<i class="icon fa-refresh major"></i>
								<h3>Safety</h3>
                                <asp:DataList ID="DataList5" runat="server" DataSourceID="SqlDataSource1" DataKeyField="l_id">
                                    <ItemTemplate>
                                        Parking Sensor &nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="parking_sensorLabel" runat="server" Text='<%# Eval("parking_sensor") %>' Font-Bold="True" />
                                        <br />
                                        Airbags &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="airbagsLabel" runat="server" Text='<%# Eval("airbags") %>' Font-Bold="True" />
                                        <br />
                                        <br />
                                    </ItemTemplate>
                                </asp:DataList>
							</section>
                        </div>

                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:carrentalsConnection1 %>" SelectCommand="SELECT * FROM [luxurycar]  WHERE [c_name]=@c_name">
                             <SelectParameters>
                                        <asp:Parameter  Name="c_name" DefaultValue="A3" Type="String" />
                                    </SelectParameters>
                        </asp:SqlDataSource>
                    
                    </div>

                            <center>
		                        <br />
                                <br />
                                <% If(Session("u_id") <> "") %>
							    <asp:Button ID="btnreserv" runat="server" Text="Reserv Here" />
                                <%End If%>
							</center>
                            <br />
                            <br />
                </div>
           </center>
    </section>

        <!--Luxury / Land Rover Ranger Rover End-->



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

