package com.meuboletim.enums;

public enum Genero {
	MASCULINO("MASCULINO"), FEMININO("FEMININO"), OUTROS("OUTROS");

	private String descricao;

	Genero(String descricao) {
		this.descricao = descricao;
	}

	public String getDescricao() {
		return descricao;
	}
}
