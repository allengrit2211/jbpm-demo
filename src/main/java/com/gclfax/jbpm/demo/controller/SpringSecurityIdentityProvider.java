package com.gclfax.jbpm.demo.controller;

import org.kie.internal.identity.IdentityProvider;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class SpringSecurityIdentityProvider implements IdentityProvider {

	@Override
	public String getName() {

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null && auth.isAuthenticated()) {
			return auth.getName();
		}
		return "system";
	}

	@Override
	public List<String> getRoles() {
//		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//		if (auth != null && auth.isAuthenticated()) {
//			List<String> roles = new ArrayList<String>();
//
//			for (GrantedAuthority ga : auth.getAuthorities()) {
//				roles.add(ga.getAuthority());
//			}
//
//			return roles;
//		}

		ArrayList<String> arrayList = new ArrayList<String>();
		arrayList.add("HR");
		arrayList.add("PM");
		return arrayList;

//		return Collections.emptyList();
	}

	@Override
	public boolean hasRole(String role) {
		return false;
	}

}
