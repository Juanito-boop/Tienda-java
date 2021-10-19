package com.tiendavirtual.githubteam;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tiendavirtual.githubteam.dao.*;
import com.tiendavirtual.githubteam.dto.*;

@RestController
public class GithubteamController {
	
	@RequestMapping("/logUser")
	public String logUsuario(Usuario u) {
		UsuarioDAO dao = new UsuarioDAO();
		dao.insertarUsuario(u);
		return "Insercion Exitosa de Usuario";
	}
	
	@RequestMapping("/addClient")
	public String InsertarCliente(Cliente c) {
		ClienteDAO dao = new ClienteDAO();
		dao.insertarCliente(c);
		return "Insercion Exitosa de Cliente";
	}
	
	@RequestMapping("/addProve")
	public String InsertarProveedor(Proveedor p) {
		ProveedorDAO dao = new ProveedorDAO();
		dao.insertarProveedor(p);
		return "Insercion Exitosa de Proveedor";
	}
	
	@RequestMapping("/consProve")
	public ArrayList<Proveedor> buscarProveedor(String nit) {
		System.out.println("control 1");
		ProveedorDAO dao = new ProveedorDAO();
		System.out.println("control 2");
		return dao.buscarProveedor(nit);
	}

}
