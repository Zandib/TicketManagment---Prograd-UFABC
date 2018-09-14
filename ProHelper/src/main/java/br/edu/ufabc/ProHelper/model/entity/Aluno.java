package br.edu.ufabc.ProHelper.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

//import javax.validation.constraints.Pattern;
//import org.hibernate.validator.constraints.NotEmpty;
@Entity
@Table(name = "aluno")
public class Aluno {
	@Id
	@GeneratedValue
	private long id_aluno;
	@Column(name = "nome")
	private String nome;
	@Column(name = "email")
	private String email;
	@Column(name = "login")
	private String login;
	@Column(name = "senha")
	private String senha;
	@Column(name = "ra")
	private String ra;

	public Aluno() {
	}

	public long getId_aluno() {
		return id_aluno;
	}

	public void setId_aluno(long id) {
		this.id_aluno = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getRa() {
		return ra;
	}

	public void setRa(String ra) {
		this.ra = ra;
	}

	public Aluno(String nome, String email, String login, String senha, String ra) {
		super();
		this.nome = nome;
		this.email = email;
		this.login = login;
		this.senha = senha;
		this.ra = ra;
	}

}
