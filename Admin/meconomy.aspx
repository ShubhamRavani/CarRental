<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/asite.master" AutoEventWireup="false" CodeFile="meconomy.aspx.vb" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Manage Economy</title>

    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script language="javascript" type="text/javascript">
        $(function () {
            $("#fileupload").change(function () {
                if (typeof (FileReader) != "undefined") {
                    var dvPreview = $("#dvPreview");
                    dvPreview.html("");
                    var regex = /^([a-zA-Z0-9\s_\\.\-:])+(.jpg|.jpeg|.gif|.png|.bmp)$/;
                    $($(this)[0].files).each(function () {
                        var file = $(this);
                        if (regex.test(file[0].name.toLowerCase())) {
                            var reader = new FileReader();
                            reader.onload = function (e) {
                                var img = $("<img />");
                                img.attr("style", "height:100px;width: 100px");
                                img.attr("src", e.target.result);
                                dvPreview.append(img);
                            }
                            reader.readAsDataURL(file[0]);
                        } else {
                            alert(file[0].name + " is not a valid image file.");
                            dvPreview.html("");
                            return false;
                        }
                    });
                } else {
                    alert("This browser does not support HTML5 FileReader.");
                }
            });
        });
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
            <h1><a href="astart.aspx">CAR RENTALS </a></h1>
            <nav id="nav">
                <ul>
                    <%--  <li><a href="aboutus.aspx">ABOUT US</a></li>--%>
                    <%     
                        If (Session("a_id") <> "") Then
                    %>
                    <li><a href="aaccount.aspx">ACCOUNT</a></li>
                    <li class="car_di">CARS


                            <div class="sub_div">


                                <ul class="">
                                    <li style="background-color: white; width: 100px;"><a href="tcar.aspx">Add Car</a></li>
                                    <li style="background-color: white; width: 100px;"><a href="mcar.aspx">Manage Car</a></li>
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
                    <li><a href="alogout.aspx" class="button special">Log Out</a></li>
                    <%
                    Else
                    %>
                    <li><a href="alogin.aspx" class="button special">Log In</a></li>
                    <%
                    End If
        
                    %>
                </ul>
            </nav>
        </header>



        <section>
            <div class="container">
                <header class="major">
                    <br />
                    <br />
                    <h2><strong>ECONOMY</strong></h2>
                    <hr />



                </header>

                <div class="6u">
                    <%--<%
                        If (Session("cname") = txttypec.Text) Then
                    %>--%>
                    <asp:FileUpload ID="fileupload" runat="server" AllowMultiple="true" />

                    <br />
                    <br />



                    <!--Economy-->
                    Car Type :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txttypec" runat="server" placeholder="Car Type"></asp:TextBox>

                    <br />
                    Mileage :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtmileage" runat="server" placeholder="Mileage"></asp:TextBox>

                    <br />

                    Fuel Type :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ddlftype" runat="server">
                        <asp:ListItem>Petrol</asp:ListItem>
                        <asp:ListItem>Diesel</asp:ListItem>
                        <asp:ListItem>CNG</asp:ListItem>
                    </asp:DropDownList>

                    <br />

                    Fuel Tank :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtftank" runat="server" placeholder="Fuel Tank"></asp:TextBox>

                    <br />



                    <!--Performance-->

                    Engine :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtengine" runat="server" placeholder="Engine"></asp:TextBox>

                    <br />

                    BHP :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtbhp" runat="server" placeholder="BHP"></asp:TextBox>

                    <br />

                    No. of Cylinders :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtcylinders" runat="server" placeholder="No. of Cylinders"></asp:TextBox>

                    <br />

                    No. of Gears :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtgears" runat="server" placeholder="No. of Gears"></asp:TextBox>

                    <br />



                    <!--Comfort-->

                    A/C :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ddlac" runat="server">
                        <asp:ListItem>No</asp:ListItem>
                        <asp:ListItem>Yes</asp:ListItem>
                    </asp:DropDownList>
                    <br />

                    Power Steering :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ddlsteering" runat="server">
                        <asp:ListItem>No</asp:ListItem>
                        <asp:ListItem>Yes</asp:ListItem>
                    </asp:DropDownList>
                    <br />

                    Seating Capacity :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtseatcap" runat="server" placeholder="Seating Capacity"></asp:TextBox>
                    <br />

                    Boot Space :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtboot" runat="server" placeholder="Boot Space"></asp:TextBox>
                    <br />




                    <!--Safety-->

                    Central Lock :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ddlcentrallock" runat="server">
                        <asp:ListItem>No</asp:ListItem>
                        <asp:ListItem>Yes</asp:ListItem>
                    </asp:DropDownList>
                    <br />

                    Brake Assist :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ddlbrakeassist" runat="server">
                        <asp:ListItem>No</asp:ListItem>
                        <asp:ListItem>Yes</asp:ListItem>
                    </asp:DropDownList>
                    <br />

                    Parking Sensor :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ddlsensor" runat="server">
                        <asp:ListItem>No</asp:ListItem>
                        <asp:ListItem>Yes</asp:ListItem>
                    </asp:DropDownList>
                    <br />

                    Airbags :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ddlairbags" runat="server">
                        <asp:ListItem>No</asp:ListItem>
                        <asp:ListItem>Yes</asp:ListItem>
                    </asp:DropDownList>
                    <br />


                    <br />
                    <center>
                                 <asp:Button ID="Btnsubmit" runat="server" Text="Submit" Height="41px"></asp:Button>
                                 
                    </center>
                   <%-- <% 
                    Else
                    %>
                    <%MsgBox("Unable To Find Entry.! Do You Want Insert Your Requested Query..!", vbOKOnly)%>
                    <% Response.Redirect("economy.aspx")%>
                    <%
                    End If
                    %>--%>
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

