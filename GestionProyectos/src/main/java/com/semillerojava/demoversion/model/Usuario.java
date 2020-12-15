package com.semillerojava.demoversion.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.*;

import lombok.Data;		

@Entity(name="usuario")
@Data
@Table(name="usuario")
public class Usuario implements Serializable{
	
	public static final Long SerialVersionUID = 1L;
	

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="iduser")
	private Long idUser;

	@Column
	private String username;

	@Column
	private String password;

	@Column
	private boolean estado;

	@OneToMany()
	@JoinColumn(name = "id_usuario")
	private List<Rol> roles;

	public Long getIdUser() {
		return idUser;
	}

	public void setIdUser(Long idUser) {
		this.idUser = idUser;
	}

	public boolean isEstado() {
		return estado;
	}

	public void setEstado(boolean estado) {
		this.estado = estado;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public static Long getSerialversionuid() {
		return SerialVersionUID;
	}

	public List<Rol> getRoles() {
		return roles;
	}

	public void setRoles(List<Rol> roles) {
		this.roles = roles;
	}
	
	

}