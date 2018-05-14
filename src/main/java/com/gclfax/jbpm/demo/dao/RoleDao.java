package com.gclfax.jbpm.demo.dao;

import com.gclfax.jbpm.demo.domain.Permission;
import com.gclfax.jbpm.demo.domain.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RoleDao extends JpaRepository<Role, String> {

    /***
     * 查询所有角色
     * @return
     */
    public List findAll();

    /***
     * 根据ID查询
     * @param id
     * @return
     */
    @Query(value = "select r.* from t_role r  left join t_user_role ur on r.id = ur.rid left join t_user u on ur.uid = u.id where u.id = ?1",nativeQuery = true)
    public List<Role> findByUserName(Integer id);

}
