<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>proveedores</title>
<link rel="stylesheet" href="">
</head>
<body>
	<%
	PreparedStatement ps;
	ResultSet rs;
	ps=con.prepareStatement("Select * from Grupo02GitHubTeam.proveedores");
	rs=ps.executeQuery();
	%>
	<div class="container">
		<h1>Proveedores</h1>
		<hr>
		<table class="table table-bordered">
			<tr>
				<th class="text-center">idproveedores</th>
				<th class="text-center">nombre</th>
				<th class="text-center">direccion</th>
				<th class="text-center">telefono</th>
				<th class="text-center">ciudad</th>
				<th class="text-center">nit</th>
				<th class="text-center">ACCIONES</th>
			</tr>
			<%
				while(rs.next()){
			%>
			<tr>
				<td class="text-center"><%=rs.getInt("idproveedores")%></td>
				<td><%=rs.getString("nombre")%></td>
				<td><%=rs.getString("direccion")%></td>
				<td><%=rs.getString("telefono")%></td>
				<td><%=rs.getString("ciudad")%></td>
				<td><%=rs.getString("nit")%></td>
				<td>
					<a>Editar</a>
					<a>Eliminar</a>
				</td>
			</tr>
			<%}%>
		</table>
	</div>
</body>
</html>