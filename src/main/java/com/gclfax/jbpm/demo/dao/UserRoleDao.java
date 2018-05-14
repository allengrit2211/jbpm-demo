package com.gclfax.jbpm.demo.dao;

import com.gclfax.jbpm.demo.domain.UserRole;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRoleDao extends JpaRepository<UserRole, String> {


}
