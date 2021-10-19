<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Ingreso Proveedor</title>
		<link rel="stylesheet" href="/Grupo02GitHubTeam/css/AddProveedor.css">
		<script>
			function Enviar(){
				var valido = Validar();
				if(valido==true){
					var nombre = document.getElementById("txtName").value.trim(); 
					var direccion = document.getElementById("txtDir").value.trim();
					var telefono = document.getElementById("txtTel").value.trim();
					var ciudad = document.getElementById("txtCity").value.trim();
					var nit = document.getElementById("txtNit").value.trim();
					
					var http = new XMLHttpRequest();
					var url = '/Grupo02GitHubTeam/addProve';
					var params = "nombre=" + nombre + "&" + "direccion=" + direccion + "&" + "telefono=" + telefono  + "&" + "ciudad=" + ciudad  + "&" + "nit=" + nit;
					
					http.open('POST', url, true);
					
					//Send the proper header information along with the request 
					http.setRequestHeader('Content-type', 'application/x-www-form-urlencoded'); 
					http.onreadystatechange = function() {//Call a function when the state changes. 
						if (http.readyState == 4 && http.status == 200) { 
							var myDiv = document.getElementById("dvTabla");
							myDiv.innerHTML = "<b>"+http.responseText+"</b>";
						} 
					}
					
					http.send(params);
					
					return;
				}else{
					alert("Los datos no son Validos");
					return;
				}
			}
			function Validar(){
				var txtN = document.getElementById("txtName");
				var txtD = document.getElementById("txtDir");
				var txtT = document.getElementById("txtTel");
				var txtC = document.getElementById("txtCity");
				var txtNi = document.getElementById("txtNit");
				if(txtN.value.trim().length==0){
					alert("Falta ingresar el nombre.");
					return false;
				}else if(txtD.value.trim().length==0){
					alert("Falta ingresar la direccion.");
					return false;
				}else if(txtT.value.trim().length==0){
					alert("Falta ingresar el telefono.");
					return false;
				}else if(txtC.value.trim().length==0){
					alert("Falta ingresar la ciudad.");
					return false;
				}else if(txtNi.value.trim().length==0){
					alert("Falta ingresar el Nit.");
					return false;
				}else{
					return true;
				}
			}
		</script>
	</head>
	<body>
		<h1 class="c">Ingreso de Proveedor</h1>
		
		<table class="form-login">
			<tr>
				<td><b>Nombre:</b></td>
				<td><input class="controls" type='text' id='txtName' placeholder="Nombre"></input></td>
			</tr>
			<tr>
				<td><b>Direccion:</b></td>
				<td><input class="controls" type='text' id='txtDir' placeholder="Cr 7#40b-2"></input></td>
			</tr>
			<tr>
				<td><b>Telefono:</b></td>
				<td><input class="controls" type='text' id='txtTel' placeholder="3104557898"></input></td>
			</tr>
			<tr>
				<td><b>Ciudad:</b></td>
				<td><input class="controls" type='text' id='txtCity' placeholder="Bogota"></input></td>
			</tr>
			<tr>
				<td><b>Nit:</b></td>
				<td><input class="controls" type='text' id='txtNit' placeholder="860.066.789-6"></input></td>
			</tr>
		</table>
		
		<br>
		<button onclick="Enviar()" class='button_pr'>Guardar</button>
		<div id="dvTabla"></div>
	</body>
</html>