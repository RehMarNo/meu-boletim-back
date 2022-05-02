package com.meuboletim.entities;

import java.util.UUID;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Id;

import com.meuboletim.enums.Serie;
import com.meuboletim.enums.Turno;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
public class Turma {

	@Id
	private UUID id;

	private String nome;

	private int anoLetivo;

	@Enumerated(EnumType.STRING)
	private Turno turno;

	@Enumerated(EnumType.STRING)
	private Serie serie;
}
