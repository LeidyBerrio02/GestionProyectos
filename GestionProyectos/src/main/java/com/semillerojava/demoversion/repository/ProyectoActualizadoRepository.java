package com.semillerojava.demoversion.repository;

import java.util.List;						

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.semillerojava.demoversion.model.Proyectoactualizado;

@Repository
public interface ProyectoActualizadoRepository extends JpaRepository<Proyectoactualizado, Long>{

	@Query(value="Select * from proyectoactualizado", nativeQuery=true)
	List<Proyectoactualizado> listarTodoActualizado();
	
}
