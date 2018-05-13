package com.gclfax.jbpm.demo.dao;

import com.gclfax.jbpm.demo.domain.User;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface  UserDao extends JpaRepository<User, String> {

    public User findByUsername(String username);

}
