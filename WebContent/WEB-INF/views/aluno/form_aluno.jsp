<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>MasterEdu | Cadastro aluno</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="css/plugins/steps/jquery.steps.css" rel="stylesheet">
    <link href="css/plugins/dropzone/basic.css" rel="stylesheet">
    <link href="css/plugins/dropzone/dropzone.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

    <link href="css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">

</head>

<body>

    <div id="wrapper">

    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element"> 
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">David Williams</strong>
                             </span> <span class="text-muted text-xs block">Art Director <b class="caret"></b></span> </span> </a>
                        <ul class="dropdown-menu animated fadeInRight m-t-xs">
                            <li><a href="profile.html">Perfil</a></li>
                            <li><a href="contacts.html">Contatos</a></li>
                            <li><a href="mailbox.html">Email</a></li>
                            <li class="divider"></li>
                            <li><a href="login.html">Sair</a></li>
                        </ul>
                    </div>
                    <div class="logo-element">
                        ME
                    </div>
                </li>
                <li>
                    <a href="#"><i class="fa fa-edit"></i> <span class="nav-label">Cadastro</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="#">Aluno</a></li>
                        <li><a href="#">Professor</a></li>
                        <li><a href="#">Responsável</a></li>
                        <li><a href="#">Funcionário</a></li>
                        <li><a href="#">Usuário</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-bar-chart-o"></i> <span class="nav-label">Relatórios</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="graph_flot.html">Flot Charts</a></li>
                        <li><a href="graph_morris.html">Morris.js Charts</a></li>
                        <li><a href="graph_rickshaw.html">Rickshaw Charts</a></li>
                        <li><a href="graph_chartjs.html">Chart.js</a></li>
                        <li><a href="graph_chartist.html">Chartist</a></li>
                        <li><a href="graph_peity.html">Peity Charts</a></li>
                        <li><a href="graph_sparkline.html">Sparkline Charts</a></li>
                    </ul>
                </li>
                   <li>
                    <a href="#"><i class="fa fa-shopping-cart"></i> <span class="nav-label">Finanças</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="#">Despesas</a></li>
                        <li><a href="#">Receitas</a></li>
                        <li><a href="#">Boletos</a></li>
                        <li><a href="#">Devedores</a></li>
                    </ul>
                </li>
            </ul>

        </div>
    </nav>

        <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom">
        <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
            <form role="search" class="navbar-form-custom" action="search_results.html">
                <div class="form-group">
                    <input type="text" placeholder="Search for something..." class="form-control" name="top-search" id="top-search">
                </div>
            </form>
        </div>
            <ul class="nav navbar-top-links navbar-right">
                <li>
                    <span class="m-r-sm text-muted welcome-message">Bem-vindo ao MasterEdu.</span>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                        <i class="fa fa-envelope"></i>  <span class="label label-warning">16</span>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <div class="dropdown-messages-box">
                                <a href="profile.html" class="pull-left">
                                    <img alt="image" class="img-circle" src="img/a7.jpg">
                                </a>
                                <div class="media-body">
                                    <small class="pull-right">46h ago</small>
                                    <strong>Mike Loreipsum</strong> started following <strong>Monica Smith</strong>. <br>
                                    <small class="text-muted">3 days ago at 7:58 pm - 10.06.2014</small>
                                </div>
                            </div>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="dropdown-messages-box">
                                <a href="profile.html" class="pull-left">
                                    <img alt="image" class="img-circle" src="img/a4.jpg">
                                </a>
                                <div class="media-body ">
                                    <small class="pull-right text-navy">5h ago</small>
                                    <strong>Chris Johnatan Overtunk</strong> started following <strong>Monica Smith</strong>. <br>
                                    <small class="text-muted">Yesterday 1:21 pm - 11.06.2014</small>
                                </div>
                            </div>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="dropdown-messages-box">
                                <a href="profile.html" class="pull-left">
                                    <img alt="image" class="img-circle" src="img/profile.jpg">
                                </a>
                                <div class="media-body ">
                                    <small class="pull-right">23h ago</small>
                                    <strong>Monica Smith</strong> love <strong>Kim Smith</strong>. <br>
                                    <small class="text-muted">2 days ago at 2:30 am - 11.06.2014</small>
                                </div>
                            </div>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="text-center link-block">
                                <a href="mailbox.html">
                                    <i class="fa fa-envelope"></i> <strong>Read All Messages</strong>
                                </a>
                            </div>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                        <i class="fa fa-bell"></i>  <span class="label label-primary">8</span>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts">
                        <li>
                            <a href="mailbox.html">
                                <div>
                                    <i class="fa fa-envelope fa-fw"></i> You have 16 messages
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="profile.html">
                                <div>
                                    <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                    <span class="pull-right text-muted small">12 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="grid_options.html">
                                <div>
                                    <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="text-center link-block">
                                <a href="notifications.html">
                                    <strong>See All Alerts</strong>
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </div>
                        </li>
                    </ul>
                </li>


                <li>
                    <a href="login.html">
                        <i class="fa fa-sign-out"></i> Sair
                    </a>
                </li>
            </ul>

        </nav>
        </div>
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>Cadastro aluno</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="index.html">Home</a>
                        </li>
                        <li>
                            <a>Cadastro</a>
                        </li>
                        <li class="active">
                            <strong>Aluno</strong>
                        </li>
                    </ol>
                </div>
                <div class="col-lg-2">

                </div>
            </div>
            <div class="wrapper wrapper-content animated fadeInRight">
            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox">
							<div class="ibox-content">
								<h2>Novo aluno</h2>

								<form id="form" action="adicionarAluno" method="post"
									class="wizard-big">
									<h1>Informações pessoais</h1>
									<fieldset>
										<h2>Account Information</h2>
										<div class="row">
											<div class="col-lg-8">
												<div class="form-group">
													<label>Nome *</label> <input id="name" name="nome"
														type="text" class="form-control required">
												</div>
												<div class="form-group">
													<label>Nome da mãe *</label> <input id="name"
														name="nomeDaMae" type="text" class="form-control required">
												</div>
												<div class="form-group">
													<label>Nome do pai *</label> <input id="name"
														name="nomeDoPai" type="text" class="form-control required">
												</div>
												<div class="form-group">
													<label>Nacionalidade *</label> <input id="name"
														name="nacionalidade" type="text"
														class="form-control required">
												</div>
												<div class="form-group">
													<label>Naturalidade *</label> <input id="name"
														name="naturalidade" type="text"
														class="form-control required">
												</div>
												<div class="form-group">
													<label>RG *</label> <input id="name" name="rg" type="text"
														class="form-control required">
												</div>
												<div class="form-group">
													<label>CPF *</label> <input id="name" name="cpf"
														type="text" class="form-control required">
												</div>
												<div class="form-group">
													<label>Certidão de nascimento *</label> <input id="name"
														name="certidaoNascimento" type="text"
														class="form-control required">
												</div>
												<div class="form-group">
													<label>Religião *</label> <input id="name" name="religiao"
														type="text" class="form-control required">
												</div>
												<div class="form-group">
													<div class="form-group" id="data_2">
														<label class="font-noraml">Data de nascimento *</label>
														<div class="input-group date">
															<span class="input-group-addon"><i
																class="fa fa-calendar"></i></span><input type="text"
																class="form-control" value=" / / ">
														</div>
													</div>
												</div>
												<div class="form-group">
													<label>Estado civil *</label> 
													<select
														class="form-control m-b" name="estadoCivil">
														<option>Solteiro</option>
														<option>Casado</option>
														<option>Divorciado</option>
														<option>Viúvo</option>
													</select>
												</div>
												<div class="form-group">
													<label>Sexo *</label>
													<div class="col-sm-10">
														<div class="i-checks">
															<label> <input type="radio" value="masculino"
																name="rb_masculino"> <i></i> Masculino
															</label>
														</div>
														<div class="i-checks">
															<label> <input type="radio" checked=""
																value="feminino" name="rb_masculino"> <i></i>
																Feminino
															</label>
														</div>
													</div>
												</div>
											</div>
											<div class="col-lg-4">
												<div class="text-center">
													<div style="margin-top: 20px">
														<i class="fa fa-sign-in"
															style="font-size: 180px; color: #e5e5e5"></i>
													</div>
												</div>
											</div>
										</div>

									</fieldset>
									<h1>Endereço</h1>
									<fieldset>
										<h2>Profile Information</h2>
										<div class="row">
											<div class="col-lg-6">
												<div class="form-group">
													<label>First name *</label> <input id="name" name="name"
														type="text" class="form-control required">
												</div>
												<div class="form-group">
													<label>Last name *</label> <input id="surname"
														name="surname" type="text" class="form-control required">
												</div>
											</div>
											<div class="col-lg-6">
												<div class="form-group">
													<label>Email *</label> <input id="email" name="email"
														type="text" class="form-control required email">
												</div>
												<div class="form-group">
													<label>Address *</label> <input id="address" name="address"
														type="text" class="form-control">
												</div>
											</div>
										</div>
									</fieldset>

									<h1>Contato</h1>
									<fieldset>
										<h2>Terms and Conditions</h2>
										<input id="acceptTerms" name="acceptTerms" type="checkbox"
											class="required"> <label for="acceptTerms">I
											agree with the Terms and Conditions.</label>
									</fieldset>

									<h1>Ficha médica</h1>
									<fieldset>
										<div class="text-center" style="margin-top: 120px">
											<h2>You did it Man :-)</h2>
										</div>
									</fieldset>

									<h1>Responsável</h1>
									<fieldset>
										<h2>Terms and Conditions</h2>
										<input id="acceptTerms" name="acceptTerms" type="checkbox"
											class="required"> <label for="acceptTerms">I
											agree with the Terms and Conditions.</label>
									</fieldset>

									<h1>Observação</h1>
									<fieldset>
										<h2>Terms and Conditions</h2>
										<input id="acceptTerms" name="acceptTerms" type="checkbox"
											class="required"> <label for="acceptTerms">I
											agree with the Terms and Conditions.</label>
									</fieldset>

									<h1>Documentos</h1>
									<fieldset>
										<h2>Terms and Conditions</h2>
										<div class="ibox-content">
											<form id="my-awesome-dropzone" class="dropzone" action="#">
												<div class="dropzone-previews"></div>
												<button type="submit" class="btn btn-primary pull-right">Salvar arquivos</button>
											</form>
											<div>
											</div>
										</div>
									</fieldset>
								</form>
						</div>
                    </div>
                    </div>

                </div>
            </div>
			<div class="wrapper wrapper-content animated fadeInRight">
				<div class="row">
					<div class="col-lg-12">
						<div class="ibox float-e-margins">
							<div class="ibox-content">
								<form action="adicionaAluno" method="post"
									class="form-horizontal">
									
									<div class="hr-line-dashed"></div>
									<div class="form-group">
										<label class="col-sm-2 control-label">Sexo <br /></label>

										<div class="col-sm-10">
											<div class="i-checks">
												<label> <input type="radio" value="masculino"
													name="rb_masculino"> <i></i> Masculino
												</label>
											</div>
											<div class="i-checks">
												<label> <input type="radio" checked=""
													value="feminino" name="rb_masculino"> <i></i>
													Feminino
												</label>
											</div>
										</div>
									</div>
									<div class="hr-line-dashed"></div>
									<div class="form-group">
										<label class="col-sm-2 control-label">Estado civíl</label>

										<div class="col-sm-10">
											<select class="form-control m-b" name="account">
												<option>Solteiro</option>
												<option>Casado</option>
												<option>Divorciado</option>
												<option>Viúvo</option>
											</select>
										</div>
									</div>

									<div class="ibox float-e-margins">
										<div class="ibox-title">
											<h5>Observação</h5>
										</div>
										<div class="ibox-content no-padding">

											<div class="summernote" >
												
												
												
											</div>

										</div>
									</div>

									<div class="hr-line-dashed"></div>
									<div class="form-group">
										<div class="col-sm-4 col-sm-offset-2">
											<button class="btn btn-white" type="submit">Cancel</button>
											<button class="btn btn-primary" type="submit">Save
												changes</button>
										</div>
									</div>
								</form>
							</div>
						</div>
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
        </div>


	<!-- Mainly scripts -->
	<script src="js/jquery-2.1.1.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
	<script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

	<!-- Custom and plugin javascript -->
	<script src="js/inspinia.js"></script>
	<script src="js/plugins/pace/pace.min.js"></script>

	<!-- iCheck -->
	<script src="js/plugins/iCheck/icheck.min.js"></script>
	<script>
		$(document).ready(function() {
			$('.i-checks').iCheck({
				checkboxClass : 'icheckbox_square-green',
				radioClass : 'iradio_square-green',
			});
		});
	</script>
	
	 <!-- Steps -->
    <script src="js/plugins/staps/jquery.steps.min.js"></script>
    
    <!-- Jquery Validate -->
    <script src="js/plugins/validate/jquery.validate.min.js"></script>
    
    <script>
        $(document).ready(function(){
            $("#wizard").steps();
            $("#form").steps({
                bodyTag: "fieldset",
                onStepChanging: function (event, currentIndex, newIndex)
                {
                    // Always allow going backward even if the current step contains invalid fields!
                    if (currentIndex > newIndex)
                    {
                        return true;
                    }

                    // Forbid suppressing "Warning" step if the user is to young
                    if (newIndex === 3 && Number($("#age").val()) < 18)
                    {
                        return false;
                    }

                    var form = $(this);

                    // Clean up if user went backward before
                    if (currentIndex < newIndex)
                    {
                        // To remove error styles
                        $(".body:eq(" + newIndex + ") label.error", form).remove();
                        $(".body:eq(" + newIndex + ") .error", form).removeClass("error");
                    }

                    // Disable validation on fields that are disabled or hidden.
                    form.validate().settings.ignore = ":disabled,:hidden";

                    // Start validation; Prevent going forward if false
                    return form.valid();
                },
                onStepChanged: function (event, currentIndex, priorIndex)
                {
                    // Suppress (skip) "Warning" step if the user is old enough.
                    if (currentIndex === 2 && Number($("#age").val()) >= 18)
                    {
                        $(this).steps("next");
                    }

                    // Suppress (skip) "Warning" step if the user is old enough and wants to the previous step.
                    if (currentIndex === 2 && priorIndex === 3)
                    {
                        $(this).steps("previous");
                    }
                },
                onFinishing: function (event, currentIndex)
                {
                    var form = $(this);

                    // Disable validation on fields that are disabled.
                    // At this point it's recommended to do an overall check (mean ignoring only disabled fields)
                    form.validate().settings.ignore = ":disabled";

                    // Start validation; Prevent form submission if false
                    return form.valid();
                },
                onFinished: function (event, currentIndex)
                {
                    var form = $(this);

                    // Submit form input
                    form.submit();
                }
            }).validate({
                        errorPlacement: function (error, element)
                        {
                            element.before(error);
                        },
                        rules: {
                            confirm: {
                                equalTo: "#password"
                            }
                        }
                    });
       });
    </script>
    
    <!-- DROPZONE -->
    <script src="js/plugins/dropzone/dropzone.js"></script>
    
    <script>
        $(document).ready(function(){

            Dropzone.options.myAwesomeDropzone = {

                autoProcessQueue: false,
                uploadMultiple: true,
                parallelUploads: 100,
                maxFiles: 100,

                // Dropzone settings
                init: function() {
                    var myDropzone = this;

                    this.element.querySelector("button[type=submit]").addEventListener("click", function(e) {
                        e.preventDefault();
                        e.stopPropagation();
                        myDropzone.processQueue();
                    });
                    this.on("sendingmultiple", function() {
                    });
                    this.on("successmultiple", function(files, response) {
                    });
                    this.on("errormultiple", function(files, response) {
                    });
                }

            }

       });
    </script>

</body>

</html>
