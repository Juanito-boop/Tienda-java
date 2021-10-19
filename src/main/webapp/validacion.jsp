<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>proveedores</title>
</head>
<body>
	<%
	//conexion a la base de datos
	Connection BD;
	String url="jdbc:mysql://misiontic2022grupo02.czo3ixoe3xoe.us-east-1.rds.amazonaws.com/";
	String Driver="com.mysql.jdbc.Driver";
	String user="admin";
	String password="MisionTIC2022GRUPO02";
	Class.forName(Driver);
	BD=DriverManager.getConnection(url,user,password);
	//Empezar a listar los datos de la tabla proveedores
	PreparedStatement ps;
	ResultSet rs;
	ps=con.prepareStatement("Select * from Grupo02GitHubTeam.proveedores");
	rs=ps.executeQuery();
	%>
	<div>
		<h1>Proveedores</h1>
		<table>
			<tr>
				<th>idproveedores</th>
				<th>nombre</th>
				<th>direccion</th>
				<th>telefono</th>
				<th>ciudad</th>
				<th>nit</th>
				<td>ACCIONES</td>
			</tr>
			<%
				while(rs.next()){
			%>
			<tr>
				<td><%=rs.getInt("idproveedores")%></td>
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