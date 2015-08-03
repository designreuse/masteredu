<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>MasterEdu | Lançar Notas</title>

    <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/font-awesome/css/font-awesome.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/plugins/iCheck/custom.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/animate.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/plugins/footable/footable.core.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/plugins/steps/jquery.steps.css"/>" rel="stylesheet">

    <link href="<c:url value="/resources/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css"/>" rel="stylesheet">

</head>

<body>

    <div id="wrapper">

    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
                <li class="nav-header">
                    <div>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">${professorLogado.nome}</strong>
                             </span> <span class="text-muted text-xs block">Professor <b class="caret"></b></span> </span> </a>
                        <ul class="dropdown-menu animated fadeInRight m-t-xs">
                            <li><a href="profile.html">Perfil</a></li>
                            <li><a href="contacts.html">Contatos</a></li>
                            <li><a href="mailbox.html">Email</a></li>
                            <li class="divider"></li>
                            <li><a href="../logout">Sair</a></li>
                        </ul>
                    </div>
                    <div class="logo-element">
                        ME
                    </div>
                </li>
                <li >
                        <a href="index.jsp"><i class="fa fa-th-large"></i> <span class="nav-label">Cadastrar</span> <span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level collapse">
                            <li class="active"><a href="index.jsp">Aluno</a></li>
                            <li><a href="dashboard_2.jsp">Professor</a></li>
                            <li><a href="dashboard_3.jsp">Funcionário</a></li>
                            <li><a href="dashboard_4_1.jsp">Responsável</a></li>
                        </ul>
                    </li>
                    <li class="active">
                        <a href="lancar-notas"><i class="fa fa-diamond"></i> <span class="nav-label">Lançar nota</span></a>
                    </li>
                    <li>
                        <a href="realizar-chamada"><i class="fa fa-edit"></i> <span class="nav-label">Realizar chamada</span></a>
                    </li>
                    <li>
                        <a href="agendar-prova"><i class="fa fa-files-o"></i> <span class="nav-label">Agendar prova</span></a>
                    </li>
           
            </ul>

        </div>
    </nav>

        <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom">
        <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
        </div>
            <ul class="nav navbar-top-links navbar-right">
                <li>
                    <a href="../logout">
                        <i class="fa fa-sign-out"></i> Sair
                    </a>
                </li>
            </ul>

        </nav>
        </div>
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>Lançar Notas</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="inicio">Home</a>
                        </li>
                        <li class="active">
                            <strong>Lançar Notas</strong>
                        </li>
                    </ol>
                </div>
                <div class="col-lg-2">

                </div>
            </div>
        <div class="wrapper wrapper-content animated fadeInRight">
            
            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox float-e-margins">
							<div class="ibox-content">
								<h4>Turma</h4>
								<form action="abrirTurmaParaLancarNota" method="post">
									<select class="form-control m-b" name="turma">
										<option>- Escolha uma turma -</option>

										<c:forEach items="${turmas}" var="turma">
											<option>${turma.descricao}</option>
										</c:forEach>
									</select>

									<div align="right">
										<button class="btn btn-white" type="reset" href="inicio">Cancelar</button>
										<input class="btn btn-primary" type="submit" value="Abrir"/>
									</div>
								</form>
							</div>

						</div>
                        <div class="ibox-content">
                        
                        <input type="text" class="form-control input-sm m-b-xs" id="filter"
                                   placeholder="Search in table">

                            <table class="footable table table-stripped" data-page-size="15" data-filter=#filter>
                                <thead>
                                <tr>
                                	<th></th>
                                    <th>Nome</th>
                                    <th>Matrícula</th>
                                </tr>
                                </thead>
                                <tbody>
	                                <c:forEach items="${matriculas}" var="matricula">
	                                	<tr class="gradeX">
		                                	<td><input type="radio" class="i-checks" name="input[]"></td>
		                                    <td>${matricula.aluno.nome }</td>
		                                    <td>${matricula.codigo }</td>
	                                	</tr>
	                                </c:forEach>
                                </tbody>
                                <tfoot>
                                <tr>
                                    <td colspan="5">
                                        <ul class="pagination pull-right"></ul>
                                    </td>
                                </tr>
                                </tfoot>
                            </table>                            
                        
                        <div class="text-center">
                            <a data-toggle="modal" class="btn btn-primary" href="#modal-form">Form in simple modal box</a>
                            </div>
                            <div id="modal-form" class="modal fade" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-body">
                                            <div class="row">
                                                <p>
                            This is basic example of Step
                        </p>
                        <div id="wizard">
                        	
                        	<c:forEach items="${disciplinas}" var="disciplina">
                        		<h1>${disciplina.descricao}</h1>
	                            <div class="step-content">
	                                <div class="text-center m-t-md">
	                                <h2>Hello in Step 1</h2>
	                                <p>
	                                    This is the first content.
	                                </p>
	                                </div>
	                            </div>
                        	</c:forEach>
                        
                            <h1>Religião</h1>
                            <div class="step-content">
                                <div class="text-center m-t-md">
                                <h2>Hello in Step 1</h2>
                                <p>
                                    This is the first content.
                                </p>
                                </div>
                            </div>

                            <h1>Inglês</h1>
                            <div class="step-content">
                                <div class="text-center m-t-md">
                                    <h2>This is step 2</h2>
                                    <p>
                                        This content is diferent than the first one.
                                    </p>
                                </div>
                            </div>

                            <h1>Português</h1>
                            <div class="step-content">
                                <div class="text-center m-t-md">
                                    <h2>This is step 3</h2>
                                    <p>
                                        This is last content.
                                    </p>
                                </div>
                            </div>
                            
                            <h1>Matemática</h1>
                            <div class="step-content">
                                <div class="text-center m-t-md">
                                    <h2>This is step 3</h2>
                                    <p>
                                        This is last content.
                                    </p>
                                </div>
                            </div>
                            
                            <h1>História</h1>
                            <div class="step-content">
                                <div class="text-center m-t-md">
                                    <h2>This is step 3</h2>
                                    <p>
                                        This is last content.
                                    </p>
                                </div>
                            </div>
                            
                            <h1>Geografia</h1>
                            <div class="step-content">
                                <div class="text-center m-t-md">
                                    <h2>This is step 3</h2>
                                    <p>
                                        This is last content.
                                    </p>
                                </div>
                            </div>
                        </div>
                                        </div>
                                    </div>
                                    </div>
                                </div>
                        </div>
                        
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer">
            <div>
                <strong>Copyright</strong> MasterEdu &copy; 2015
            </div>
        </div>

        </div>
        </div>


    <!-- Mainly scripts -->
    <script src="<c:url value="/resources/js/jquery-2.1.1.js"/>"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
    <script src="<c:url value="/resources/js/plugins/metisMenu/jquery.metisMenu.js"/>"></script>
    <script src="<c:url value="/resources/js/plugins/slimscroll/jquery.slimscroll.min.js"/>"></script>

    <!-- Custom and plugin javascript -->
    <script src="<c:url value="/resources/js/inspinia.js"/>"></script>
    <script src="<c:url value="/resources/js/plugins/pace/pace.min.js"/>"></script>
    
      <!-- FooTable -->
    <script src="<c:url value="/resources/js/plugins/footable/footable.all.min.js"/>"></script>
    
    <!-- Steps -->
    <script src="<c:url value="/resources/js/plugins/staps/jquery.steps.min.js"/>"></script>

    <!-- iCheck -->
    <script src="<c:url value="/resources/js/plugins/iCheck/icheck.min.js"/>"></script>
        <script>
            $(document).ready(function () {
                $('.i-checks').iCheck({
                    checkboxClass: 'icheckbox_square-green',
                    radioClass: 'iradio_square-green',
                });
            });
        </script>
        
        <!-- Page-Level Scripts -->
    <script>
        $(document).ready(function() {

            $('.footable').footable();
            $('.footable2').footable();

        });

    </script>
    
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
</body>

</html>
