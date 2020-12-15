package com.semillerojava.demoversion.service;

import java.util.List;		

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semillerojava.demoversion.model.Proyectoactualizado;
import com.semillerojava.demoversion.repository.ProyectoActualizadoRepository;


@Service
public class ProyectoActualizadoServiceImp implements ProyectoActualizadoService {

	// inyecion de dependencias
	@Autowired
	private ProyectoActualizadoRepository proyectoActualizadoRepository;

	@Override
	public List<Proyectoactualizado> listarActualizados() {
		return proyectoActualizadoRepository.listarTodoActualizado();
	}


}