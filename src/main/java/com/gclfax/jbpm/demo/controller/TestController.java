package com.gclfax.jbpm.demo.controller;



import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/test")
public class TestController {

    @RequestMapping(value = "/show", method = RequestMethod.GET)
    @ResponseBody
    public String test(){
        return "aa";
    }

}
