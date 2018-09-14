package br.edu.ufabc.ProHelper.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import br.edu.ufabc.ProHelper.model.dao.AlunoDAO;
import br.edu.ufabc.ProHelper.model.dao.FuncionarioDAO;
import br.edu.ufabc.ProHelper.model.dao.SolicitacaoDAO;
import br.edu.ufabc.ProHelper.model.entity.Aluno;
import br.edu.ufabc.ProHelper.model.entity.Funcionario;
import br.edu.ufabc.ProHelper.model.entity.Solicitacao;

@Controller
public class GeneralController {

	@Autowired
	AlunoDAO alunoDao;
	@Autowired
	FuncionarioDAO funcionarioDao;
	@Autowired
	SolicitacaoDAO solicitacaoDao;

	private long id;

	@RequestMapping(value = "/")
	public ModelAndView index() {
		return new ModelAndView("login");
	}

	@RequestMapping(value = "/Cadastro-Aluno")
	public ModelAndView cadastroAluno() {
		ModelAndView mv = new ModelAndView("Cadastro-Aluno");
		List<String> loginsA = new ArrayList<String>();
		List<String> loginsF = new ArrayList<String>();
		for(Aluno a : alunoDao.findAll())
			loginsA.add("\""+a.getLogin()+"\"");
		for(Funcionario f : funcionarioDao.findAll())
			loginsF.add("\""+f.getLogin()+"\"");
		mv.addObject("alunos",loginsA);
		mv.addObject("funcionarios",loginsF);
		return mv;
	}

	@RequestMapping(value = "/Cadastro-TA")
	public ModelAndView cadastroTA() {
		ModelAndView mv = new ModelAndView("Cadastro-TA");
		List<String> loginsA = new ArrayList<String>();
		List<String> loginsF = new ArrayList<String>();
		for(Aluno a : alunoDao.findAll())
			loginsA.add("\""+a.getLogin()+"\"");
		for(Funcionario f : funcionarioDao.findAll())
			loginsF.add("\""+f.getLogin()+"\"");
		mv.addObject("alunos",loginsA);
		mv.addObject("funcionarios",loginsF);
		return mv;
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestParam("login") String login, @RequestParam("senha") String senha) {
		System.err.println("login: " + login + " e senha: " + senha);
		List<Aluno> alunos = (List<Aluno>) alunoDao.findAll();
		for (Aluno a : alunos)
			if (a.getLogin().equalsIgnoreCase(login) && a.getSenha().equals(senha)) {
				id = a.getId_aluno();
				return "redirect:/Trancamento-Matricula";
			}
		List<Funcionario> funcionarios = (List<Funcionario>) funcionarioDao.findAll();
		for (Funcionario f : funcionarios)
			if (f.getLogin().equalsIgnoreCase(login) && f.getSenha().equals(senha)) {
				id = f.getId_funcionario();
				return "redirect:/Minhas-Pendencias";
			}
		return "redirect:/login-incorreto";
	}
	
	@RequestMapping(value="login-incorreto")
	public ModelAndView loginIncorreto() {
		ModelAndView mv = new ModelAndView("login");
		mv.addObject("message", "Usuario ou senha incorretos!");
		return mv;
	}
	

	@RequestMapping(value = "/Trancamento-Matricula")
	public ModelAndView TrancamentoMatricula() {
		if(id == 0) {
			return new ModelAndView("redirect:/");	
		}
		ModelAndView mv = new ModelAndView("Trancamento-Matricula");
		mv.addObject("id", id);
		return mv;
	}

	@RequestMapping(value = "/Solicitacao-Carteirinha")
	public ModelAndView SolicitacaoCarteirinha() {
		if(id == 0) {
			return new ModelAndView("redirect:/");	
		}
		ModelAndView mv = new ModelAndView("Solicitacao-Carteirinha");
		mv.addObject("id", id);
		return mv;
	}

	@RequestMapping(value = "/Contagem-Creditos")
	public ModelAndView ContagemCreditos() {
		if(id == 0) {
			return new ModelAndView("redirect:/");	
		}
		ModelAndView mv = new ModelAndView("Contagem-Creditos");
		mv.addObject("id", id);
		return mv;
	}

	@RequestMapping(value = "/Minhas-Solicitacoes")
	public ModelAndView MinhasSolicitacoes() {
		if(id == 0) {
			return new ModelAndView("redirect:/");	
		}
		ModelAndView mv = new ModelAndView("Minhas-Solicitacoes");
		List<Solicitacao> allSolicitacoes = solicitacaoDao.findAll();
		List<Solicitacao> mySolicitacoes = new ArrayList<Solicitacao>();
		for (Solicitacao s : allSolicitacoes) {
			if (s.getAluno().getId_aluno() == id)
				mySolicitacoes.add(s);
		}
		for (Solicitacao s : mySolicitacoes)
			System.err.println(s.getDescricao());
		mv.addObject("solicits", mySolicitacoes);
		return mv;
	}

	@RequestMapping(value = "/solicitar/1", method = RequestMethod.POST)
	public String solicitaTrancamento(@RequestParam("codigo") String codMateria,
			@RequestParam("justificativa") String descricao) {
		Solicitacao ss = new Solicitacao(1, descricao, "Aberta", codMateria, "", "", alunoDao.findById(id).orElse(null),
				null);
		solicitacaoDao.save(ss);
		return "redirect:/Trancamento-Matricula";
	}

	@RequestMapping(value = "/solicitar/2", method = RequestMethod.POST)
	public String solicitaCarteirinha(@RequestParam("link") String link, @RequestParam("rg") String rg) {
		Solicitacao ss = new Solicitacao(2, "Segunda via carteirinha", "Aberta", "", rg, link, alunoDao.findById(id).orElse(null), null);
		solicitacaoDao.save(ss);
		return "redirect:/Solicitacao-Carteirinha";
	}

	@RequestMapping(value = "/solicitar/3", method = RequestMethod.POST)
	public String solicitaContagem(@RequestParam("curso") String curso) {
		Solicitacao ss = new Solicitacao(3, curso, "Aberta", "", "", "", alunoDao.findById(id).orElse(null), null);
		solicitacaoDao.save(ss);
		return "redirect:/Contagem-Creditos";
	}

	@RequestMapping(value = "/Minhas-Pendencias")
	public ModelAndView pendenciasMinhas() {
		if(id == 0) {
			return new ModelAndView("redirect:/");	
		}
		ModelAndView mv = new ModelAndView("Minhas-Pendencias");
		List<Solicitacao> allSolicitacoes = solicitacaoDao.findAll();
		List<Solicitacao> openSolicitacoes = new ArrayList<Solicitacao>();
		for (Solicitacao s : allSolicitacoes)
			if (s.getFuncionario() != null)
				if (s.getFuncionario().getId_funcionario() == id && !s.getStatus().equalsIgnoreCase("concluido"))
					openSolicitacoes.add(s);
		for (Solicitacao s : openSolicitacoes)
			System.err.println(s.getDescricao());
		mv.addObject("solicits", openSolicitacoes);
		mv.addObject("funcionarios", funcionarioDao.findAll());
		mv.addObject("id", id);
		return mv;
	}

	@RequestMapping(value = "/Pendencias-Aberto")
	public ModelAndView pendenciasAberto() {
		if(id == 0) {
			return new ModelAndView("redirect:/");	
		}
		ModelAndView mv = new ModelAndView("Pendencias-Aberto");
		List<Solicitacao> allSolicitacoes = solicitacaoDao.findAll();
		List<Solicitacao> openSolicitacoes = new ArrayList<Solicitacao>();
		for (Solicitacao s : allSolicitacoes)
			if (s.getFuncionario() == null)
				openSolicitacoes.add(s);
		for(Solicitacao s : openSolicitacoes)
			System.err.println(s.getDescricao());
		mv.addObject("solicits", openSolicitacoes);
		mv.addObject("id", id);
		return mv;
	}
	
	@RequestMapping(value="/Solicitacoes-Concluidas")
	public ModelAndView pendenciasConcluidas() {
		if(id == 0)
			return new ModelAndView("redirect:/");
		ModelAndView mv = new ModelAndView("Solicitacoes-Concluidas");
		List<Solicitacao> allSolicitacoes = solicitacaoDao.findAll();
		List<Solicitacao> closedSolicitacoes = new ArrayList<Solicitacao>();
		for (Solicitacao s : allSolicitacoes)
			if (s.getStatus().equalsIgnoreCase("concluido"))
				closedSolicitacoes.add(s);
		mv.addObject("solicits", closedSolicitacoes);
		mv.addObject("id", id);
		return mv;
	}

	@RequestMapping(value = "/cadastrar-aluno", method = RequestMethod.POST)
	public String cadastroAluno(@RequestParam("login") String login, @RequestParam("senha") String senha,
			@RequestParam("nome") String nome, @RequestParam("ra") String ra, @RequestParam("email") String email) {
		alunoDao.save(new Aluno(nome, email, login, senha, ra));
		return "redirect:/";
	}

	@RequestMapping(value = "/cadastrar-ta", method = RequestMethod.POST)
	public String cadastroFuncionario(@RequestParam("login") String login, @RequestParam("senha") String senha,
			@RequestParam("nome") String nome, @RequestParam("email") String email, @RequestParam("tipo") String tipo) {
		funcionarioDao.save(new Funcionario(nome, email, login, senha, Integer.parseInt(tipo)));
		return "redirect:/";
	}

	@RequestMapping(value = "/atribuir/{id_solicitacao}")
	public String atribuir(@PathVariable long id_solicitacao) {
		Solicitacao cc = solicitacaoDao.findById(id_solicitacao).orElse(null);
		cc.setFuncionario(funcionarioDao.findById(id).orElse(null));
		solicitacaoDao.save(cc);
		return "redirect:/Minhas-Pendencias";
	}

	@RequestMapping(value = "/reabrir/{id_solicitacao}")
	public String reabrir(@PathVariable long id_solicitacao) {
		Solicitacao cc = solicitacaoDao.findById(id_solicitacao).orElse(null);
		cc.setFuncionario(funcionarioDao.findById(id).orElse(null));
		cc.setStatus("Em an�lise");
		solicitacaoDao.save(cc);
		return "redirect:/Minhas-Pendencias";
	}
	
	@RequestMapping(value = "/edit/{id_solicitacao}")
	public ModelAndView edit(@PathVariable long id_solicitacao) {
		if(id == 0) {
			return new ModelAndView("redirect:/");	
		}
		ModelAndView mv = new ModelAndView("edit");
		Solicitacao cc = solicitacaoDao.findById(id_solicitacao).orElse(null);
		List<Funcionario> allfuncionarios = funcionarioDao.findAll();
		mv.addObject("cc", cc);
		mv.addObject("funcionarios",allfuncionarios);
		return mv;
	}

	@RequestMapping(value = "/editar", method = RequestMethod.POST)
	public String editar(@RequestParam("id") long id, @RequestParam("tipo") String tipo,
			@RequestParam("descricao") String descricao, @RequestParam("status") String status,
			@RequestParam("materia") String materia, @RequestParam("rg") String rg, @RequestParam("bo") String bo,
			@RequestParam("solicitante") String solicitante, @RequestParam("responsavel") String responsavel) {
		Solicitacao cc = solicitacaoDao.findById(id).orElse(null);
		cc.setTipo(Integer.parseInt(tipo));
		cc.setDescricao(descricao);
		cc.setStatus(status);
		cc.setCodMateria(materia);
		cc.setUrlBO(bo);
		cc.setRg(rg);
		cc.setAluno(alunoDao.findById(Long.parseLong(solicitante)).orElse(null));
		List<Funcionario> allFuncionarios = funcionarioDao.findAll();
		for(Funcionario f : allFuncionarios)
			if(f.getEmail()==responsavel.split(" - ")[1])
				cc.setFuncionario(f);
		solicitacaoDao.save(cc);
		return "redirect:/Minhas-Pendencias";
	}
	
	@RequestMapping(value ="/sair")
	public String sair() {
		id=0;
		return "redirect:/";
	}
	
	@RequestMapping(value = "/Procurar-Funcionario/{id_solicitacao}")
	public ModelAndView ProcurarFuncionario(@PathVariable long id_solicitacao) {
		if(id == 0) {
			return new ModelAndView("redirect:/");	
		}
		ModelAndView mv = new ModelAndView("Procurar-Funcionario");
		mv.addObject("id_solicitacao",id_solicitacao);
		mv.addObject("funcionarios",funcionarioDao.findAll());
		return mv;
	}
	
	@RequestMapping(value = "/Procurar-Aluno/{id_solicitacao}")
	public ModelAndView ProcurarAluno(@PathVariable long id_solicitacao) {
		if(id == 0) {
			return new ModelAndView("redirect:/");	
		}
		ModelAndView mv = new ModelAndView("Procurar-Aluno");
		mv.addObject("id_solicitacao",id_solicitacao);
		List<Aluno> allAlunos = alunoDao.findAll();
		for(Aluno a : allAlunos)
			System.err.println(a.getNome());
		mv.addObject("alunos",allAlunos);
		return mv;
	}
	
	@RequestMapping(value = "/Set-Funcionario/{id_solicitacao}/{id_funcionario}")
	public String SetFuncionario(@PathVariable long id_solicitacao, @PathVariable long id_funcionario) {
		Solicitacao cc = solicitacaoDao.findById(id_solicitacao).orElse(null);
		cc.setFuncionario(funcionarioDao.findById(id_funcionario).orElse(null));
		solicitacaoDao.save(cc);
		return "redirect:/edit/"+id_solicitacao;
	}
	
	@RequestMapping(value = "/Set-Aluno/{id_solicitacao}/{id_aluno}")
	public String SetAluno(@PathVariable long id_solicitacao, @PathVariable long id_aluno) {
		Solicitacao cc = solicitacaoDao.findById(id_solicitacao).orElse(null);
		cc.setAluno(alunoDao.findById(id_aluno).orElse(null));
		solicitacaoDao.save(cc);
		return "redirect:/edit/"+id_solicitacao;
	}
	

}
