package com.meuboletim.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.meuboletim.entities.Pessoa;
import com.meuboletim.repositories.PessoaRepository;

@RestController
@RequestMapping("pessoa")
public class PessoaController {

	@Autowired
	PessoaRepository pessoaRepository;

	@GetMapping
	public List<Pessoa> listAll() {
		return pessoaRepository.findAll();
	}

	@PostMapping
	public Pessoa save(@RequestBody Pessoa pessoa) {
		return pessoaRepository.save(pessoa);
	}

}