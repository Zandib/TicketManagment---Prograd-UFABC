package br.edu.ufabc.ProHelper.model.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.edu.ufabc.ProHelper.model.entity.Solicitacao;

@Repository
public interface SolicitacaoDAO extends JpaRepository<Solicitacao, Long> {

}
