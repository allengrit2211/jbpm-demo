package com.gclfax.jbpm.demo.controller;


import com.gclfax.jbpm.demo.domain.User;
import com.gclfax.jbpm.demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.session.SessionInformation;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@RestController

public class UserController {

    @Autowired
    SessionRegistry sessionRegistry;

    @Autowired
    UserService userService;

    /**
     * 登录页面
     *
     * @param
     * @return
     */
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login(
            @RequestParam(value = "error", required = false) String error,
            @RequestParam(value = "logout", required = false) String logout) {
        ModelAndView model = new ModelAndView();
        if (error != null) {
            model.addObject("error", "不正确的用户名和密码");
        }
        if (logout != null) {
            model.addObject("msg", "你已经成功退出");
        }
        model.setViewName("login");
        return model;
    }

//
//    @RequestMapping("/logout")
//    public String logout( HttpServletRequest request, HttpServletResponse response) {
//
//        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//        if (auth != null){
//            new SecurityContextLogoutHandler().logout(request, response, auth);
//        }
//
//        UserDetails user = userService.loadUserByUsername("admin");
//        List<SessionInformation> allSessions = sessionRegistry.getAllSessions(user, false);
//        if (allSessions != null) {
//            for (int i = 0; i < allSessions.size(); i++) {
//                SessionInformation sessionInformation = allSessions.get(i);
//                sessionInformation.getSessionId();
//                sessionInformation.expireNow();
//            }
//        }
//
//
//        return "redirect:/login";//You can redirect wherever you want, but generally it's a good practice to show login screen again.
//    }


}
