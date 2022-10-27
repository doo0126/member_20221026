package com.its.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public String index(){


        return "index";
    }
@GetMapping("/saveIndex")
    public  String saveIndex(){
        return"memberSave";
}
@GetMapping("/loginIndex")
public String loginIndex(){
        return"memberLogin";
}



}

