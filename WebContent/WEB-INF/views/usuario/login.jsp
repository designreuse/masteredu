<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>MasterEdu | Login</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
	<link href="css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    
    <SCRIPT language="JavaScript" type="text/javascript">
    function isRadioButtonSelecionado(pNmRadioButton) {
    	var i = 0;

    	radioButton = eval(pNmRadioButton);
    	
    	if (radioButton == null) {
    		return false;
    	}
    	
    	if (radioButton.checked) {
    		// Quando existe apenas um radio button no formulario
    		return true;
    	}
    	
    	for (i = 0; i < radioButton.length; i++) {
    		if (radioButton.item(i).checked == true) {
    			return true;
    		}
    	}
    	
    
    	return false;
    }
    
	    function atualizarBotoes() {
	    	
	    	if (isRadioButtonSelecionado(document.login.tipoUsuario)) {
	    		document.getElementById("btEntrar").disabled = false;
	    	} else {
	    		document.getElementById("btEntrar").disabled = true;
	    	}
	    		
	    }
    </SCRIPT>

</head>

<body class="gray-bg" onLoad="atualizarBotoes();">

    <div class="middle-box text-center loginscreen animated fadeInDown">
        <div>
            <div>

                <h1 class="logo-name">ME</h1>

            </div>
            <h3>Bem-vindo ao MasterEdu</h3>
            <p>Sistema perfeito para gerir uma instituição escolar, com os recursos necessários para obter o melhor controle.
                <!--Continually expanded and constantly improved Inspinia Admin Them (IN+)-->
            </p>
            <p>Entre. Para vê-lo em ação.</p>
            <form class="m-t" role="form" action="logar" method="post" id="login">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Login" required="" name="login">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="Senha" required="" name="senha">
                </div>
                <div class="form-group"><label class="col-sm-2 control-label">Entrar como: <br/></label>

                                    <div class="col-sm-10">
                                        <div class="i-checks"><label> <input type="radio" class="form-control"  value="aluno" name="tipoUsuario" onclick="atualizarBotoes()" class="required"> <i></i> Aluno </label></div>
                                        <div class="i-checks"><label> <input type="radio" class="form-control" value="responsavel" name="tipoUsuario" onclick="atualizarBotoes()" class="required"> <i></i> Responsável </label></div>
                                        <div class="i-checks"><label> <input type="radio" class="form-control" value="professor" name="tipoUsuario" onclick="atualizarBotoes()" class="required"> <i></i> Professor </label></div>
                                        
                                    </div>
                </div>
                <button type="submit" class="btn btn-primary block full-width m-b" id="btEntrar">Entrar</button>

                <a href="resetarSenha"><small>Esqueceu sua senha?</small></a>
                
            </form>
            <p class="m-t"> <small>MasterEdu &copy; 2014</small> </p>
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
            $(document).ready(function () {
                $('.i-checks').iCheck({
                    checkboxClass: 'icheckbox_square-green',
                    radioClass: 'iradio_square-green',
                });
            });
        </script>

</body>

</html>
