<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="stdinnova.aspx.vb" Inherits="stdinnova" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <title>Innova</title>

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

        <!--Standard / Honda CR-V-->



        <section id="one" class="wrapper style1">
                <center>
                    <header class="major">
                   
						<h2>STANDARD / TOYATO INNOVA</h2>
                       <hr />
					</header>

            <div class="container">
                <section>
                        <style>
                            .mySlides {
                                display: none;
                            }
                        </style>
                        <asp:DataList ID="DataList1" runat="server" DataKeyField="s_id" DataSourceID="SqlDataSource1">
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
                                <asp:DataList ID="DataList2" runat="server" DataKeyField="s_id" DataSourceID="SqlDataSource1">
                                    <ItemTemplate>
                                        Mileage &nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="mileageLabel" runat="server" Text='<%# Eval("mileage") %>' Font-Bold="True" />
                                        <br />
                                        Fuel Type &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="fuel_typeLabel" runat="server" Text='<%# Eval("fuel_type") %>' Font-Bold="True" />
                                        <br />
                                        Fuel Tank &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="fuel_tankLabel" runat="server" Text='<%# Eval("fuel_tank") %>' Font-Bold="True" />
                                        <br />
                                        <br />
                                    </ItemTemplate>
                                </asp:DataList>
								<%--<p>Mileage&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>&nbsp;&nbsp;&nbsp;12.kmpl</b><br /> Service Cost &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>&nbsp; - </b><br /> Fuel Type &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>&nbsp;&nbsp; Petrol </b><br /> Fuel Tank &nbsp;<b>&nbsp; 58 Litres</b> </p>--%>
							</section>
						</div>
						<div class="3u">
							<section class="special box">
								<i class="icon fa-refresh major"></i>
								<h3>Performance</h3>
                                <asp:DataList ID="DataList3" runat="server" DataKeyField="s_id" DataSourceID="SqlDataSource1">
                                    <ItemTemplate>
                                        Engine &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="engineLabel" runat="server" Text='<%# Eval("engine") %>' Font-Bold="True" />
                                        <br />
                                        BHP &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="bhpLabel" runat="server" Text='<%# Eval("bhp") %>' Font-Bold="True" />
                                        <br />
                                        No. of Cylinders &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="cylindersLabel" runat="server" Text='<%# Eval("cylinders") %>' Font-Bold="True" />
                                        <br />
                                        No. of Gears &nbsp;&nbsp;
                                        <asp:Label ID="gearsLabel" runat="server" Text='<%# Eval("gears") %>' Font-Bold="True" />
                                        <br />
                                        <br /> 
                                    </ItemTemplate>
                                </asp:DataList>
								<%--<p>Engine&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>&nbsp;&nbsp;&nbsp;2354 cc</b><br /> BHP &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>&nbsp; 187.4 </b><br /> No. of Cylinders &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>&nbsp;&nbsp; 4 </b><br /> No. of Gears &nbsp;<b>&nbsp; 5 Speed</b> </p>--%>
							</section>
						</div>
						<div class="3u">
							<section class="special box">
								<i class="icon fa-cog major"></i>
								<h3>Comfort</h3>
                                <asp:DataList ID="DataList4" runat="server" DataKeyField="s_id" DataSourceID="SqlDataSource1">
                                    <ItemTemplate>
                                        Transmission
                                        <asp:Label ID="transmissionLabel" runat="server" Text='<%# Eval("transmission") %>' Font-Bold="True" />
                                        <br />
                                        Rear Ac Vents &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="rearacLabel" runat="server" Text='<%# Eval("rearac") %>' Font-Bold="True" />
                                        <br />
                                        Seating Capacity &nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="seat_capacityLabel" runat="server" Text='<%# Eval("seat_capacity") %>' Font-Bold="True" />
                                        <br />
                                        Boot Space &nbsp;
                                        <asp:Label ID="boot_spaceLabel" runat="server" Text='<%# Eval("boot_space") %>' Font-Bold="True" />
                                        <br />
                                        <br />
                                    </ItemTemplate>
                                </asp:DataList>
								<%--<p>Transmission&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>&nbsp;&nbsp;&nbsp;Automatic</b><br /> Rear AC Vents &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>&nbsp; Yes </b><br /> Seating Capacity &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>&nbsp;&nbsp;&nbsp;&nbsp; 5 </b><br /> Boot Space &nbsp;&nbsp;&nbsp;<b>&nbsp;&nbsp;&nbsp; 589-litres</b> </p>--%>
							</section>
						</div>
                        <div class="3u">
							<section class="special box">
								<i class="icon fa-refresh major"></i>
								<h3>Safety</h3>
                                <asp:DataList ID="DataList5" runat="server" DataKeyField="s_id" DataSourceID="SqlDataSource1">
                                    <ItemTemplate>
                                        ABS &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="absLabel" runat="server" Text='<%# Eval("abs") %>' Font-Bold="True" />
                                        <br />
                                        Driver Airbag &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="driver_airbagLabel" runat="server" Text='<%# Eval("driver_airbag") %>' Font-Bold="True" />
                                        <br />
                                        Parking Sensor &nbsp;&nbsp;
                                        <asp:Label ID="parking_sensorLabel" runat="server" Text='<%# Eval("parking_sensor") %>' Font-Bold="True" />
                                        <br />
                                        Airbags &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="airbagsLabel" runat="server" Text='<%# Eval("airbags") %>' Font-Bold="True" />
                                        <br />
                                        <br />
                                    </ItemTemplate>
                                </asp:DataList>
								<%--<p>ABS &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Yes</b><br /> Driver Airbag &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>&nbsp; Yes </b><br /> Parking Sensor &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>&nbsp;&nbsp;&nbsp;&nbsp; Yes </b><br /> Airbags &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Yes</b> </p>--%>
							</section>
						</div>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:carrentalsConnection1 %>" SelectCommand="SELECT * FROM [standardcar] WHERE [c_name]=@c_name">
                            <SelectParameters>
                                <asp:Parameter  Name="c_name" DefaultValue="Innova" Type="String" />
                             </SelectParameters>
                        </asp:SqlDataSource>
					</div>

                        <center>
											<br /><br />
                            <% If(Session("u_id") <> "") %>
							<asp:Button ID="btnreserv" runat="server" Text="Reserv Here" />
                            <%End If %>
						</center>		
						<br />
                        <br />
                </div>
           </center>
    </section>

        <!--Standard / Honda CR-V End-->



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

