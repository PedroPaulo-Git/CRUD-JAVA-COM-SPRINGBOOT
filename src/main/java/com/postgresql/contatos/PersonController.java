package com.postgresql.contatos;

import org.springframework.web.bind.annotation.RestController;

import com.postgresql.contatos.Repo.PersonRepo;

import java.util.List;
//import java.util.Optional;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.bind.annotation.RequestParam;

@RestController
public class PersonController {
	@Autowired
	PersonRepo repo;
    @PostMapping("/contato")
    public String addPerson(@RequestBody Person person) {
    	repo.save(person);
        return "Pessoa adicionada com sucesso!";
    }
    @GetMapping("/contato")
    public List <Person> getperson(){
    	return repo.findAll();
    }
    @PutMapping("/contato/{id}")
    public ResponseEntity<String> updatePerson(@PathVariable long id,@RequestBody Person UpdatedPerson){
    	Optional<Person> optionalPerson = repo.findById(id);
    	if(optionalPerson.isPresent()) {
    		//Person person = optionalPerson.get();
    		//person.getEmail();
    		Person person = optionalPerson.get();
            person.setEmail(UpdatedPerson.getEmail());
            person.setNome(UpdatedPerson.getNome());
            repo.save(person);
    	}else {
    		return ResponseEntity.ok("ERROR");
    	}
    	
    	return ResponseEntity.ok("Contato Atualizado");
    	
    }
    @DeleteMapping("/contato/{id}")
    public ResponseEntity<String> deletePerson(@PathVariable long id){
    	Optional<Person> optionalPerson = repo.findById(id);
    	Person person = optionalPerson.get();
    	String nome = person.getNome();
    	if(repo.existsById(id)){
    		repo.deleteById(id);
    	}else {
    		ResponseEntity.notFound().build();
    	}
		return ResponseEntity.ok("Contato Deletado: " + nome);
    	
    };
    	
    
    
    
}
