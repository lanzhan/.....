package com.springboot.maven.controller;


import com.springboot.maven.User.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/")
public class IndexController{
    private Map<Integer,User> userMap=new HashMap<Integer, User>();

    public IndexController(){
        userMap.put(1,new User(1,"南宁",10,"8.19","sahfsdfhbn"));
        userMap.put(2,new User(2,"清河",13,"8.19","rtgfsdgvd"));
        userMap.put(3,new User(3,"姑苏",15,"8.19","piujhyhbn"));
        userMap.put(4,new User(4,"云梦",17,"8.19","zxdgfhhio"));
    }
    @GetMapping("/{id}")
    public String show(@PathVariable Integer id, Model model){
        model.addAttribute(userMap.get(id));
        return "user";
    }
    @GetMapping("/{id}/update")
    public String update(@PathVariable Integer id, Model model){
        model.addAttribute(userMap.get(id));
        return "update";
    }
    @PostMapping("/{id}/update")
    public String update(@PathVariable Integer id,@Validated User user,BindingResult bindingResult){
        if (bindingResult.hasErrors()){
            return "update";
        }else{
            userMap.remove(id);
            userMap.put(user.getId(),user);
            return "redirect:/user";
        }
    }
    @GetMapping("/add")
    public String add(@ModelAttribute("user") User user){
        return "add";
    }
    @PostMapping("/add")
    public String add(@Validated User user, BindingResult bindingResult) throws IOException{
        if(bindingResult.hasErrors()){
            return "add";
        }else{
            userMap.put(user.getId(),user);
            return "redirect:/user";
        }
    }

    @GetMapping("/{id}/delete")
    public String delete(@PathVariable Integer id){
        userMap.remove(id);
        return "redirect:/user";
    }
    @GetMapping("/user")
    public String list(Model model){
        model.addAttribute("users",userMap);
        return "user";
    }
}
