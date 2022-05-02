package com.meuboletim.enums;

public enum TipoAtividade {

	PROVA("PROVA"), TRABALHO("TRABALHO"), APRESENTACAO("APRESENTACAO"),
	COMPORTAMENTO("COMPORTAMENTO");

	private String descricao;

	TipoAtividade(String descricao) {
		this.descricao = descricao;
	}

	public String getDescricao() {
		return descricao;
	}
}
