package com.semillerojava.demoversion.service;

import java.util.List;	

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semillerojava.demoversion.model.Proyectoeliminado;
import com.semillerojava.demoversion.repository.ProyectoEliminadoRepository;

@Service
public class ProyectoEliminadoServiceImp implements ProyectoEliminadoService {

	// inyecion de dependencias
	@Autowired
	private ProyectoEliminadoRepository proyectoEliminadoRepository;

	@Override
	public List<Proyectoeliminado> listarEliminado() {
		return proyectoEliminadoRepository.listarTodoEliminado();

	}
}