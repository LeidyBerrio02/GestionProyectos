package com.semillerojava.demoversion.model;


import java.util.Date;	
import javax.persistence.*;
import javax.validation.constraints.NotEmpty;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

@Entity(name="proyectoeliminado")
@Table(name="proyectoeliminado")
public class Proyectoeliminado {

	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	@Column(name="idproyecto", nullable = false)
	private Long idProyecto;
	
	@NotEmpty
	@Column(name="nombreproyecto")
	private String nombreProyecto;
	
	@NotEmpty
	@Column(name="area")
	private String area;
	
	@Column(name="presupuesto")
	private double presupuesto;
	
	@NotEmpty
	@Column(name="responsable")
	private String responsable;
	
	@NotEmpty
	@Column(name="duracion")
	private String duracion;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(iso  = ISO.DATE)
	@Column(name="fechacreacion")
	private Date fechaCreacion;
	

	@Temporal(TemporalType.DATE)
	@DateTimeFormat(iso  = ISO.DATE)
	@Column(name="fechainicio")
	private Date fechaInicio;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(iso  = ISO.DATE)
	@Column(name="fechafin")
	private Date fechaFin;
	
	@NotEmpty
	@Column(name="usuariocreador")
	private String usuarioCreador;
	
	@NotEmpty
	@Column(name="estado")
	private String estado;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(iso  = ISO.DATE)
	@Column(name="fechamodificacion")
	private Date fechaModificacion;

	public Long getIdProyecto() {
		return idProyecto;
	}

	public void setIdProyecto(Long idProyecto) {
		this.idProyecto = idProyecto;
	}

	public String getNombreProyecto() {
		return nombreProyecto;
	}

	public void setNombreProyecto(String nombreProyecto) {
		this.nombreProyecto = nombreProyecto;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public double getPresupuesto() {
		return presupuesto;
	}

	public void setPresupuesto(double presupuesto) {
		this.presupuesto = presupuesto;
	}

	
	public String getResponsable() {
		return responsable;
	}

	public void setResponsable(String responsable) {
		this.responsable = responsable;
	}

	public String getDuracion() {
		return duracion;
	}

	public void setDuracion(String duracion) {
		this.duracion = duracion;
	}

	public Date getFechaCreacion() {
		return fechaCreacion;
	}

	public void setFechaCreacion(Date fechaCreacion) {
		this.fechaCreacion = fechaCreacion;
	}

	public Date getFechaInicio() {
		return fechaInicio;
	}

	public void setFechaInicio(Date fechaInicio) {
		this.fechaInicio = fechaInicio;
	}

	public Date getFechaFin() {
		return fechaFin;
	}

	public void setFechaFin(Date fechaFin) {
		this.fechaFin = fechaFin;
	}

	public String getUsuarioCreador() {
		return usuarioCreador;
	}

	public void setUsuarioCreador(String usuarioCreador) {
		this.usuarioCreador = usuarioCreador;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public Date getFechaModificacion() {
		return fechaModificacion;
	}

	public void setFechaModificacion(Date fechaModificacion) {
		this.fechaModificacion = fechaModificacion;
	}
	
	
	
	
}
