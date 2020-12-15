package com.semillerojava.demoversion.repository;

import java.util.List;			
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.semillerojava.demoversion.model.Proyecto;

@Repository
public interface ProyectoRepository extends JpaRepository<Proyecto, Long>{

	@Query(value="Select * from proyecto", nativeQuery=true)
	List<Proyecto> listarTodo();
	
	//@Query(value="select * from proyecto where nombreProyecto LIKE '%?1%'", nativeQuery=true)
	List<Proyecto> findByNombreProyecto(String teclado);
	
	
	List<Proyecto> findByEstado(String estado);
	
	Optional<Proyecto> findById(Long idProyecto);
	
	
	
}
