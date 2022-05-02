package com.meuboletim.entities;

import java.util.Date;
import java.util.UUID;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
public class ConfigEscola {

	@Id
	private UUID id;

	private Date inicio_1bimestre;
	private Date fim_1bimestre;
	private Date inicio_2bimestre;
	private Date fim_2bimestre;
	private Date inicio_3bimestre;
	private Date fim_3bimestre;
	private Date inicio_4bimestre;
	private Date fim_4bimestre;
	private double media_aprovacao;
	private double frequencia_aprovacao;

}
