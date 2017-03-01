package ejemplo.configuracion;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import ejemplo.modelo.servicio.UsuarioServicio;

@Configuration
@EnableWebSecurity
public class ConfiguracionSeguridad extends WebSecurityConfigurerAdapter{

	@Autowired
	private UsuarioServicio userser;
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		//auth.userDetailsService(userser).passwordEncoder(encoder());
		
		auth.inMemoryAuthentication().withUser("admin").password("admin").roles("ADMIN");
	}
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
	http
		.authorizeRequests()
				.antMatchers("/administrador/**").hasAnyRole("USER", "ADMIN")
				.antMatchers("/empresa/**").hasAnyRole("USER", "ADMIN")
				.antMatchers("/candidato/**").hasRole("ADMIN")
				.anyRequest().permitAll()
		.and()
			.formLogin()
				.loginPage("/login")
				.loginProcessingUrl("/autenticar")
				.defaultSuccessUrl("/")
				.failureUrl("/login?sinacceso=true")
				.usernameParameter("username")
				.passwordParameter("password")
		.and()
			.logout()
					.logoutUrl("/salir")
					.logoutSuccessUrl("/");
	}
	
	@Bean
	public BCryptPasswordEncoder encoder(){
		return new BCryptPasswordEncoder();
	}

}
