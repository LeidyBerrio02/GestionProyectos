package com.semillerojava.demoversion.controller;

import java.util.List;						

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.*;
import com.semillerojava.demoversion.model.*;
import com.semillerojava.demoversion.service.*;


@Controller
@RequestMapping("/")
public class ProyectoController {

	// inyeccion de dependencias
	@Autowired
	private ProyectoService proyectoService;

	@Autowired
	private ProyectoEliminadoService proyectoEliminadoService;
	
	@Autowired
	private ProyectoActualizadoService proyectoActualizadoService;
	
/*
	@GetMapping("/listar")
	public List<Proyecto> listarProyecto() {
		return proyectoService.listar();
	}
	
	@PostMapping
	public Proyecto crearProyecto(@RequestBody Proyecto proyecto) {
		return proyectoService.crear(proyecto);
	}
	
	@PutMapping("/{idProyecto}")
	public Proyecto actulizarProyecto(@RequestBody Proyecto proyecto,@PathVariable Long idProyecto) {
		return proyectoService.actualizar(proyecto, idProyecto);
	}
	*
	
	
	@GetMapping("/nombres")
	public String listarNombres(Model modelo) {
		Proyecto proyecto = new Proyecto();
		modelo.addAttribute("proyecto",proyecto);
		return "listarProyecto"; 
	}

	@GetMapping("/nombre")
	public String listarNombre(@RequestParam String nombreProyecto , Model modelo, @ModelAttribute("proyecto") Proyecto proyecto) {
	modelo.addAttribute("proyectonombre",proyectoService.listarNombres(nombreProyecto));
		return "listarProyecto"; 
	}
	*/
	
	
	
	@GetMapping("eliminar/{idProyecto}")
	public String eliminarProyecto(@PathVariable Long idProyecto) {
		 proyectoService.eliminar(idProyecto);
		 return "redirect:/proyecto/listar";
	}
	
	
	@GetMapping("/")
	public String listarProyecto(Model modelo) {
		List<Proyecto> proyecto = proyectoService.listar();
		modelo.addAttribute("proyecto",proyecto);
		return "listarProyecto"; 
	}
	
	@GetMapping("/historialE")
	public String listarProyectoElimianado(Model modelo) {
		List<Proyectoeliminado> proyecto = proyectoEliminadoService.listarEliminado();
		modelo.addAttribute("proyecto",proyecto);
		return "listarProyectoEliminado"; 
	}
	
	@GetMapping("/historialA")
	public String listarProyectoActualizado(Model modelo) {
		List<Proyectoactualizado> proyecto = proyectoActualizadoService.listarActualizados();
		modelo.addAttribute("proyecto",proyecto);
		return "listarProyectoActualizado"; 
	}
	
	@GetMapping("/mostrarFormulario")
	public String mostrarFormulario(Model modelo){
		Proyecto proyecto = new Proyecto();
		modelo.addAttribute("proyecto", proyecto);
		return "FormularioProyecto";
	}
	
	@PostMapping("/guardando")
	public String registrarProyecto(@ModelAttribute("proyecto") @Valid Proyecto proyectoNuevo, Errors errores) {
		if(errores.hasErrors()) {
			return "redirect:/";
		}
		proyectoService.crear(proyectoNuevo);
		return "redirect:/";
	}
	
	@GetMapping("/actualizar/{idProyecto}")
	public String formularioActualizar(Model modelo,Proyecto proyecto){
		proyecto = proyectoService.buscar(proyecto);
		modelo.addAttribute("proyecto",proyecto);
		return "FormularioProyecto";
	}
	
}