package com.semillerojava.demoversion.repository;

import java.util.List;					
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.semillerojava.demoversion.model.Proyectoeliminado;

@Repository
public interface ProyectoEliminadoRepository extends JpaRepository<Proyectoeliminado, Long>{

	@Query(value="Select * from proyectoeliminado", nativeQuery=true)
	List<Proyectoeliminado> listarTodoEliminado();
	
	//@Query(value="select * from proyecto where nombreProyecto LIKE '%?1%'", nativeQuery=true)
	List<Proyectoeliminado> findByNombreProyecto(String teclado);
	
	
	List<Proyectoeliminado> findByEstado(String estado);
	
	Optional<Proyectoeliminado> findById(Long idProyecto);
	
	
	
}
