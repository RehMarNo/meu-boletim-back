package com.meuboletim.repositories;

import java.util.UUID;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.meuboletim.entities.Frequencia;

@Repository
public interface FrequenciaRepository extends JpaRepository<Frequencia, UUID> {
}