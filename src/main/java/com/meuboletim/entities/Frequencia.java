package com.meuboletim.entities;

import java.util.Date;
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
public class Frequencia {

	@Id
	private UUID id;

	@ManyToOne
	@JoinColumn(name = "aluno")
	private Pessoa aluno;

	@ManyToOne
	@JoinColumn(name = "materia")
	private Materia materia;

	private Date dataPresenca;

	private boolean presenca;
}
