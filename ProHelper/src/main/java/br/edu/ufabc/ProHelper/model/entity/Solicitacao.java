package br.edu.ufabc.ProHelper.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name = "solicitacao")
public class Solicitacao {
    @Id
    @GeneratedValue
    private long id_solicitacao;
    @Column(name = "tipo")
    private int tipo;
    @Column(name = "descricao")
    private String descricao;
    @Column(name = "Status")
    private String status;

//trancamento de Materia
    @Column(name = "codMateria")
    private String  codMateria;

//solicitação de carteirinha 
   @Column(name = "rg")
    private String rg;
    @Column(name = "urlBO")
    private String urlBO;

    @ManyToOne
    @JoinColumn(name="aluno_id")
    private Aluno aluno;
    @ManyToOne
    @JoinColumn(name="funcionario_id")
    private Funcionario funcionario;
    
    
	public Solicitacao(int tipo, String descricao, String status, String codMateria, String rg, String urlBO, Aluno aluno, Funcionario funcionario) {
		super();
		this.tipo = tipo;
		this.descricao = descricao;
		this.status = status;
		this.codMateria = codMateria;
		this.rg = rg;
		this.urlBO = urlBO;
		this.aluno = aluno;
		this.funcionario = funcionario;
	}
	public Solicitacao() {
		super();
	}
	public long getId_solicitacao() {
		return id_solicitacao;
	}
	public void setId_solicitacao(long id_solicitacao) {
		this.id_solicitacao = id_solicitacao;
	}
	public int getTipo() {
		return tipo;
	}
	public void setTipo(int tipo) {
		this.tipo = tipo;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getCodMateria() {
		return codMateria;
	}
	public void setCodMateria(String codMateria) {
		this.codMateria = codMateria;
	}
	public String getRg() {
		return rg;
	}
	public void setRg(String rg) {
		this.rg = rg;
	}
	public String getUrlBO() {
		return urlBO;
	}
	public void setUrlBO(String urlBO) {
		this.urlBO = urlBO;
	}
	public Aluno getAluno() {
		return aluno;
	}
	public void setAluno(Aluno aluno) {
		this.aluno = aluno;
	}
	public Funcionario getFuncionario() {
		return funcionario;
	}
	public void setFuncionario(Funcionario funcionario) {
		this.funcionario = funcionario;
	}
}