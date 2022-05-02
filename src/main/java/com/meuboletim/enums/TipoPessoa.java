package com.meuboletim.enums;

public enum TipoPessoa {
	ALUNO("ALUNO"), RESPONSAVEL("RESPONSAVEL"), PROFESSOR("PROFESSOR"), SECRETARIA("SECRETARIA");

	private String descricao;

	TipoPessoa(String descricao) {
		this.descricao = descricao;
	}

	public String getDescricao() {
		return descricao;
	}
}
