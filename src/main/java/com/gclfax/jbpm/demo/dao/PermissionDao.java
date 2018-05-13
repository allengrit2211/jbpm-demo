package com.gclfax.jbpm.demo.dao;

import com.gclfax.jbpm.demo.domain.Permission;
import com.gclfax.jbpm.demo.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import javax.persistence.NamedQuery;
import java.util.LinkedList;
import java.util.List;

@Repository
public interface PermissionDao extends JpaRepository<Permission, String> {




//    @Query("select new com.gclfax.jbpm.demo.domain.Permission(p.id,p.name,p.url,p.pid,p.createTime) from User u LEFT JOIN Role r ON u.rid = r.id LEFT JOIN RolePermission rp ON r.id = rp.rid LEFT JOIN Permission p ON rp.pid = p.id where u.id = :userId")
    @Query(value = "select p.* from t_user u LEFT JOIN t_role r ON u.rid = r.id LEFT JOIN t_role_permission rp ON r.id = rp.rid LEFT JOIN t_permission p ON rp.pid = p.id where u.id = ?1",nativeQuery = true)
    public List<Permission> findByAdminUserId(@Param("userId")Integer userId);

    public List findAll();

}
