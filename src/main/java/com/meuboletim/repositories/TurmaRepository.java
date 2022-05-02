package com.meuboletim.repositories;

import java.util.UUID;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.meuboletim.entities.Turma;

@Repository
public interface TurmaRepository extends JpaRepository<Turma, UUID> {
}