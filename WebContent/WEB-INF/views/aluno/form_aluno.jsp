<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>MasterEdu | Aluno</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="css/plugins/steps/jquery.steps.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

</head>

<body>

    <div id="wrapper">

    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element"> <span>
                            <img alt="image" class="img-circle" src="img/profile_small.jpg" />
                             </span>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">David Williams</strong>
                             </span> <span class="text-muted text-xs block">Art Director <b class="caret"></b></span> </span> </a>
                        <ul class="dropdown-menu animated fadeInRight m-t-xs">
                            <li><a href="profile.jsp">Perfil</a></li>
                            <li><a href="contacts.jsp">Contatos</a></li>
                            <li><a href="mailbox.jsp">Email</a></li>
                            <li class="divider"></li>
                            <li><a href="login.jsp">Sair</a></li>
                        </ul>
                    </div>
                    <div class="logo-element">
                        MasterEdu
                    </div>
                </li>
                <li>
                    <a href="index.jsp"><i class="fa fa-th-large"></i> <span class="nav-label">Dashboards</span> <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="index.jsp">Dashboard v.1</a></li>
                        <li><a href="dashboard_2.jsp">Dashboard v.2</a></li>
                        <li><a href="dashboard_3.jsp">Dashboard v.3</a></li>
                        <li><a href="dashboard_4_1.jsp">Dashboard v.4</a></li>
                    </ul>
                </li>
                <li>
                    <a href="layouts.jsp"><i class="fa fa-diamond"></i> <span class="nav-label">Layouts</span></a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-bar-chart-o"></i> <span class="nav-label">Graphs</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="graph_flot.jsp">Flot Charts</a></li>
                        <li><a href="graph_morris.jsp">Morris.js Charts</a></li>
                        <li><a href="graph_rickshaw.jsp">Rickshaw Charts</a></li>
                        <li><a href="graph_chartjs.jsp">Chart.js</a></li>
                        <li><a href="graph_chartist.jsp">Chartist</a></li>
                        <li><a href="graph_peity.jsp">Peity Charts</a></li>
                        <li><a href="graph_sparkline.jsp">Sparkline Charts</a></li>
                    </ul>
                </li>
                <li>
                    <a href="mailbox.jsp"><i class="fa fa-envelope"></i> <span class="nav-label">Mailbox </span><span class="label label-warning pull-right">16/24</span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="mailbox.jsp">Inbox</a></li>
                        <li><a href="mail_detail.jsp">Email view</a></li>
                        <li><a href="mail_compose.jsp">Compose email</a></li>
                        <li><a href="email_template.jsp">Email templates</a></li>
                    </ul>
                </li>
                <li>
                    <a href="metrics.jsp"><i class="fa fa-pie-chart"></i> <span class="nav-label">Metrics</span> <span class="label label-primary pull-right">NEW</span> </a>
                </li>
                <li>
                    <a href="widgets.jsp"><i class="fa fa-flask"></i> <span class="nav-label">Widgets</span></a>
                </li>
                <li class="active">
                    <a href="#"><i class="fa fa-edit"></i> <span class="nav-label">Forms</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="form_basic.jsp">Basic form</a></li>
                        <li><a href="form_advanced.jsp">Advanced Plugins</a></li>
                        <li class="active"><a href="form_wizard.jsp">Wizard</a></li>
                        <li><a href="form_file_upload.jsp">File Upload</a></li>
                        <li><a href="form_editors.jsp">Text Editor</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-desktop"></i> <span class="nav-label">App Views</span>  <span class="pull-right label label-primary">SPECIAL</span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="contacts.jsp">Contacts</a></li>
                        <li><a href="profile.jsp">Profile</a></li>
                        <li><a href="projects.jsp">Projects</a></li>
                        <li><a href="project_detail.jsp">Project detail</a></li>
                        <li><a href="teams_board.jsp">Teams board</a></li>
                        <li><a href="social_feed.jsp">Social feed</a></li>
                        <li><a href="clients.jsp">Clients</a></li>
                        <li><a href="full_height.jsp">Outlook view</a></li>
                        <li><a href="file_manager.jsp">File manager</a></li>
                        <li><a href="calendar.jsp">Calendar</a></li>
                        <li><a href="issue_tracker.jsp">Issue tracker</a></li>
                        <li><a href="blog.jsp">Blog</a></li>
                        <li><a href="article.jsp">Article</a></li>
                        <li><a href="faq.jsp">FAQ</a></li>
                        <li><a href="timeline.jsp">Timeline</a></li>
                        <li><a href="pin_board.jsp">Pin board</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-files-o"></i> <span class="nav-label">Other Pages</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="search_results.jsp">Search results</a></li>
                        <li><a href="lockscreen.jsp">Lockscreen</a></li>
                        <li><a href="invoice.jsp">Invoice</a></li>
                        <li><a href="login.jsp">Login</a></li>
                        <li><a href="login_two_columns.jsp">Login v.2</a></li>
                        <li><a href="forgot_password.jsp">Forget password</a></li>
                        <li><a href="register.jsp">Register</a></li>
                        <li><a href="404.jsp">404 Page</a></li>
                        <li><a href="500.jsp">500 Page</a></li>
                        <li><a href="empty_page.jsp">Empty page</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-globe"></i> <span class="nav-label">Miscellaneous</span><span class="label label-info pull-right">NEW</span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="toastr_notifications.jsp">Notification</a></li>
                        <li><a href="nestable_list.jsp">Nestable list</a></li>
                        <li><a href="agile_board.jsp">Agile board</a></li>
                        <li><a href="timeline_2.jsp">Timeline v.2</a></li>
                        <li><a href="diff.jsp">Diff</a></li>
                        <li><a href="sweetalert.jsp">Sweet alert</a></li>
                        <li><a href="idle_timer.jsp">Idle timer</a></li>
                        <li><a href="spinners.jsp">Spinners</a></li>
                        <li><a href="tinycon.jsp">Live favicon</a></li>
                        <li><a href="google_maps.jsp">Google maps</a></li>
                        <li><a href="code_editor.jsp">Code editor</a></li>
                        <li><a href="modal_window.jsp">Modal window</a></li>
                        <li><a href="forum_main.jsp">Forum view</a></li>
                        <li><a href="validation.jsp">Validation</a></li>
                        <li><a href="tree_view.jsp">Tree view</a></li>
                        <li><a href="chat_view.jsp">Chat view</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-flask"></i> <span class="nav-label">UI Elements</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="typography.jsp">Typography</a></li>
                        <li><a href="icons.jsp">Icons</a></li>
                        <li><a href="draggable_panels.jsp">Draggable Panels</a></li>
                        <li><a href="buttons.jsp">Buttons</a></li>
                        <li><a href="video.jsp">Video</a></li>
                        <li><a href="tabs_panels.jsp">Panels</a></li>
                        <li><a href="tabs.jsp">Tabs</a></li>
                        <li><a href="notifications.jsp">Notifications & Tooltips</a></li>
                        <li><a href="badges_labels.jsp">Badges, Labels, Progress</a></li>
                    </ul>
                </li>

                <li>
                    <a href="grid_options.jsp"><i class="fa fa-laptop"></i> <span class="nav-label">Grid options</span></a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-table"></i> <span class="nav-label">Tables</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="table_basic.jsp">Static Tables</a></li>
                        <li><a href="table_data_tables.jsp">Data Tables</a></li>
                        <li><a href="table_foo_table.jsp">Foo Tables</a></li>
                        <li><a href="jq_grid.jsp">jqGrid</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-shopping-cart"></i> <span class="nav-label">E-commerce</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="ecommerce_products_grid.jsp">Products grid</a></li>
                        <li><a href="ecommerce_product_list.jsp">Products list</a></li>
                        <li><a href="ecommerce_product.jsp">Product edit</a></li>
                        <li><a href="ecommerce-orders.jsp">Orders</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-picture-o"></i> <span class="nav-label">Gallery</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="basic_gallery.jsp">Lightbox Gallery</a></li>
                        <li><a href="carousel.jsp">Bootstrap Carusela</a></li>

                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-sitemap"></i> <span class="nav-label">Menu Levels </span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li>
                            <a href="#">Third Level <span class="fa arrow"></span></a>
                            <ul class="nav nav-third-level">
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>

                            </ul>
                        </li>
                        <li><a href="#">Second Level Item</a></li>
                        <li>
                            <a href="#">Second Level Item</a></li>
                        <li>
                            <a href="#">Second Level Item</a></li>
                    </ul>
                </li>
                <li>
                    <a href="css_animation.jsp"><i class="fa fa-magic"></i> <span class="nav-label">CSS Animations </span><span class="label label-info pull-right">62</span></a>
                </li>
                <li class="landing_link">
                    <a target="_blank" href="landing.jsp"><i class="fa fa-star"></i> <span class="nav-label">Landing Page</span> <span class="label label-warning pull-right">NEW</span></a>
                </li>
                <li class="special_link">
                    <a href="package.jsp"><i class="fa fa-database"></i> <span class="nav-label">Package</span></a>
                </li>
            </ul>

        </div>
    </nav>

        <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom">
        <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
            <form role="search" class="navbar-form-custom" action="search_results.jsp">
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
                                <a href="profile.jsp" class="pull-left">
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
                                <a href="profile.jsp" class="pull-left">
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
                                <a href="profile.jsp" class="pull-left">
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
                                <a href="mailbox.jsp">
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
                            <a href="mailbox.jsp">
                                <div>
                                    <i class="fa fa-envelope fa-fw"></i> You have 16 messages
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="profile.jsp">
                                <div>
                                    <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                    <span class="pull-right text-muted small">12 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="grid_options.jsp">
                                <div>
                                    <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="text-center link-block">
                                <a href="notifications.jsp">
                                    <strong>See All Alerts</strong>
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </div>
                        </li>
                    </ul>
                </li>


                <li>
                    <a href="login.jsp">
                        <i class="fa fa-sign-out"></i> Sair
                    </a>
                </li>
            </ul>

        </nav>
        </div>
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>Formulário</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="index.jsp">Início</a>
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
                        <div class="ibox-title">
                            <h5>Cadastro de aluno</h5>
                            <div class="ibox-tools">
                                <a class="collapse-link">
                                    <i class="fa fa-chevron-up"></i>
                                </a>
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                    <i class="fa fa-wrench"></i>
                                </a>
                                <ul class="dropdown-menu dropdown-user">
                                    <li><a href="#">Config option 1</a>
                                    </li>
                                    <li><a href="#">Config option 2</a>
                                    </li>
                                </ul>
                                <a class="close-link">
                                    <i class="fa fa-times"></i>
                                </a>
                            </div>
                        </div>
                        <div class="ibox-content">
                            <h2>
                                Adicionar aluno
                            </h2>
                            <p>
                                Preenche todos os dados de um aluno e o adiciona
                            </p>

                            <form id="form" action="adicionaAluno" class="wizard-big">
                                <h1>Informações pessoais</h1>
                                <fieldset>
                                    <h2>Dados</h2>
                                    <div class="row">
                                        <div class="col-lg-8">
                                            <div class="form-group">
                                                <label>Nome *</label>
                                                <input id="nome" name="nome" type="text" class="form-control required">
                                            </div>
                                             <div class="form-group">
                                                <label>Nome *</label>
                                                <input id="nome" name="nome" type="text" class="form-control required">
                                            </div>
                                            <div class="form-group">
                                                <label>Password *</label>
                                                <input id="password" name="password" type="text" class="form-control required">
                                            </div>
                                            <div class="form-group">
                                                <label>Confirm Password *</label>
                                                <input id="confirm" name="confirm" type="text" class="form-control required">
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="text-center">
                                                <div style="margin-top: 20px">
                                                    <i class="fa fa-sign-in" style="font-size: 180px;color: #e5e5e5 "></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </fieldset>
                                
                                <h1>Endereço</h1>
                                <fieldset>
                                    <h2>Endereço</h2>
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label>Logradouro *</label>
                                                <input id="logradouro" name="logradouro" type="text" class="form-control required">
                                            </div>
                                            <div class="form-group">
                                                <label>Número *</label>
                                                <input id="numero" name="numero" type="text" class="form-control required">
                                            </div>
                                            <div class="form-group">
                                                <label>Complemento *</label>
                                                <input id="complemento" name="complemento" type="text" class="form-control required">
                                            </div>
                                            <div class="form-group">
                                                <label>CEP *</label>
                                                <input id="cep" name="cep" type="text" class="form-control required">
                                            </div>
                                            <div class="form-group">
                                                <label>Bairro *</label>
                                                <input id="bairro" name="bairro" type="text" class="form-control required">
                                            </div>
                                            <div class="form-group">
                                                <label>Cidade *</label>
                                                <input id="cidade" name="cidade" type="text" class="form-control required">
                                            </div>
                                            <div class="form-group">
                                                <label>UF *</label>
                                                <input id="uf" name="uf" type="text" class="form-control required">
                                            </div>
                                        </div>
                                        
                                    </div>
                                </fieldset>
                                <h1>Responsável</h1>
                                <fieldset>
                                    <h2>Profile Information</h2>
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label>First name *</label>
                                                <input id="name" name="name" type="text" class="form-control required">
                                            </div>
                                            <div class="form-group">
                                                <label>Last name *</label>
                                                <input id="surname" name="surname" type="text" class="form-control required">
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label>Email *</label>
                                                <input id="email" name="email" type="text" class="form-control required email">
                                            </div>
                                            <div class="form-group">
                                                <label>Address *</label>
                                                <input id="address" name="address" type="text" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>

                                <h1>Ficha médica</h1>
                                <fieldset>
                                    <div class="text-center" style="margin-top: 120px">
                                        <h2>You did it Man :-)</h2>
                                    </div>
                                </fieldset>

                                <h1>Finish</h1>
                                <fieldset>
                                    <h2>Terms and Conditions</h2>
                                    <input id="acceptTerms" name="acceptTerms" type="checkbox" class="required"> <label for="acceptTerms">I agree with the Terms and Conditions.</label>
                                </fieldset>
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

</body>

</html>
