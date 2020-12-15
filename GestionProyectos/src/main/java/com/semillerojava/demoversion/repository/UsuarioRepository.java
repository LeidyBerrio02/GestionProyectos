package com.semillerojava.demoversion.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.semillerojava.demoversion.model.Usuario;

@Repository
public interface UsuarioRepository extends JpaRepository<Usuario, Long> {
	//Optional<User> findByUsername(String username);
    Usuario findByUsername(String username);

}
