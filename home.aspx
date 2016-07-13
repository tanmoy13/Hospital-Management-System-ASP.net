<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="main">

        <h2><b><u>Welcome to Our website</u></b></h2>

        

        <div style="height: 308px; width: 770px; margin-left: 106px">
         <asp:Table ID="Table1" runat="server" Height="16px" Width="746px" s>
                <asp:TableRow>
                    <asp:TableCell>
                                    <div class="flip-container" ontouchstart="this.classList.toggle('hover');">
	                                    <div class="flipper">
		                                    <div class="front">
			                                    <!-- front content -->
                                                            <div id="image">

                                                                  <img src="3.jpg"  height="150" width="250" />
      
                                                                    

                                                            </div>
                                                

		                                    </div>
		                                    <div class="back">
			                                    <!-- back content -->
                                                <!--img src="1.jpg" height="150" width="250"/-->

                                                <div id="image">

                                                                  <img src="7.jpg"  height="150" width="250" />
      
                                                                    <p id="text">Tanmoy Datta</p>

                                                            </div>

		                                    </div>
	                                    </div>
                                    </div>
                                    
                    </asp:TableCell>
                    <asp:TableCell>
                                    
                                    <div class="flip-container" ontouchstart="this.classList.toggle('hover');">
	                                    <div class="flipper">
		                                    <div class="front">
			                                    <!-- front content -->
                                                <img src="14.jpg" height="150" width="250"/>
		                                    </div>
		                                    <div class="back">
			                                    <!-- back content -->
                                                <img src="13.jpg" height="150" width="250"/>
		                                    </div>
	                                    </div>
                                    </div>

                    </asp:TableCell>
                    <asp:TableCell>
                                    
                                    <div class="flip-container" ontouchstart="this.classList.toggle('hover');">
	                                    <div class="flipper">
		                                    <div class="front">
			                                    <!-- front content -->
                                                <img src="5.jpg" height="150" width="250"/>
		                                    </div>
		                                    <div class="back">
			                                    <!-- back content -->
                                                <img src="1.jpg" height="150" width="250"/>
		                                    </div>
	                                    </div>
                                    </div>

                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                                    <div class="flip-container" ontouchstart="this.classList.toggle('hover');">
	                                    <div class="flipper">
		                                    <div class="front">
			                                    <!-- front content -->
                                                            <div id="image">

                                                                  <img src="6.jpg"  height="150" width="250" />
      
                                                                    <p id="text">Tanmoy Datta</p>

                                                            </div>
                                                

		                                    </div>
		                                    <div class="back">
			                                    <!-- back content -->
                                                <!--img src="1.jpg" height="150" width="250"/-->

                                                <div id="image">

                                                                  <img src="8.jpg"  height="150" width="250" />
      
                                                                    <p id="text">Tanmoy Datta</p>

                                                            </div>

		                                    </div>
	                                    </div>
                                    </div>
                                    
                    </asp:TableCell>
                    <asp:TableCell>
                                    
                                    <div class="flip-container" ontouchstart="this.classList.toggle('hover');">
	                                    <div class="flipper">
		                                    <div class="front">
			                                    <!-- front content -->
                                                <img src="2.jpg" height="150" width="250"/>
		                                    </div>
		                                    <div class="back">
			                                    <!-- back content -->
                                                <img src="12.jpg" height="150" width="250"/>
		                                    </div>
	                                    </div>
                                    </div>

                    </asp:TableCell>
                    <asp:TableCell>
                                    
                                    <div class="flip-container" ontouchstart="this.classList.toggle('hover');">
	                                    <div class="flipper">
		                                    <div class="front">
			                                    <!-- front content -->
                                                <img src="4.jpg" height="150" width="250"/>
		                                    </div>
		                                    <div class="back">
			                                    <!-- back content -->
                                                <img src="11.jpg" height="150" width="250"/>
		                                    </div>
	                                    </div>
                                    </div>

                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            </div>

           

            <br />
            
        <div class="main-box">
			<div class="wrap">
				<div class="sub-boxes">
							<div class="box">
								<div class="box-pic">
									<a><img src="images/timer.png"  /></a>
								</div>
								<div class="box-title">
									<h3>24x7 Servives</h3>
								</div>
								<div class="clear"> </div>
							</div>
								<p style="font-size: 14px">We are here to service the patients 24 hours. We have modern 6 operation theatre,24 hours Pharmacy,Ambulance service,Cafeteria & Catering service.</p>
							
								<div class="clear"> </div>
						</div>
						<div class="sub-boxes">
							<div class="content-top-grid-header">
								<div class="box-pic">
									<a><img src="images/tool.png"/></a>
								</div>
								<div class="box-title">
									<h3>CARE ADVICES</h3>
								</div>
								<div class="clear"> </div>
							</div>
								<p style="font-size: 14px">Patients requiring intensive care usually need support for hemodynamic instability, airway or respiratory compromise, acute renal failure, This hospital offers you a full range of intensive care units to manage all kinds of critically ill patients.</p>
								
								<div class="clear"> </div>
						</div>
						<div class="sub-boxes">
							<div class="content-top-grid-header">
								<div class="box-pic">
									<a><img src="images/inject.png" /></a>
								</div>
								<div class="box-title">
									<h3>EMERGENCY</h3>
								</div>
								<div class="clear"> </div>
							</div>
								<p style="font-size: 14px">The Accident and Emergency Department of City Hospital is a 24-hour, full time section and it is the mirror of City Hospital.</p>
					
								<div class="clear"> </div>
						</div>
						<div class="clear"> </div>
			</div>
		</div>
            

        </div>

</asp:Content>

