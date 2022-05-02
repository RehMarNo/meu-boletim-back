package com.meuboletim.repositories;

import java.util.UUID;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.meuboletim.entities.Atividade;

@Repository
public interface AtividadeRepository extends JpaRepository<Atividade, UUID> {
}