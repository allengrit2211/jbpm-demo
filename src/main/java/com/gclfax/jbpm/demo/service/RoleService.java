package com.gclfax.jbpm.demo.service;

import com.gclfax.jbpm.demo.dao.RoleDao;
import com.gclfax.jbpm.demo.domain.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoleService {

    @Autowired
    private RoleDao roleDao;

    /***
     * 查询所有角色
     * @return
     */
    public List findAll(){
        return roleDao.findAll();
    }

//    /***
//     * 根据ID查询
//     * @param id
//     * @return
//     */
//    public List<Role> findById(Integer id){
//        return roleDao.findById(id);
//    }

}
