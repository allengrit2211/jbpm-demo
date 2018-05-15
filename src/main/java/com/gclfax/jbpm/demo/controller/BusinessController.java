package com.gclfax.jbpm.demo.controller;


import com.gclfax.jbpm.demo.domain.Business1;
import com.gclfax.jbpm.demo.domain.Business1ReviewLog;
import com.gclfax.jbpm.demo.service.Business1ReviewLogService;
import com.gclfax.jbpm.demo.service.BusinessService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@RestController
@RequestMapping("/business")
public class BusinessController {


    @Autowired
    private BusinessService businessService;

    @Autowired
    private Business1ReviewLogService business1ReviewLogService;

    @RequestMapping("/businessList")
    public ModelAndView businessList(){

        List<Business1> business1List = businessService.findAll();

        ModelAndView modelAndView = new ModelAndView("BusinessList");
        modelAndView.addObject("businessList",business1List);

        return  modelAndView;
    }


    @RequestMapping("/businessLogList")
    public ModelAndView businessLogList(@RequestParam("bid")Integer bid){

        List<Business1ReviewLog>  business1ReviewLogList = business1ReviewLogService.findBusiness1ReviewLogByBid(bid);

        ModelAndView modelAndView = new ModelAndView("BusinessLogList");
        modelAndView.addObject("business1ReviewLogList",business1ReviewLogList);

        return  modelAndView;
    }

}
