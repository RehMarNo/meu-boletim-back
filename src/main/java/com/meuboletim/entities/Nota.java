package com.meuboletim.entities;

import java.util.UUID;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
public class Nota {

	@Id
	private UUID id;

	@ManyToOne
	@JoinColumn(name = "aluno")
	private Pessoa aluno;

	private float nota;

	@ManyToOne
	@JoinColumn(name = "atividade")
	private Atividade atividade;
}
