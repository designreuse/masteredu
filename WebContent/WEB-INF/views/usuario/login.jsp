<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>MasterEdu | Login</title>
    
    <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/font-awesome/css/font-awesome.css"/>" rel="stylesheet">
	<link href="<c:url value="/resources/css/plugins/iCheck/custom.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/animate.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">
    
    <script type="text/javascript">
    function valida_login(){ 
       	//valido o login
       	if (document.form_login.login.value.length==0){ 
          	alert("Informe um login!") 
          	document.form_login.login.focus() 
          	return 0; 
       	}
       	
       	//valido a senha 
       	if (document.form_login.senha.value.length==0){ 
          	alert("Informe uma senha!") 
          	document.form_login.senha.focus() 
          	return 0; 
       	}
       	
		    if(document.form_login.unidade.selectedIndex==0){
		        alert("Informe uma unidade!");
		        document.form_login.unidade.focus();
		        return 0;
		    }
		    
		    document.form_login.submit(); 
    	}
    </script>

</head>

<body class="gray-bg">

    <div class="middle-box text-center loginscreen animated fadeInDown">
        <div>
            <div>

                <h1 class="logo-name">ME</h1>

            </div>
            <h3>Bem-vindo ao MasterEdu</h3>
            <p>Sistema perfeito para gerir uma instituição escolar, com os recursos necessários para obter o melhor controle.
            </p>
            <p>Entre. Para vê-lo em ação.</p>
            <form name="form_login" class="m-t" role="form" action="logar" method="post" id="login">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Login" required="" name="login">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="Senha" required="" name="senha">
                </div>
                <div class="form-group">
					<select class="form-control m-b" name="unidade" required="">
						<option>- Escolha uma unidade -</option>
						
						<c:forEach items="${unidades}" var="unidade">
							<option>${unidade.nome}</option>
						</c:forEach>
						
					</select>
				</div>
          
                <button type="button" class="btn btn-primary block full-width m-b" id="btEntrar" onclick="valida_login()">Entrar</button>

                <a href="resetarSenha"><small>Esqueceu sua senha?</small></a>
                
            </form>
            <p class="m-t"> <small>MasterEdu &copy; 2015</small> </p>
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

</body>

</html>
