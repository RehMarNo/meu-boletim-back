package com.meuboletim.entities;

import java.util.Date;
import java.util.UUID;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.meuboletim.enums.TipoAtividade;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
public class Atividade {

	@Id
	private UUID id;

	@ManyToOne
	@JoinColumn(name = "materia")
	private Materia materia;

	private Date dataAtividade;

	@Enumerated(EnumType.STRING)
	private TipoAtividade tipoAtividade;

	@ManyToOne
	@JoinColumn(name = "turma")
	private Turma turma;
}
