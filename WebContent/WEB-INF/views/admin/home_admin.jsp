<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>MasterEdu | ADM</title>

    <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/font-awesome/css/font-awesome.css"/>" rel="stylesheet">

    <!-- Toastr style -->
    <link href="<c:url value="/resources/css/plugins/toastr/toastr.min.css"/>" rel="stylesheet">

    <!-- Gritter -->
    <link href="<c:url value="/resources/js/plugins/gritter/jquery.gritter.css"/>" rel="stylesheet">

    <link href="<c:url value="/resources/css/animate.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">

</head>

<body>
	<div id="wrapper">
		<nav class="navbar-default navbar-static-side" role="navigation">
		<div class="sidebar-collapse">
			<ul class="nav metismenu" id="side-menu">
				<li class="nav-header">
					<div class="dropdown profile-element">
						<a data-toggle="dropdown" class="dropdown-toggle" href="#"> <span
							class="clear"> <span class="block m-t-xs"> <strong
									class="font-bold">David Williams</strong>
							</span> <span class="text-muted text-xs block">Administrador <b
									class="caret"></b></span>
						</span>
						</a>
						<ul class="dropdown-menu animated fadeInRight m-t-xs">
							<li><a href="profile.jsp">Perfil</a></li>
							<li><a href="contacts.jsp">Contatos</a></li>
							<li><a href="mailbox.jsp">Email</a></li>
							<li class="divider"></li>
							<li><a href="<%= request.getContextPath() + "/logout" %>">Sair</a></li>
						</ul>
					</div>
					<div class="logo-element">ME</div>
				</li>
				<li class="active"><a href="escola">
				<i class="fa fa-star"></i> <span class="nav-label">Escola</span></a></li>
				
				<li><a href="alunos">
				<i class="fa fa-globe"></i> <span class="nav-label">Alunos</span></a></li>
						
				<li><a href="professores">
				<i class="fa fa-magic"></i> <span class="nav-label">Professores</span></a></li>
						
				<li><a href="turmas">
				<i class="fa fa-table"></i> <span class="nav-label">Turmas</span></a></li>
						
				<li><a href="disciplinas">
				<i class="fa fa-sitemap"></i> <span class="nav-label">Disciplinas</span></a></li>
						
				<li><a href="usuarios">
				<i class="fa fa-database"></i> <span class="nav-label">Usuários</span></a></li>
			</ul>

		</div>
		</nav>

		<div id="page-wrapper" class="gray-bg dashbard-1">
			<div class="row border-bottom">
				<nav class="navbar navbar-static-top" role="navigation"
					style="margin-bottom: 0">
				<div class="navbar-header">
					<a class="navbar-minimalize minimalize-styl-2 btn btn-primary "
						href="#"><i class="fa fa-bars"></i> </a>

				</div>
				<ul class="nav navbar-top-links navbar-right">
					<li><span class="m-r-sm text-muted welcome-message">ESCOLA IMACULADA CONCEIÇÃO</span></li>
					<li><a href="<%= request.getContextPath() + "/logout" %>"> <i class="fa fa-sign-out"></i>
							Sair
					</a></li>
				</ul>

				</nav>
			</div>
			<div class="row  border-bottom white-bg dashboard-header">

				<div class="col-sm-3">
					<h2>Welcome Amelia</h2>
					<ul class="list-group clear-list m-t">

					</ul>
				</div>




			</div>
		</div>
		<div class="footer">
			<div class="pull-right">
				10GB of <strong>250GB</strong> Free.
			</div>
			<div>
				<strong>Copyright</strong> Example Company &copy; 2014-2015
			</div>
		</div>
	</div>

	<!-- Mainly scripts -->
    <script src="<c:url value="/resources/js/jquery-2.1.1.js"/>"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
    <script src="<c:url value="/resources/js/plugins/metisMenu/jquery.metisMenu.js"/>"></script>
    <script src="<c:url value="/resources/js/plugins/slimscroll/jquery.slimscroll.min.js"/>"></script>

    <!-- Flot -->
    <script src="<c:url value="/resources/js/plugins/flot/jquery.flot.js"/>"></script>
    <script src="<c:url value="/resources/js/plugins/flot/jquery.flot.tooltip.min.js"/>"></script>
    <script src="<c:url value="/resources/js/plugins/flot/jquery.flot.spline.js"/>"></script>
    <script src="<c:url value="/resources/js/plugins/flot/jquery.flot.resize.js"/>"></script>
    <script src="<c:url value="/resources/js/plugins/flot/jquery.flot.pie.js"/>"></script>

    <!-- Peity -->
    <script src="<c:url value="/resources/js/plugins/peity/jquery.peity.min.js"/>"></script>
    <script src="<c:url value="/resources/js/demo/peity-demo.js"/>"></script>

    <!-- Custom and plugin javascript -->
    <script src="<c:url value="/resources/js/inspinia.js"/>"></script>
    <script src="<c:url value="/resources/js/plugins/pace/pace.min.js"/>"></script>

    <!-- jQuery UI -->
    <script src="<c:url value="/resources/js/plugins/jquery-ui/jquery-ui.min.js"/>"></script>

    <!-- GITTER -->
    <script src="<c:url value="/resources/js/plugins/gritter/jquery.gritter.min.js"/>"></script>

    <!-- Sparkline -->
    <script src="<c:url value="/resources/js/plugins/sparkline/jquery.sparkline.min.js"/>"></script>

    <!-- Sparkline demo data  -->
    <script src="<c:url value="/resources/js/demo/sparkline-demo.js"/>"></script>

    <!-- ChartJS-->
    <script src="<c:url value="/resources/js/plugins/chartJs/Chart.min.js"/>"></script>

    <!-- Toastr -->
    <script src="<c:url value="/resources/js/plugins/toastr/toastr.min.js"/>"></script>


    <script>
        $(document).ready(function() {
            setTimeout(function() {
                toastr.options = {
                    closeButton: true,
                    progressBar: true,
                    showMethod: 'slideDown',
                    timeOut: 4000
                };
                toastr.success('Sistema de Gestão Escolar', 'Bem-vindo ao MasterEdu');

            }, 1300);


            var data1 = [
                [0,4],[1,8],[2,5],[3,10],[4,4],[5,16],[6,5],[7,11],[8,6],[9,11],[10,30],[11,10],[12,13],[13,4],[14,3],[15,3],[16,6]
            ];
            var data2 = [
                [0,1],[1,0],[2,2],[3,0],[4,1],[5,3],[6,1],[7,5],[8,2],[9,3],[10,2],[11,1],[12,0],[13,2],[14,8],[15,0],[16,0]
            ];
            $("#flot-dashboard-chart").length && $.plot($("#flot-dashboard-chart"), [
                data1, data2
            ],
                    {
                        series: {
                            lines: {
                                show: false,
                                fill: true
                            },
                            splines: {
                                show: true,
                                tension: 0.4,
                                lineWidth: 1,
                                fill: 0.4
                            },
                            points: {
                                radius: 0,
                                show: true
                            },
                            shadowSize: 2
                        },
                        grid: {
                            hoverable: true,
                            clickable: true,
                            tickColor: "#d5d5d5",
                            borderWidth: 1,
                            color: '#d5d5d5'
                        },
                        colors: ["#1ab394", "#464f88"],
                        xaxis:{
                        },
                        yaxis: {
                            ticks: 4
                        },
                        tooltip: false
                    }
            );

            var doughnutData = [
                {
                    value: 300,
                    color: "#a3e1d4",
                    highlight: "#1ab394",
                    label: "App"
                },
                {
                    value: 50,
                    color: "#dedede",
                    highlight: "#1ab394",
                    label: "Software"
                },
                {
                    value: 100,
                    color: "#b5b8cf",
                    highlight: "#1ab394",
                    label: "Laptop"
                }
            ];

            var doughnutOptions = {
                segmentShowStroke: true,
                segmentStrokeColor: "#fff",
                segmentStrokeWidth: 2,
                percentageInnerCutout: 45, // This is 0 for Pie charts
                animationSteps: 100,
                animationEasing: "easeOutBounce",
                animateRotate: true,
                animateScale: false
            };

            var ctx = document.getElementById("doughnutChart").getContext("2d");
            var DoughnutChart = new Chart(ctx).Doughnut(doughnutData, doughnutOptions);

            var polarData = [
                {
                    value: 300,
                    color: "#a3e1d4",
                    highlight: "#1ab394",
                    label: "App"
                },
                {
                    value: 140,
                    color: "#dedede",
                    highlight: "#1ab394",
                    label: "Software"
                },
                {
                    value: 200,
                    color: "#b5b8cf",
                    highlight: "#1ab394",
                    label: "Laptop"
                }
            ];

            var polarOptions = {
                scaleShowLabelBackdrop: true,
                scaleBackdropColor: "rgba(255,255,255,0.75)",
                scaleBeginAtZero: true,
                scaleBackdropPaddingY: 1,
                scaleBackdropPaddingX: 1,
                scaleShowLine: true,
                segmentShowStroke: true,
                segmentStrokeColor: "#fff",
                segmentStrokeWidth: 2,
                animationSteps: 100,
                animationEasing: "easeOutBounce",
                animateRotate: true,
                animateScale: false
            };
            var ctx = document.getElementById("polarChart").getContext("2d");
            var Polarchart = new Chart(ctx).PolarArea(polarData, polarOptions);

        });
    </script>
</body>
</html>
