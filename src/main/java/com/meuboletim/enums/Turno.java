package com.meuboletim.enums;

public enum Turno {
	MATUTINO("MATUTINO"), VESPERTINO("VESPERTINO"), INTEGRAL("INTEGRAL"), NOTURNO("NOTURNO");

	private String descricao;

	Turno(String descricao) {
		this.descricao = descricao;
	}

	public String getDescricao() {
		return descricao;
	}
}
