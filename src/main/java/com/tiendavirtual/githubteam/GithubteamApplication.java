package com.tiendavirtual.githubteam;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class GithubteamApplication extends SpringBootServletInitializer{

	public static void main(String[] args) {
		System.setProperty("server.servlet.context-path", "/Grupo02GitHubTeam");
		SpringApplication.run(GithubteamApplication.class, args);
	}

}
