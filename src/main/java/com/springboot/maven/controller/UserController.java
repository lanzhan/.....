package com.springboot.maven.controller;


import com.springboot.maven.User.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
@RequestMapping("/api/user")
public class UserController {
    @GetMapping("/insert")
    public String insertUser(Model model){
        User user = new User();
        user.setName("gvggbj");
        user.setAge(10);
        user.setBirthday("8.19");
        user.setAddress("fuyfguigh");
        model.addAttribute("user",user);
        return "/user";
    }
    @GetMapping("/update")
    public String  updateUser(){
        return "/user";
    }
    @GetMapping("/select")
    public String selectUser(){
        return "/user";
    }
    @GetMapping("/delete")
    public String deleteUser(){
        return "/user";
    }
}
