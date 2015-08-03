<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>MasterEdu | Formulário do aluno</title>

    <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/font-awesome/css/font-awesome.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/plugins/iCheck/custom.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/animate.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/plugins/steps/jquery.steps.css"/>" rel="stylesheet">
    
    <link href="<c:url value="/resources/css/plugins/datapicker/datepicker3.css"/>" rel="stylesheet">

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
                             </span> <span class="text-muted text-xs block">Administrador <b class="caret"></b></span> </span> </a>
                        <ul class="dropdown-menu animated fadeInRight m-t-xs">
                            <li><a href="profile.html">Perfil</a></li>
                            <li><a href="contacts.html">Contatos</a></li>
                            <li><a href="mailbox.html">Email</a></li>
                            <li class="divider"></li>
                            <li><a href="<%= request.getContextPath() + "/logout" %>">Sair</a></li>
                        </ul>
                    </div>
                    <div class="logo-element">
                        ME
                    </div>
                </li>
                <li><a href="escola">
				<i class="fa fa-star"></i> <span class="nav-label">Escola</span></a></li>
				
				<li class="active"><a href="alunos">
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

        <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom">
        <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
        </div>
            <ul class="nav navbar-top-links navbar-right">
                <li>
                    <a href="<%= request.getContextPath() + "/logout" %>">
                        <i class="fa fa-sign-out"></i> Sair
                    </a>
                </li>
            </ul>

        </nav>
        </div>
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>Formulário do aluno</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="inicio">Home</a>
                        </li>
                        <li>
                            <a href="../alunos">Gerenciar alunos</a>
                        </li>
                        <li class="active">
                            <strong>Formulário do aluno</strong>
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
                    <div class="ibox">
                        <div class="ibox-content">
                            <h2>
                                Validation Wizard Form
                            </h2>
                            <p>
                                This example show how to use Steps with jQuery Validation plugin.
                            </p>

                            <form id="form" action="salvar-aluno" method="post" class="wizard-big" >
                                <h1>Dados</h1>
                                <fieldset>
                                    <h2>Informações pessoais</h2>
                                    <div class="row">
                                        <div class="col-lg-8">
                                            <div class="form-group">
                                                <label>Nome completo *</label>
                                                <input id="nome" name="nome" type="text" class="form-control required">
                                            </div>
                                            <div class="form-group">
                                                <label>Nome do pai *</label>
                                                <input id="nomeDoPai" name="nomeDoPai" type="text" class="form-control required">
                                            </div>
                                            <div class="form-group">
                                                <label>Nome da mãe *</label>
                                                <input id="nomeDaMae" name="nomeDaMae" type="text" class="form-control required">
                                            </div>
                                            <div class="form-group">
                                                <label>Naturalidade *</label>
                                                <input id="naturalidade" name="naturalidade" type="text" class="form-control required">
                                            </div>
                                            <div class="form-group">
                                                <label>Nacionalidade *</label>
                                                <input id="nacionalidade" name="nacionalidade" type="text" class="form-control required">
                                            </div>
                                            <div class="form-group">
                                                <label>Sexo *</label>
                                                
                                                <select class="form-control m-b" name="sexo">
			                                        <option>M</option>
			                                        <option>F</option>
                                   				 </select>
                                            </div>
                                            <div class="form-group">
                                                <label>RG *</label>
                                                <input id="rg" name="rg" type="text" class="form-control required">
                                            </div>
                                            <div class="form-group">
                                                <label>CPF *</label>
                                                <input id="cpf" name="cpf" type="text" class="form-control required">
                                            </div>
                                            <div class="form-group">
                                                <label>Estado civil *</label>
                                                <select class="form-control m-b" name="estadoCivil">
			                                        <option>option 1</option>
			                                        <option>option 2</option>
			                                        <option>option 3</option>
			                                        <option>option 4</option>
                                   				 </select>
                                            </div>
											<div class="form-group" id="data_3">
												<label>Data de nascimento *</label>
												<div class="input-group date">
													<span class="input-group-addon"><i class="fa fa-calendar"></i></span>
													<input type="text" class="form-control required" value=" / / ">
												</div>
											</div>
											<div class="form-group">
                                                <label>Religião *</label>
                                                <input id="religiao" name="religiao" type="text" class="form-control required">
                                            </div>
                                            <div class="form-group">
												<label>Contato 1 *</label>
												<input type="text" class="form-control required" data-mask="(99) 9999-9999" placeholder=""> 
												<span class="help-block">(99) 9999-9999</span>
											</div>
                                            <div class="form-group">
												<label>Contato 2 *</label>
												<input type="text" class="form-control required" data-mask="(99) 9999-9999" placeholder=""> 
												<span class="help-block">(99) 9999-9999</span>
											</div>	
                                            <div class="form-group">
                                                <label>Observação *</label>
                                                <input id="observacao" name="observacao" type="text" class="form-control required">
                                            </div>
                                        </div>
                                       
                                    </div>

                                </fieldset>
                                <h1>Endereço</h1>
                                <fieldset>
                                    <h2>Endereço</h2>
                                    <div class="row">
                                        <div class="col-lg-8">
                                            <div class="form-group">
                                                <label>Logradouro *</label>
                                                <input id="logradouro" name="logradouro" type="text" class="form-control required">
                                            </div>
                                            <div class="form-group">
                                                <label>Numero *</label>
                                                <input id="numero" name="numero" type="text" class="form-control required">
                                            </div>
                                            <div class="form-group">
                                                <label>Complemento *</label>
                                                <input id="complemento" name="complemento" type="text" class="form-control required">
                                            </div>
                                            <div class="form-group">
                                                <label>Bairro *</label>
                                                <input id="bairro" name="bairro" type="text" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label>Cidade *</label>
                                                <input id="cidade" name="cidade" type="text" class="form-control required">
                                            </div>
                                            <div class="form-group">
                                                <label>UF *</label>
                                                <input id="uf" name="uf" type="text" class="form-control required">
                                            </div>
                                            <div class="form-group">
                                                <label>CEP *</label>
                                                <input id="cep" name="cep" type="text" class="form-control required">
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>

                                <h1>Ficha médica</h1>
                                <fieldset>
                                    <h2>Dados médicos</h2>
                                    <div class="row">
                                        <div class="col-lg-8">
                                            <div class="form-group">
                                                <label>Tipo sanguineo *</label>
                                                <input id="tipoSanguineo" name="tipoSanguineo" type="text" class="form-control required">
                                            </div>
                                            <div class="form-group">
                                                <label>Restrição a medicamentos *</label>
                                                <input id="restricaoMedicamento" name="restricaoMedicamento" type="text" class="form-control required">
                                            </div>
                                            <div class="form-group">
                                                <label>Doença crônica *</label>
                                                <input id="doencaCronica" name="doencaCronica" type="text" class="form-control required">
                                            </div>
                                            <div class="form-group">
                                                <label>Necessidade especial *</label>
                                                <input id="necessidadeEspecial" name="necessidadeEspecial" type="text" class="form-control required">
                                            </div>
                                            <div class="form-group">
                                                <label>Observação *</label>
                                                <input id="observacao" name="observacao" type="text" class="form-control required">
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>

                                <h1>Responsável</h1>
                                <fieldset>
                                    <h2>Dados do responsável</h2>
                                    <div class="row">
                                        <div class="col-lg-8">
                                            <div class="form-group">
                                                <label>Nome *</label>
                                                <input id="nome" name="nome" type="text" class="form-control required">
                                            </div>
                                            <div class="form-group">
                                                <label>Parentesco *</label>
                                                <input id="parentesco" name="parentesco" type="text" class="form-control required">
                                            </div>
                                            <div class="form-group">
                                                <label>CPF *</label>
                                                <input id="cpf" name="cpf" type="text" class="form-control required">
                                            </div>
                                            <div class="form-group">
                                                <label>Email *</label>
                                                <input id="email" name="email" type="text" class="form-control required email">
                                            </div>
											<div class="form-group">
                                                <label>Contato 1 *</label>
                                                <input id="contato1" name="contato1" type="text" class="form-control required">
                                            </div>
                                            <div class="form-group">
                                                <label>Contato 2 *</label>
                                                <input id="contato2" name="contato2" type="text" class="form-control required">
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>
                                
                                <h1>Documentos</h1>
                                <fieldset>
                                    <div class="text-center" style="margin-top: 120px">
                                        <h2>You did it Man :-)</h2>
                                    </div>
                                </fieldset>
                                
                                <h1>Matrícula</h1>
                                <fieldset>
                                    <div class="text-center" style="margin-top: 120px">
                                        <h2>You did it Man :-)</h2>
                                    </div>
                                </fieldset>
                            </form>
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

	<!-- Jquery Validate -->
    <script src="<c:url value="/resources/js/plugins/validate/jquery.validate.min.js"/>"></script>

	<!-- Steps -->
    <script src="<c:url value="/resources/js/plugins/staps/jquery.steps.min.js"/>"></script>

    <!-- iCheck -->
    <script src="<c:url value="/resources/js/plugins/iCheck/icheck.min.js"/>"></script>

    <!-- Custom and plugin javascript -->
    <script src="<c:url value="/resources/js/inspinia.js"/>"></script>
    <script src="<c:url value="/resources/js/plugins/pace/pace.min.js"/>"></script>
    
    <!-- Chosen -->
    <script src="<c:url value="/resources/js/plugins/chosen/chosen.jquery.js"/>"></script>

   <!-- JSKnob -->
   <script src="<c:url value="/resources/js/plugins/jsKnob/jquery.knob.js"/>"></script>

   <!-- Input Mask-->
    <script src="<c:url value="/resources/js/plugins/jasny/jasny-bootstrap.min.js"/>"></script>

   <!-- Data picker -->
   <script src="<c:url value="/resources/js/plugins/datapicker/bootstrap-datepicker.js"/>"></script>

   <!-- NouSlider -->
   <script src="<c:url value="/resources/js/plugins/nouslider/jquery.nouislider.min.js"/>"></script>

   <!-- Switchery -->
   <script src="<c:url value="/resources/js/plugins/switchery/switchery.js"/>"></script>

    <!-- IonRangeSlider -->
    <script src="<c:url value="/resources/js/plugins/ionRangeSlider/ion.rangeSlider.min.js"/>"></script>

    <!-- iCheck -->
    <script src="<c:url value="/resources/js/plugins/iCheck/icheck.min.js"/>"></script>

    <!-- MENU -->
    <script src="<c:url value="/resources/js/plugins/metisMenu/jquery.metisMenu.js"/>"></script>

    <!-- Color picker -->
    <script src="<c:url value="/resources/js/plugins/colorpicker/bootstrap-colorpicker.min.js"/>"></script>

    <!-- Clock picker -->
    <script src="<c:url value="/resources/js/plugins/clockpicker/clockpicker.js"/>"></script>

    <!-- Image cropper -->
    <script src="<c:url value="/resources/js/plugins/cropper/cropper.min.js"/>"></script>

    <!-- Date range use moment.js same as full calendar plugin -->
    <script src="<c:url value="/resources/js/plugins/fullcalendar/moment.min.js"/>"></script>

    <!-- Date range picker -->
    <script src="<c:url value="/resources/js/plugins/daterangepicker/daterangepicker.js"/>"></script>

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

<script>
        $(document).ready(function(){

            var $image = $(".image-crop > img")
            $($image).cropper({
                aspectRatio: 1.618,
                preview: ".img-preview",
                done: function(data) {
                    // Output the result data for cropping image.
                }
            });

            var $inputImage = $("#inputImage");
            if (window.FileReader) {
                $inputImage.change(function() {
                    var fileReader = new FileReader(),
                            files = this.files,
                            file;

                    if (!files.length) {
                        return;
                    }

                    file = files[0];

                    if (/^image\/\w+$/.test(file.type)) {
                        fileReader.readAsDataURL(file);
                        fileReader.onload = function () {
                            $inputImage.val("");
                            $image.cropper("reset", true).cropper("replace", this.result);
                        };
                    } else {
                        showMessage("Please choose an image file.");
                    }
                });
            } else {
                $inputImage.addClass("hide");
            }

            $("#download").click(function() {
                window.open($image.cropper("getDataURL"));
            });

            $("#zoomIn").click(function() {
                $image.cropper("zoom", 0.1);
            });

            $("#zoomOut").click(function() {
                $image.cropper("zoom", -0.1);
            });

            $("#rotateLeft").click(function() {
                $image.cropper("rotate", 45);
            });

            $("#rotateRight").click(function() {
                $image.cropper("rotate", -45);
            });

            $("#setDrag").click(function() {
                $image.cropper("setDragMode", "crop");
            });

            $('#data_1 .input-group.date').datepicker({
                todayBtn: "linked",
                keyboardNavigation: false,
                forceParse: false,
                calendarWeeks: true,
                autoclose: true
            });

            $('#data_2 .input-group.date').datepicker({
                startView: 1,
                todayBtn: "linked",
                keyboardNavigation: false,
                forceParse: false,
                autoclose: true,
                format: "dd/mm/yyyy"
            });

            $('#data_3 .input-group.date').datepicker({
                startView: 2,
                todayBtn: "linked",
                keyboardNavigation: false,
                forceParse: false,
                autoclose: true
            });

            $('#data_4 .input-group.date').datepicker({
                minViewMode: 1,
                keyboardNavigation: false,
                forceParse: false,
                autoclose: true,
                todayHighlight: true
            });

            $('#data_5 .input-daterange').datepicker({
                keyboardNavigation: false,
                forceParse: false,
                autoclose: true
            });

            var elem = document.querySelector('.js-switch');
            var switchery = new Switchery(elem, { color: '#1AB394' });

            var elem_2 = document.querySelector('.js-switch_2');
            var switchery_2 = new Switchery(elem_2, { color: '#ED5565' });

            var elem_3 = document.querySelector('.js-switch_3');
            var switchery_3 = new Switchery(elem_3, { color: '#1AB394' });

            $('.i-checks').iCheck({
                checkboxClass: 'icheckbox_square-green',
                radioClass: 'iradio_square-green'
            });

            $('.demo1').colorpicker();

            var divStyle = $('.back-change')[0].style;
            $('#demo_apidemo').colorpicker({
                color: divStyle.backgroundColor
            }).on('changeColor', function(ev) {
                        divStyle.backgroundColor = ev.color.toHex();
                    });

            $('.clockpicker').clockpicker();

            $('input[name="daterange"]').daterangepicker();

            $('#reportrange span').html(moment().subtract(29, 'days').format('MMMM D, YYYY') + ' - ' + moment().format('MMMM D, YYYY'));

            $('#reportrange').daterangepicker({
                format: 'MM/DD/YYYY',
                startDate: moment().subtract(29, 'days'),
                endDate: moment(),
                minDate: '01/01/2012',
                maxDate: '12/31/2015',
                dateLimit: { days: 60 },
                showDropdowns: true,
                showWeekNumbers: true,
                timePicker: false,
                timePickerIncrement: 1,
                timePicker12Hour: true,
                ranges: {
                    'Today': [moment(), moment()],
                    'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                    'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                    'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                    'This Month': [moment().startOf('month'), moment().endOf('month')],
                    'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                },
                opens: 'right',
                drops: 'down',
                buttonClasses: ['btn', 'btn-sm'],
                applyClass: 'btn-primary',
                cancelClass: 'btn-default',
                separator: ' to ',
                locale: {
                    applyLabel: 'Submit',
                    cancelLabel: 'Cancel',
                    fromLabel: 'From',
                    toLabel: 'To',
                    customRangeLabel: 'Custom',
                    daysOfWeek: ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr','Sa'],
                    monthNames: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
                    firstDay: 1
                }
            }, function(start, end, label) {
                console.log(start.toISOString(), end.toISOString(), label);
                $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
            });


        });
        var config = {
                '.chosen-select'           : {},
                '.chosen-select-deselect'  : {allow_single_deselect:true},
                '.chosen-select-no-single' : {disable_search_threshold:10},
                '.chosen-select-no-results': {no_results_text:'Oops, nothing found!'},
                '.chosen-select-width'     : {width:"95%"}
                }
            for (var selector in config) {
                $(selector).chosen(config[selector]);
            }

        $("#ionrange_1").ionRangeSlider({
            min: 0,
            max: 5000,
            type: 'double',
            prefix: "$",
            maxPostfix: "+",
            prettify: false,
            hasGrid: true
        });

        $("#ionrange_2").ionRangeSlider({
            min: 0,
            max: 10,
            type: 'single',
            step: 0.1,
            postfix: " carats",
            prettify: false,
            hasGrid: true
        });

        $("#ionrange_3").ionRangeSlider({
            min: -50,
            max: 50,
            from: 0,
            postfix: "°",
            prettify: false,
            hasGrid: true
        });

        $("#ionrange_4").ionRangeSlider({
            values: [
                "January", "February", "March",
                "April", "May", "June",
                "July", "August", "September",
                "October", "November", "December"
            ],
            type: 'single',
            hasGrid: true
        });

        $("#ionrange_5").ionRangeSlider({
            min: 10000,
            max: 100000,
            step: 100,
            postfix: " km",
            from: 55000,
            hideMinMax: true,
            hideFromTo: false
        });

        $(".dial").knob();

        $("#basic_slider").noUiSlider({
            start: 40,
            behaviour: 'tap',
            connect: 'upper',
            range: {
                'min':  20,
                'max':  80
            }
        });

        $("#range_slider").noUiSlider({
            start: [ 40, 60 ],
            behaviour: 'drag',
            connect: true,
            range: {
                'min':  20,
                'max':  80
            }
        });

        $("#drag-fixed").noUiSlider({
            start: [ 40, 60 ],
            behaviour: 'drag-fixed',
            connect: true,
            range: {
                'min':  20,
                'max':  80
            }
        });


    </script>
    
</body>

</html>
