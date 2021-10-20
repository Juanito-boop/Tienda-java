<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<!DOCTYPE html>
	<html>

	<head>
		<title>Ingreso Usuario</title>
		<link rel="stylesheet" href="/Grupo02GitHubTeam/LogUser.css">
		C:\Users\FAMILIA\Desktop\tienda java\src\main\webapp\LogUser.css
		<script>
			function Enviar() {
				var valido = Validar();
				if (valido == true) {
					var usuario = document.getElementById("txtUser").value.trim();
					var password = document.getElementById("txtPass").value.trim();

					var http = new XMLHttpRequest();
					var url = '/Grupo02GitHubTeam/logUser';
					var params = "nombre=" + usuario + "&" + "password=" + password;

					http.open('POST', url, true);

					//Send the proper header information along with the request 
					http.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
					http.onreadystatechange = function () {//Call a function when the state changes. 
						if (http.readyState == 4 && http.status == 200) {
							var myDiv = document.getElementById("dvTabla");
							myDiv.innerHTML = "<b>" + http.responseText + "</b>";
						}
					}

					http.send(params);

					return;
				} else {
					alert("Los datos no son Validos");
					return;
				}
			}
			function Validar() {
				var txtN = document.getElementById("txtUser");
				var txtA = document.getElementById("txtPass");
				if (txtN.value.trim().length == 0) {
					alert("Falta ingresar el nombre.");
					return false;
				} else if (txtA.value.trim().length == 0) {
					alert("Falta ingresar el password");
					return false;
				} else {
					return true;
				}
			}
		</script>

	</head>

	<body>
		<section class="form-login">
			<h3>Ingreso de Usuario</h3>

			<b>Usuario:</b>
			<input class="controls" type='text' id='txtUser' placeholder="Usuario"></input>
			<br>
			<b>Password:</b>
			<input class="controls" type='password' id='txtPass' placeholder="Contraseña"></input>

			<br>
			<button onclick="Enviar()" class='button_pr'>Ingresar</button>

		</section>
		<div id="dvTabla"></div>
	</body>

	</html>