<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="description" content="Neon Admin Panel" />
	<meta name="author" content="" />

	<title>Neon | Dashboard</title>

	{% if config.environment == 'local'%}
		<link rel="stylesheet" href="/js/jquery-ui/css/no-theme/jquery-ui-1.10.3.custom.min.css">
		<link rel="stylesheet" href="/css/font-icons/entypo/css/entypo.css">
		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Noto+Sans:400,700,400italic">
		<link rel="stylesheet" href="/css/bootstrap.css">
		<link rel="stylesheet" href="/css/neon-core.css">
		<link rel="stylesheet" href="/css/neon-theme.css">
		<link rel="stylesheet" href="/css/neon-forms.css">
		<link rel="stylesheet" href="/css/custom.css">
		<link rel="stylesheet" href="/css/skins/white.css">
	{% else %}
		<link rel="stylesheet" href="/css/main.min.css">
	{% endif %}

	<script src="/js/jquery-1.11.0.min.js"></script>
	<script>$.noConflict();</script>

	<!--[if lt IE 9]><script src="/js/ie8-responsive-file-warning.js"></script><![endif]-->

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->


</head>
<body class="page-body page-fade">

<div class="page-container"><!-- add class "sidebar-collapsed" to close sidebar by default, "chat-visible" to make chat appear always -->
	<div class="sidebar-menu">
		<div class="sidebar-menu-inner">
			<header class="logo-env">
				<!-- logo -->
				<div class="logo">
					<a href="index.html">
						<img src="/images/logo@2x.png" width="120" alt="" />
					</a>
				</div>
				<!-- logo collapse icon -->
				<div class="sidebar-collapse">
					<a href="#" class="sidebar-collapse-icon"><!-- add class "with-animation" if you want sidebar to have animation during expanding/collapsing transition -->
						<i class="entypo-menu"></i>
					</a>
				</div>				
				<!-- open/close menu icon (do not remove if you want to enable menu on mobile devices) -->
				<div class="sidebar-mobile-menu visible-xs">
					<a href="#" class="with-animation"><!-- add class "with-animation" to support animation -->
						<i class="entypo-menu"></i>
					</a>
				</div>
			</header>
			
									
			<ul id="main-menu" class="main-menu">
				<!-- add class "multiple-expanded" to allow multiple submenus to open -->
				<!-- class "auto-inherit-active-class" will automatically add "active" class for parent elements who are marked already with class "active" -->
				<li class="active opened active">
					<a href="index.html">
						<i class="entypo-gauge"></i>
						<span class="title">Accounts</span>
					</a>
					<ul>
						<li class="active">
							<a href="index.html">
								<span class="title">Account 1</span>
							</a>
						</li>
						<li>
							<a href="dashboard-2.html">
								<span class="title">Dashboard 2</span>
							</a>
						</li>
					</ul>
				</li>
			</ul>
		</div>
	</div>

	<div class="main-content">
				
		<div class="row">
			<!-- Profile Info and Notifications -->
			<div class="col-md-6 col-sm-8 clearfix">
		
				<ul class="user-info pull-left pull-none-xsm">
		
					<!-- Profile Info -->
					<li class="profile-info dropdown"><!-- add class "pull-right" if you want to place this from right -->
		
						<a class="dropdown-toggle">
							<img src="/images/thumb-1@2x.png" alt="" class="img-circle" width="44" />
							John Henderson
						</a>
					</li>
		
				</ul>
			</div>
		
		
			<!-- Raw Links -->
			<div class="col-md-6 col-sm-4 clearfix hidden-xs">
		
				<ul class="list-inline links-list pull-right">
					<li>
						<a href="extra-login.html">
							Log Out <i class="entypo-logout right"></i>
						</a>
					</li>
				</ul>
		
			</div>
		</div>

		<hr />
		
		
		<script type="text/javascript">
		jQuery(document).ready(function($)
		{
			// Sample Toastr Notification
			setTimeout(function()
			{
				var opts = {
					"closeButton": true,
					"debug": false,
					"positionClass": rtl() || public_vars.$pageContainer.hasClass('right-sidebar') ? "toast-top-left" : "toast-top-right",
					"toastClass": "black",
					"onclick": null,
					"showDuration": "300",
					"hideDuration": "1000",
					"timeOut": "5000",
					"extendedTimeOut": "1000",
					"showEasing": "swing",
					"hideEasing": "linear",
					"showMethod": "fadeIn",
					"hideMethod": "fadeOut"
				};
		
				toastr.success("You have been awarded with 1 year free subscription. Enjoy it!", "Account Subcription Updated", opts);
			}, 3000);
		
		});
		
		
		function getRandomInt(min, max)
		{
			return Math.floor(Math.random() * (max - min + 1)) + min;
		}
		</script>
		
		
		<div class="row">
			<div class="col-sm-3 col-xs-6">
		
				<div class="tile-stats tile-red">
					<div class="icon"><i class="entypo-users"></i></div>
					<div class="num" data-start="0" data-end="83" data-postfix="" data-duration="1500" data-delay="0">0</div>
		
					<h3>Unique Visitors</h3>
					<p>total visitors shown experiments</p>
				</div>
		
			</div>
		
			<div class="col-sm-3 col-xs-6">
		
				<div class="tile-stats tile-green">
					<div class="icon"><i class="entypo-chart-bar"></i></div>
					<div class="num" data-start="0" data-end="135" data-postfix="" data-duration="1500" data-delay="600">0</div>
		
					<h3>Experiments Ran</h3>
					<p>total number of experiments ran</p>
				</div>
		
			</div>
		
			<div class="col-sm-3 col-xs-6">
		
				<div class="tile-stats tile-aqua">
					<div class="icon"><i class="entypo-mail"></i></div>
					<div class="num" data-start="0" data-end="23" data-postfix="" data-duration="1500" data-delay="1200">0</div>
		
					<h3>Total Revenue</h3>
					<p>total revenue generated</p>
				</div>
		
			</div>
		
			<div class="col-sm-3 col-xs-6">
		
				<div class="tile-stats tile-blue">
					<div class="icon"><i class="entypo-rss"></i></div>
					<div class="num" data-start="0" data-end="52" data-postfix="" data-duration="1500" data-delay="1800">0</div>
		
					<h3>Average lift</h3>
					<p>average lift conversion</p>
				</div>
		
			</div>
		</div>
		
		<br />
		
		<div class="row">
			<div class="col-sm-12">
			{% block content %}{% endblock %}
			</div>
		</div>

		<!-- Footer -->
		<footer class="main">
			
			&copy; 2014 <strong>Neon</strong> Admin Theme by <a href="http://laborator.co" target="_blank">Laborator</a>
		
		</footer>
	</div><!-- end sidebar-menu -->
</div><!-- End page-container -->



	{% if config.environment == 'local'%}

		<!-- Imported styles on this page -->
		<link rel="stylesheet" href="/js/datatables/responsive/css/datatables.responsive.css">
		<link rel="stylesheet" href="/js/select2/select2-bootstrap.css">
		<link rel="stylesheet" href="/js/select2/select2.css">

		<!-- Bottom scripts (common) -->
		<script src="/js/gsap/main-gsap.js"></script>
		<script src="/js/jquery-ui/js/jquery-ui-1.10.3.minimal.min.js"></script>
		<script src="/js/bootstrap.js"></script>
		<script src="/js/joinable.js"></script>
		<script src="/js/resizeable.js"></script>
		<script src="/js/neon-api.js"></script>
		<script src="/js/jquery.dataTables.min.js"></script>
		<script src="/js/datatables/TableTools.min.js"></script>
		<script src="/js/toastr.js"></script>
		<script src="/js/dataTables.bootstrap.js"></script>
		<script src="/js/datatables/jquery.dataTables.columnFilter.js"></script>
		<script src="/js/datatables/lodash.min.js"></script>
		<script src="/js/datatables/responsive/js/datatables.responsive.js"></script>
		<script src="/js/select2/select2.min.js"></script>
		<!-- JavaScripts initializations and stuff -->
		<script src="/js/neon-custom.js"></script>
		<!-- Demo Settings -->
		<script src="/js/neon-demo.js"></script>
	{% else %}
		<script src="/js/main.min.js"></script>
	{% endif %}

</body>
</html>