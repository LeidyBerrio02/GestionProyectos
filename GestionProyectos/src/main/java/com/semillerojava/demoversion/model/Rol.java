package com.semillerojava.demoversion.model;

import java.io.Serializable;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;

import lombok.Data;

@Entity(name="rol")
@Data
@Table(name="rol")
public class Rol implements Serializable{
	
	public static final Long SerialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="idrol")
	public Long idRol;
	
	@Column(name="nombre")
	@NotEmpty
	public String nombre;

	public Long getIdRol() {
		return idRol;
	}

	public void setIdRol(Long idRol) {
		this.idRol = idRol;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public static Long getSerialversionuid() {
		return SerialVersionUID;
	}

	
	
}
