package com.semillerojava.demoversion.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semillerojava.demoversion.model.Proyecto;
import com.semillerojava.demoversion.repository.ProyectoRepository;

@Service
public class ProyectoServiceImp implements ProyectoService {

	// inyecion de dependencias
	@Autowired
	private ProyectoRepository proyectoRepository;

	@Override
	public List<Proyecto> listar() {
		return proyectoRepository.listarTodo();

	}
	
	@Override
	public List<Proyecto> listarNombres(String teclado){
		if (teclado!= null) {
			proyectoRepository.findByNombreProyecto(teclado);
		}
		return null;
	}

	@Override
	public Proyecto crear(Proyecto proyecto) {
		return proyectoRepository.save(proyecto);
	}

	@Override
	public Proyecto buscar(Proyecto proyecto) {
		return proyectoRepository.findById(proyecto.getIdProyecto()).orElse(null);
	}

	@Override
	public boolean eliminar(Long idProyecto) {
		if (proyectoRepository.existsById(idProyecto)) {
			proyectoRepository.deleteById(idProyecto);
			return true;
		}
		return false;
	}

}