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
public class ProfessorMateria {

	@Id
	private UUID id;

	@ManyToOne
	@JoinColumn(name = "materia")
	private Materia materia;

	@ManyToOne
	@JoinColumn(name = "professor")
	private Pessoa pessoa;
}
