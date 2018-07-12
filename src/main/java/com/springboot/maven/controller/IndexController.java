package com.springboot.maven.controller;


import com.springboot.maven.User.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/")
public class IndexController{
    @GetMapping("/user")
    public String list(Model model){
        User user = new User();
        user.setId(1);
        user.setName("南宁");
        user.setAge(10);
        user.setBirthday("8.19");
        user.setAddress("vjdsjis");
        User user1 = new User();
        user1.setId(2);
        user1.setName("清河");
        user1.setAge(10);
        user1.setBirthday("8.19");
        user1.setAddress("shdjfjg,jjh");
        User user2 = new User();
        user2.setId(3);
        user2.setName("姑苏");
        user2.setAge(10);
        user2.setBirthday("8.19");
        user2.setAddress("fuyfguigh");
        List<User> list = new ArrayList<>();
        list.add(user);
        list.add(user1);
        list.add(user2);
        model.addAttribute("user",list);
        return "user";
    }
}
