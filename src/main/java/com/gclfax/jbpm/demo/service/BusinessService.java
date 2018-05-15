package com.gclfax.jbpm.demo.service;


import com.gclfax.jbpm.demo.dao.Business1Dao;
import com.gclfax.jbpm.demo.dao.Business1ReviewLogDao;
import com.gclfax.jbpm.demo.dao.RoleDao;
import com.gclfax.jbpm.demo.domain.Business1;
import com.gclfax.jbpm.demo.domain.Business1ReviewLog;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BusinessService {


    @Autowired
    private Business1Dao business1Dao;

    @Autowired
    private Business1ReviewLogDao business1ReviewLogDao;

    public List<Business1> findAll(){
        Sort sort = new Sort(Sort.Direction.DESC, "id");
        return business1Dao.findAll(sort);
    }

    public void save(Business1 business1, Business1ReviewLog business1ReviewLog){
        business1Dao.save(business1);
        business1ReviewLog.setBid(business1.getId());
        business1ReviewLogDao.save(business1ReviewLog);
    }


}
