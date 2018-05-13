package com.gclfax.jbpm.demo.controller;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController

public class HomeController {


    @RequestMapping("/home")
    public ModelAndView index_home(){
        return  new ModelAndView("home");
    }

}
