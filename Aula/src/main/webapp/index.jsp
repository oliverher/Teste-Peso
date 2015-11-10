<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>Calculo de IMC</title>
<meta name="generator" content="Bootply" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/bootstrap.min.css" rel="stylesheet">
<!--[if lt IE 9]>
			<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
<link href="css/styles.css" rel="stylesheet">
</head>
<body style="background-color:#e1f5fe;">
	<!--login modal-->
	<div id="loginModal" class="modal show" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="text-center">Calculo de IMC</h1>
				</div>
				<div class="modal-body">
					<form class="form col-md-12 center-block">
						<div class="form-group">
							<input type="text" class="form-control input-lg"
								placeholder="Peso" name="peso">
						</div>
						<div class="form-group">
							<input type="text" class="form-control input-lg"
								placeholder="Altura" name="altura">
						</div>
						<div class="form-group">
							<button type="submit" class="btn btn-primary btn-lg btn-block">Calcular</button>
							<span style="text-align:center; font-size: 22px; font-weight: bold; line-height: 60px; margin-left: 12.5%;"> <%
  			String pamAltura = request.getParameter("altura");
  			pamAltura = pamAltura == null ? "0" : pamAltura;
  			double altura = Double.parseDouble(pamAltura);
  			String pamPeso = request.getParameter("peso");
  			pamPeso = pamPeso == null ? "0" : pamPeso;
  			double peso = Double.parseDouble(pamPeso);
  			long resultado = Math.round(new Double(peso / (altura*altura)));		
  			
  			out.print("Você está ");
  			
  			if(resultado < 17) {
  				out.print("muito abaixo do peso. (IMC = "+resultado+")");
  			} else if (resultado >= 17 && resultado <= 18.49) {
  				out.print("abaixo do peso. (IMC = "+resultado+")");
  			} else if (resultado >= 18.50 && resultado <= 24.99) {
  				out.print("com peso normal. (IMC = "+resultado+")");
  			} else if (resultado >= 25 && resultado <= 29.99) {
  				out.print("acima do peso. (IMC = "+resultado+")");
  			} else {
  				out.print("obeso. (IMC = "+resultado+")");
  			}

              %>
							</span>
						</div>
					</form>
				</div>
				<div class="modal-footer"></div>
			</div>
		</div>
	</div>
	<!-- script references -->
	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>