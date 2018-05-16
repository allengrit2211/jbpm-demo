package com.gclfax.jbpm.demo.dao;

import com.gclfax.jbpm.demo.domain.Business1ReviewLog;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface Business1ReviewLogDao extends JpaRepository<Business1ReviewLog, String> {

    @Query(value = "select * from t_business1_review_log where bid = ?1 order by id desc", nativeQuery = true)
    List<Business1ReviewLog> findByBid(Integer bid);

    @Query(value = "select * from t_business1_review_log where tid = ?1 and pid = ?2 limit 1", nativeQuery = true)
    Business1ReviewLog findBusiness1ReviewLogByTidAndPid(Integer tid, Integer pid);

    @Query(value = "select * from t_business1_review_log where pid = ?1 limit 1", nativeQuery = true)
    Business1ReviewLog findBusiness1ReviewLogByPid(Integer pid);
}
