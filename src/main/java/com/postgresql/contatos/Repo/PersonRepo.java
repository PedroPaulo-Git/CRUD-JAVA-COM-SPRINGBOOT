package com.postgresql.contatos.Repo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import com.postgresql.contatos.Person;


@RepositoryRestResource
public interface PersonRepo extends JpaRepository<Person,Long> {

}
