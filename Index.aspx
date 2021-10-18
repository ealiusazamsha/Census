<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Group_01_Census.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CENSUS-A WEBSITE FOR CALCULATING POPULATION</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Merit Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- css -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<link href="css/font-awesome.css" rel="stylesheet">		<!-- font-awesome icons -->

<!--// css -->
<!-- font -->
<link href="//fonts.googleapis.com/css?family=Montserrat+Alternates:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Libre+Franklin:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
<!-- //font -->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.js"></script>
	
	<!-- start-smooth-scrolling -->
			<script type="text/javascript" src="js/move-top.js"></script>
			<script type="text/javascript" src="js/easing.js"></script>
			<script type="text/javascript">
			    jQuery(document).ready(function ($) {
			        $(".scroll").click(function (event) {
			            event.preventDefault();
			            $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
			        });
			    });
			</script>
	<!-- //start-smoth-scrolling -->
		<!-- here stars scrolling icon -->
	<script type="text/javascript">
	    $(document).ready(function () {
	        /*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/

	        $().UItoTop({ easingType: 'easeOutQuart' });

	    });
	</script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        $(function () {
            $(".datepicker").datepicker({
                dateFormat: 'dd M yy',
                changeMonth: true,
                changeYear: true,
                yearRange: '1930:2018'
            });
        });
  </script>
</head>
<body>
    <form id="form" runat="server">
    
<div class="w3-banner-edu" id="top">
	<div class="agileits_top_menu">

   <div class="w3l_header_left">
				<ul>
					
					<li><i class="fa fa-phone" aria-hidden="true"></i>02-8315484</li>
					<li><i class="fa fa-envelope-o" aria-hidden="true"></i> <a href="mailto:info@example.com">censusteam@gmail.com</a></li>
				</ul>
			</div>
			<div class="w3l_header_right">
				<div class="w3ls-social-icons text-left">
					
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
   <div class="agileits_w3layouts_banner_nav">
			<nav class="navbar navbar-default">
				<div class="navbar-header navbar-left">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				<h1><a class="navbar-brand" href="Index.aspx"><i class="fa fa-graduation-cap" aria-hidden="true"></i><span>CENSUS</span></a></h1>

				</div>
				 <ul class="agile_forms">
					<li><a href="WebPage/Login.aspx"><i class="fa fa-sign-in" aria-hidden="true"></i>LOGIN</a> </li>
				</ul>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
					<nav>
						<ul class="nav navbar-nav">
							<li><a href="Index.aspx" class="hvr-underline-from-center">Home</a></li>
							<li><a href="#about"  class="scroll hvr-underline-from-center">About</a></li>
							<li><a href="#services"  class="scroll hvr-underline-from-center">Services</a></li>
							<li><a href="#gallery" class="scroll hvr-underline-from-center">Gallery</a></li>
							<li><a href="#team" class="scroll hvr-underline-from-center">Team</a></li>
							<li><a href="#contact" class=" scroll hvr-underline-from-center">Contact</a></li>
						</ul>
					</nav>

				</div>
			</nav>	
			
	<div class="clearfix"> </div> 
</div> 


	<div class="banner">
		<h3>CENSUS</h3>
		<h2 class="test"><span>Welcome to </span>Census</h2>
		<p>Population related website</p>
		
		<h4><a href="#contact" class="scroll">FLLOW US<span></span></a></h4>
		
	</div>
</div>
<!-- About -->
	<div id="about" class="about">
	<div class="container">
	<div class="w3-about-head">
		<h3>ABOUT US</h3>
		</div>
		<div class="w3-agileitsline">
		<h3>Welcome to <span>" Census "</span> We are always busy to calculate population of our country. </h3>
		<p>Population calculation is very difficult task.</p> 
		</div>
			<!-- banner-bottom -->
	<div class="banner-bottom">
		<div class="col-md-4 agileits_banner_bottom_left">
			<div class="agileinfo_banner_bottom_pos">
				<div class="w3_agileits_banner_bottom_pos_grid">
					<div class=" wthree_banner_bottom_grid_left">
						<div class="agile_banner_bottom_grid_left_grid hvr-radial-out">
								<i class="fa fa-pencil" aria-hidden="true"></i>
						</div>
					</div>
					<div class=" wthree_banner_bottom_grid_right">	
						<h4>Hardworking team</h4>
						<p>Our team always works hard to complete their task.</p>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		<div class="col-md-4 agileits_banner_bottom_left1">
			<div class="agileinfo_banner_bottom_pos">
				<div class="w3_agileits_banner_bottom_pos_grid">
					<div class=" wthree_banner_bottom_grid_left">
						<div class="agile_banner_bottom_grid_left_grid hvr-radial-out">
							<i class="fa fa-book" aria-hidden="true"></i>
						</div>
					</div>
					<div class=" wthree_banner_bottom_grid_right">	
						<h4>24 hours online support</h4>
						<p>We provide 24 hours online support.</p>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		<div class="col-md-4 agileits_banner_bottom_left2">
			<div class="agileinfo_banner_bottom_pos">
				<div class="w3_agileits_banner_bottom_pos_grid">
					<div class=" wthree_banner_bottom_grid_left">
						<div class="agile_banner_bottom_grid_left_grid hvr-radial-out">
							<i class="fa fa-yelp" aria-hidden="true"></i>
						</div>
					</div>
					<div class=" wthree_banner_bottom_grid_right">	
						<h4>Quick answer</h4>
						<p>If anyone send us message, we will try to answer him/her quickly.</p>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		<div class="clearfix"> </div>
	</div>
<!-- //banner-bottom -->
	</div>
</div>
	<!-- //About --> 
<!-- //services --> 
<div class="w3-services" id="services">

	<div class="w3-services-head">
	<h3>our sevices and Latest news</h3>
	</div>
	<div class="w3-services-grids">
		<div class="col-md-6 w3-services-left-grid">
			<img src="images/ban4.jpg" alt="img">
		</div>
		<div class="col-md-6 w3-services-right-grid">
		<div class="col-md-6 w3-services-right1-grid">
			<h3>Services</h3>
			<ul>
				<li><span class="col-md-2">01</span><p class="col-md-10">National id card given programm.</p></li>
				<li><span class="col-md-2">02</span><p class="col-md-10">Online birth registration service.</p></li>
				<li><span class="col-md-2">03</span><p class="col-md-10">Online information collection.</p></li>
				<li><span class="col-md-2">04</span><p class="col-md-10">Publishing annual report.</p></li>
				<li><span class="col-md-2">05</span><p class="col-md-10">Quick message reply service.</p></li>
			</ul>
		</div>
		<div class="col-md-6 w3-services-right1-grid">
			<h3>Latest news</h3>
		<ul>
				<li><span class="col-md-2">01</span><p><div class="col-md-10" style="padding-bottom:30px"><asp:Label ID="lbltime1"  runat="server"></asp:Label><asp:Label ID="lblnews1" runat="server"></asp:Label>
                  </div></p> </li>                                                                  
				<li><span class="col-md-2">02</span><p><div class="col-md-10" style="padding-bottom:30px"><asp:Label ID="lbltime2"  runat="server"></asp:Label><asp:Label ID="lblnews2" runat="server"></asp:Label>
                   </div> </p></li>                                                                 
				<li><span class="col-md-2">03</span><p><div class="col-md-10" style="padding-bottom:30px"><asp:Label ID="lbltime3" runat="server"></asp:Label><asp:Label ID="lblnews3" runat="server"></asp:Label>
                    </div></p></li>                                                                 
				<li><span class="col-md-2">04</span><p><div class="col-md-10" style="padding-bottom:30px"><asp:Label ID="lbltime4" runat="server"></asp:Label><asp:Label ID="lblnews4" runat="server"></asp:Label>
                    </div></p></li>                                                                 
				<li><span class="col-md-2">05</span><p><div class="col-md-10" style="padding-bottom:30px"><asp:Label ID="lbltime5" runat="server"></asp:Label><asp:Label ID="lblnews5" runat="server"></asp:Label>
                    </div></p></li>
			</ul>
		</div>
		<div class="clearfix"></div>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!-- //services --> 
	
<!-- gallery -->
		<div class="gallery"  id="gallery">
			<div class="container">
				<div class="gallery-w3-head">
				<h4>Our Gallery</h4>
				</div>
				<div id="jzBox" class="jzBox">
					<div id="jzBoxNextBig"></div>
					<div id="jzBoxPrevBig"></div>
					<img src="#" id="jzBoxTargetImg" alt="">
					<div id="jzBoxBottom">
						<div id="jzBoxTitle"></div>
						<div id="jzBoxCounter"></div>
						<span id="jzBoxMoreItems"> 
							<i class="glyphicon glyphicon-chevron-left" id="jzBoxPrev"></i> &nbsp;
							<i class="glyphicon glyphicon-chevron-right" id="jzBoxNext"></i> &nbsp;
						</span>
						<i class="glyphicon glyphicon-remove-circle" id="jzBoxClose"></i>
					</div>
				</div>
				<div class="gallery-grids-row">
					<div class="col-md-4 gallery-grid">
						<div class="wpf-demo-4">  
							<a href="images/g111.jpg" class="jzBoxLink item-hover" title="Maecenas sodales tortor ac ligula ultrices dictum et quis urna.">  
								<img src="images/g111.jpg" class="img-responsive" alt=" " />
								<div class="view-caption">
									<p>Our Gallery</p>
								</div> 
							</a>    		
						</div>
						<div class="wpf-demo-4">  
							<a href="images/g222.jpg" class="jzBoxLink item-hover" title="Etiam pulvinar metus neque eget porttitor massa.">  
								<img src="images/g222.jpg" alt=" " class="img-responsive" />
								<div class="view-caption">
									<p>Our Gallery</p>
								</div> 
							</a>    			
						</div>
						<div class="wpf-demo-4">  
							<a href="images/g333.jpg" class="jzBoxLink item-hover" title="Etiam pulvinar metus neque eget porttitor massa.">  
								<img src="images/g333.jpg" alt=" " class="img-responsive" />
								<div class="view-caption">
									<p>Our Gallery</p>
								</div> 
							</a>    			
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="col-md-4 gallery-grid">
						<div class="wpf-demo-4">  
							<a href="images/g4.jpg" class="jzBoxLink item-hover" title="Etiam pulvinar metus neque eget porttitor massa.">  
								<img src="images/g4.jpg" alt=" " class="img-responsive" />
								<div class="view-caption">
									<p>Our Gallery</p>
								</div> 
							</a>    			
						</div>
						<div class="wpf-demo-4">  
							<a href="images/g444.jpg" class="jzBoxLink item-hover" title="Etiam pulvinar metus neque eget porttitor massa.">  
								<img src="images/g444.jpg" alt=" " class="img-responsive" />
								<div class="view-caption">
									<p>Our Gallery</p>
								</div> 
							</a>    			
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="col-md-4 gallery-grid">
						<div class="wpf-demo-4">  
							<a href="images/g555.jpg" class="jzBoxLink item-hover" title="Etiam pulvinar metus neque eget porttitor massa.">  
								<img src="images/g555.jpg" alt=" " class="img-responsive" />
								<div class="view-caption">
									<p>Our Gallery</p>
								</div> 
							</a>  
						</div> 
						<div class="wpf-demo-4">  
							<a href="images/g666.jpg" class="jzBoxLink item-hover" title="Etiam pulvinar metus neque eget porttitor massa.">  
								<img src="images/g666.jpg" alt=" " class="img-responsive" />
								<div class="view-caption">
									<p>Our Gallery</p>
								</div> 
							</a>    			
						</div>
						<div class="wpf-demo-4">  
							<a href="images/g777.jpg" class="jzBoxLink item-hover" title="Etiam pulvinar metus neque eget porttitor massa.">  
								<img src="images/g777.jpg" alt=" " class="img-responsive" />
								<div class="view-caption">
									<p>Our Gallery</p>
								</div> 
							</a>    			
						</div> 
						<div class="clearfix"> </div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		<!-- //gallery --> 	
<!-- our team -->
<div class="team" id="team">
	<div class="container">
		<div class="w3ls-heading">
			<h3>Our team</h3>
		</div>
		<div class="w3-team-grids">
		<div class="col-md-3 chef agile_team_grid">
			<div class="agileits_w3layouts_team_grid">
			
				<img src="images/team1.jpg" alt=" " class="img-responsive">
			</div>
			<div class="w3-team-head">
			<h3>Ataul Haq</h3>
			<p>P-201602718<br />PGDICT-27<br /> BKIICT in BCC</p>
			</div>
		</div>
		<div class="col-md-3 chef agile_team_grid">
			<div class="agileits_w3layouts_team_grid">
			
				<img src="images/team2.jpg" alt=" " class="img-responsive">
			</div>
			<div class="w3-team-head">
			<h3>Sabbir Ahamed</h3>
			<p>P-201602717<br />PGDICT-27<br /> BKIICT in BCC</p>
		</div>
		</div>
		<div class="col-md-3 chef agile_team_grid">
			<div class="agileits_w3layouts_team_grid">
			
				<img src="images/team3.jpg" alt=" " class="img-responsive">
			</div>
			<div class="w3-team-head">
			<h3>Md. Ealius Azam Sha</h3>
			<p>P-201602701<br />PGDICT-27<br /> BKIICT in BCC</p>
			</div>
		</div>
		<div class="col-md-3 chef agile_team_grid">
			<div class="agileits_w3layouts_team_grid">
				
				<img src="images/team4.jpg" alt=" " class="img-responsive">
			</div>
			<div class="w3-team-head">
			<h3>Toufique Rahman</h3>
			<p style="font-size:small">Project Supervisor<br />CEO & Founder<br />LumexTech Solutions Ltd.</p>
			</div>
		</div>
		<div class="clearfix"></div>
		</div>


	</div>
</div>
<!-- //our team -->

<!-- news -->
<section class="news" id="news">
		<div class="container">
			<div class="heading">
				
</section>
<!-- news -->
<!-- modal -->
	<div class="modal about-modal fade" id="myModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header"> 
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span class="span2" aria-hidden="true">&times;</span></button>						
						<h4 class="modal-title"> Population </h4>
					</div> 
					<div class="modal-body">
					<div class="agileits-w3layouts-info">
						<img src="images/3.jpg" alt="" />
						<p>In biology, populations are groups of individuals belonging to the same species that live in the same region at the same time. Population density is a measure of the number of organisms that make up a population in a defined area.

Population density applies to all organisms on Earth, including the plants that make up vast crops, trees of the jungle, animals on the farm, fish in the ocean, and humans on the planet. No matter where a population of organisms lives, those organisms make up the population density for a given area.   .</p>
					</div>
				</div>
			</div>
		</div>
	</div>
<!-- //modal -->
<!--count-->
			<div class="count-agileits">
					
					<div class="count-grids">
					<div class="count-bgcolor-w3ls">
						<div class="col-md-4 count-grid">
						<i class="fa fa-hand-paper-o" aria-hidden="true"></i>
							<div class="count hvr-bounce-to-bottom">
						
		
									<span></span>
									<h5>Online Registration</h5>
							</div>
						</div>
						<div class="col-md-4 count-grid">
						<i class="fa fa-graduation-cap" aria-hidden="true"></i>
							<div class="count hvr-bounce-to-bottom">
								
									<span></span>
									<h5>Online smart card service </h5>
							</div>
						</div>
						<div class="col-md-4 count-grid">
						<i class="fa fa-user-plus" aria-hidden="true"></i>
							<div class="count hvr-bounce-to-bottom">
							
							
							
							
							
								
									<span></span>
									<h5>24 hours online help service</h5>
								</div>
						</div>
						<div class="clearfix"></div>
						</div>
					</div>
			</div>
				<!--count-->


	<!-- coureses online -->	
	<div class="w3-edu-main content " id="contact">
		<div class="w3-edu-head">
		<h3>contact us</h3>
		</div>
	<div class="w3-online-edu-grids">
			<div class="col-md-6 w3-online-course-grid">
			<div class="w3-online-course-left-head">
			<h3>Census </h3>
		<h4>Register now</h4>
		</div>
				
				<div class="agileits-timer"> 
				 <div class="clock">
					<div class="column days">
						<div class="timer" id="days"></div>
						<div class="text">DAYS</div>
					</div>
					<div class="timer days"></div>
					<div class="column">
						<div class="timer" id="hours"></div>
						<div class="text">HOURS</div>
					</div>
					<div class="timer"></div>
					<div class="column">
						<div class="timer" id="minutes"></div>
						<div class="text">MINUTES</div>
					</div>
					<div class="timer"></div>
					<div class="column">
						<div class="timer" id="seconds"></div>
						<div class="text">SECONDS</div>
					</div>
				</div>	
			</div>

			</div>
			<div class="col-md-6 w3-edu-online-form w3_mail_grids">
			<h3>Contact form</h3>
                <p><asp:Label ID="lblContactMsg" runat="server" visible="false"></asp:Label></p>
				<div class="w3_agile_mail_grid">
                    <asp:TextBox ID="txtFullName" runat="server" required="required"  placeholder="Your Full Name"></asp:TextBox><br /><br />
                    <asp:TextBox ID="txtEmail" runat="server" required="required"  placeholder="Your Emaill or Mobile No..."></asp:TextBox><br /><br />
                    <asp:TextBox ID="txtSubject" runat="server" required="required" placeholder="Write Your Subject"></asp:TextBox><br /><br />
                    <asp:DropDownList ID="ddlDivision" required="required" runat="server" class="form-control">
                            <asp:ListItem Text="Select Your Division" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="Barisal" Value="Barisal"></asp:ListItem>
                            <asp:ListItem Text="Chittagong" Value="Chittagong"></asp:ListItem>
                            <asp:ListItem Text="Dhaka" Value="Dhaka"></asp:ListItem>
                            <asp:ListItem Text="Khulna" Value="Khulna"></asp:ListItem>                        
                            <asp:ListItem Text="Mymensingh" Value="Mymensingh"></asp:ListItem>
                            <asp:ListItem Text="Rajshahi" Value="Rajshahi"></asp:ListItem>
                            <asp:ListItem Text="Rangpur" Value="Rangpur"></asp:ListItem>
                            <asp:ListItem Text="Sylhet" Value="Sylhet"></asp:ListItem>

                     </asp:DropDownList><br />
                    <asp:TextBox ID="txtMessage" required="required" runat="server" placeholder="Enter Your Message Here..." TextMode="MultiLine"></asp:TextBox><br />
                    <asp:Button ID="btnSendMessage" runat="server" Text="Send" type="submit" OnClick="btnSendMessage_Click"/>
				</div>

			</div>
			<div class="clearfix"></div>
			
	</div>
	</div>
	<!-- map  -->
	<div class="w3-agile-map1">
<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d29208.971186175248!2d90.3746!3d23.778691!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xdaf562015a13a85!2sBangladesh+Computer+Council!5e0!3m2!1sen!2sus!4v1513914531093" width="796" height="439" frameborder="0" style="border:0" allowfullscreen></iframe>
</div>
<!-- map -->
<!-- coureses online -->	
	<!-- footer-top -->	
	<div class="footer-top">
		<div class="container">
		<div class="w3-edu-footer-grids foot-left1">
			<div class="col-md-4 foot-left">
				<h3>About Us</h3>
			
				<p>We are service provider organization.</p>
			</div>
			<div class="col-md-4 foot-left">
					<h3>Contact address</h3>
				
				
						<div class="contact-btm">
							<i class="fa fa-map-marker" aria-hidden="true"></i> 
							<p>BCC Bhaban, Agargaon, Dhaka-1207.</p>
							
							
						</div>
						<div class="contact-btm">
							<i class="fa fa-phone" aria-hidden="true"></i>
							<p>02-8315484</p>
						<div class="contact-btm">
						</div>
							<span class="fa fa-envelope-o" aria-hidden="true"></span>
							<p><a href="mailto:example@email.com">censusteam@gmail.com</a></p>
						</div>
						<div class="clearfix"></div>

			</div>
			<div class="col-md-4 foot-left">
				
					<h3> Our partners</h3>
					<P>1.Bangladesh buro of statistics</p>
					<P>2.Zaika</p>
					<P>3.Bkict</p>
					<P>4.Ez cyber solution</p>
			</div>
		</div>

		</div>
	</div>
<!-- /footer-top -->							

<!-- footer -->
			<div class="copy-right">
				<p>2017 Census</p>
			</div>
			
<!-- //footer -->
			<!--  countdown-js -->  
	<script type="text/javascript" src=" js/moment.js"></script>
	<script type="text/javascript" src=" js/moment-timezone-with-data.js"></script>
	<script type="text/javascript" src="js/timer.js"></script>
	<!-- //countdown-js -->   
									
	<!--light-box-files -->
<script src="js/jquery.chocolat.js"></script>
<link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen">
<!--//light-box-files -->
		<script type="text/javascript">
		    $(function () {
		        $('.gallery a').Chocolat();
		    });
		</script>
<!-- //js -->
<script type="text/javascript" src="js/numscroller-1.0.js"></script>
<script src="js/particles.js"></script>

<!-- text-effect -->
		<script type="text/javascript" src="js/jquery.transit.js"></script> 
		<script type="text/javascript" src="js/jquery.textFx.js"></script> 
		<script type="text/javascript">
		    $(document).ready(function () {
		        $('.test').textFx({
		            type: 'fadeIn',
		            iChar: 100,
		            iAnim: 1000
		        });
		    });
		</script>
<!-- //text-effect -->
<script src="js/SmoothScroll.min.js"></script>
	<script type="text/javascript">
	    /* init Jarallax */
	    $('.jarallax').jarallax({
	        speed: 0.5,
	        imgWidth: 1366,
	        imgHeight: 768
	    })
	</script>
<script type="text/javascript">
    jQuery(document).ready(function ($) {
        $(".scroll").click(function (event) {
            event.preventDefault();
            $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
        });
    });
				</script>

<!-- smooth scrolling -->
	<script type="text/javascript">
	    $(document).ready(function () {
	        /*
                var defaults = {
                containerID: 'toTop', // fading element id
                containerHoverID: 'toTopHover', // fading element hover id
                scrollSpeed: 1200,
                easingType: 'linear' 
                };
            */
	        $().UItoTop({ easingType: 'easeOutQuart' });
	    });
	</script>
	<a href="#top" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->



    </form>
</body>
</html>
