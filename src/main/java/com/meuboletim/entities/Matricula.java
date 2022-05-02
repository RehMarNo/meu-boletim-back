package com.meuboletim.entities;

import java.io.Serializable;
import java.util.UUID;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;

import com.fasterxml.jackson.annotation.JsonBackReference;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor

public class Matricula implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private UUID id;

	@OneToOne
	@MapsId
	@JoinColumn(name = "id")
	@JsonBackReference
	private Pessoa aluno;

	private String nomeMae;

	private String nomePai;

	@ManyToOne
	@JoinColumn(name = "responsavel")
	private Pessoa responsavel;

	@ManyToOne
	@JoinColumn(name = "turma")
	private Turma turma;
}
