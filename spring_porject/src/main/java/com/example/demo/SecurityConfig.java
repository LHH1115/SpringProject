package com.example.demo;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
public class SecurityConfig {

	@Bean
	public SecurityFilterChain filterChain(HttpSecurity httpSecurity) throws Exception {
		httpSecurity.authorizeHttpRequests()
		.requestMatchers("/**").permitAll();
//		.requestMatchers("/admin/**").hasRole("admin")
//		.anyRequest().authenticated();
		
//		httpSecurity.formLogin()
//		.loginPage("/member/logIn")
//		.defaultSuccessUrl("/board/list/1/all")
//		.permitAll();
		
//		httpSecurity.logout()
//		.logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
//		.invalidateHttpSession(true).logoutSuccessUrl("/member/logIn");
		
		httpSecurity.httpBasic();
	
		return httpSecurity.build();
	}
}
