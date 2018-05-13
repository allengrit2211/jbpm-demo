package com.gclfax.jbpm.demo.domain;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
@javax.persistence.Table(
    name = "t_permission"
)
public class Permission {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    private String name;
    //授权链接
    private String url;

    private Integer pid;

    private Date createTime;


    public Permission(){}

    public Permission(Integer id,String name,String url,Integer pid,Date createTime){
        this.id= id;
        this.name = name;
        this.url = url;
        this.pid = pid;
        this.createTime = createTime;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }


}
