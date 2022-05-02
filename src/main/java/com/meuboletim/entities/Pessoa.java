package com.meuboletim.entities;

import java.util.Date;
import java.util.UUID;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.meuboletim.enums.Genero;
import com.meuboletim.enums.TipoPessoa;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
public class Pessoa {

	@Id
	private UUID id;

	private String nome;

	@Enumerated(EnumType.STRING)
	private Genero genero;

	private Date datanasc;

	private String cep;

	private String rua;

	private String numero;

	private String bairro;

	private String cidade;

	private String uf;

	private String telefone;

	private String email;

	private String login;

	private String senha;

	@Enumerated(EnumType.STRING)
	private TipoPessoa tipoPessoa;

	private boolean ativo;

	@OneToOne
	@PrimaryKeyJoinColumn
	@JsonManagedReference
	private Matricula matricula;

}