package com.semillerojava.demoversion.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	//Necesario para evitar que la seguridad se aplique a los resources
    //Como los css, imagenes y javascripts
    String[] resources = new String[]{
            "/include/**","/css/**","/icons/**","/img/**","/js/**","/layer/**"  
    };
    
    @Autowired
    private UserDetailsService userDetailsService;
	
    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
    	return new BCryptPasswordEncoder();
    }
    
    @Autowired
    public void configurerGlobal(AuthenticationManagerBuilder build) throws Exception { 
    	build.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
    }
    
    
	/*@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.inMemoryAuthentication()
		.withUser("admin").password("{noop}123").roles("ADMIN","USER")
		.and()
		.withUser("user").password("{noop}321").roles("USER");
	}
*/
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
				  .authorizeRequests().antMatchers(resources).permitAll()
				  .antMatchers("/login").permitAll().
				  antMatchers("/actualizar/**", "/eliminar/**", "/mostrarFormulario").hasAnyRole("ADMIN","USER")
				  .antMatchers("/**").hasAnyRole("USER","ADMIN").and()
				 
       .formLogin()
            .loginPage("/login")
            .permitAll()
            .defaultSuccessUrl("/")
            .failureUrl("/login?error=true")
            .usernameParameter("username")
            .passwordParameter("password")
            .and()
            .exceptionHandling().accessDeniedPage("/Errores/404")
            .and()
            .exceptionHandling().accessDeniedPage("/Errores/403")
            .and()       
        .logout()
            .permitAll()
            .logoutSuccessUrl("/login?logout");
	}
	
	/*
	//inyeccion de dependencias
	 BCryptPasswordEncoder bCryptPasswordEncoder;
	   

	//Crea el encriptador de contraseñas	
    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
		bCryptPasswordEncoder = new BCryptPasswordEncoder(4);
//El numero 4 representa que tan fuerte quieres la encriptacion.
//Se puede en un rango entre 4 y 31. 
//Si no pones un numero el programa utilizara uno aleatoriamente cada vez
//que inicies la aplicacion, por lo cual tus contrasenas encriptadas no funcionaran bien
        return bCryptPasswordEncoder;
    }
    
    
    @Autowired
    UserDetailsServiceImpl userDetailsService;
	
    //Registra el service para usuarios y el encriptador de contrasena
    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception { 
 
        // Setting Service to find User in the database.
        // And Setting PassswordEncoder
        auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());     
    }
    */
}
