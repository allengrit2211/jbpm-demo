package com.gclfax.jbpm.demo.controller;


import com.gclfax.jbpm.demo.domain.Role;
import com.gclfax.jbpm.demo.domain.User;
import com.gclfax.jbpm.demo.domain.UserRole;
import com.gclfax.jbpm.demo.service.RoleService;
import com.gclfax.jbpm.demo.service.UserService;
import org.common5iq.util.Md5Util;
import org.common5iq.util.Utils;
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
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

@RestController

public class UserController {

    @Autowired
    SessionRegistry sessionRegistry;

    @Autowired
    UserService userService;

    @Autowired
    RoleService roleService;

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

    @RequestMapping("/user/userAddShow")
    public ModelAndView addUserShow(HttpServletRequest request, HttpServletResponse response) {

        Collection<Role> roles = roleService.findAll();
        ModelAndView modelAndView = new ModelAndView("UserAdd");
        modelAndView.addObject("roles", roles);
        return modelAndView;
    }

    @RequestMapping(value = "/user/userAdd", method = RequestMethod.POST)
    public ModelAndView userAdd(HttpServletRequest request, HttpServletResponse response) {


        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String roleId = request.getParameter("roleId");

        User user = new User();
        user.setUsername(username);
        user.setPassword(Md5Util.getMd5(password));
        user.setPhone(phone);
        user.setEmail(email);
        user.setRegTime(new Date());


        List<UserRole> userRoles = new ArrayList<>();
        for(String role:roleId.split(",")){
            UserRole userRole = new UserRole();
            userRole.setRid(Utils.toInteger(role));
            userRoles.add(userRole);
        }

        userService.save(user,userRoles);

        ModelAndView modelAndView = new ModelAndView("redirect:/user/userList");

        return modelAndView;
    }


    @RequestMapping("/user/userList")
    public ModelAndView userList(HttpServletRequest request, HttpServletResponse response) {

        List<User> users = userService.findAll();

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("UserList");
        modelAndView.addObject("users", users);
        return modelAndView;
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
