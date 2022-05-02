package com.meuboletim.repositories;

import java.util.UUID;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.meuboletim.entities.Materia;

@Repository
public interface MateriaRepository extends JpaRepository<Materia, UUID> {
}