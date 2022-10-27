package com.its.member.controller;

import com.its.member.dto.MemberDTO;
import com.its.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;


@Controller
public class MemberController {
    @Autowired
    private MemberService memberService;

    @PostMapping("/save")
    public String save(@ModelAttribute MemberDTO memberDTO) {
        boolean result = memberService.save(memberDTO);
        if (result != false) {
            return "index";
        } else {
            return "false";
        }


    }


    @PostMapping("/login")
    public String login(@ModelAttribute MemberDTO memberDTO, Model model) {
        MemberDTO resultDTO = memberService.login(memberDTO);
        if (resultDTO != null) {
            model.addAttribute("resultDTO", resultDTO);
            return "memberMain";
        } else {
            return "false";
        }


    }

    @GetMapping("/memberList")
    public String memberList(Model model) {
        List<MemberDTO> memberList = memberService.memberDTOList();
        model.addAttribute("memberList", memberList);
        return "memberList";
    }

    @GetMapping("/member")
    public String member(@RequestParam("findId") long findId, Model model) {

        MemberDTO result = memberService.member(findId);

        model.addAttribute("result", result);

        return "memberDetail";
    }

    @GetMapping("/delete")
    public String delete(@RequestParam("result") long result) {

        boolean an = memberService.delete(result);
        if (an) {
            return "index";

        } else {
            return "false";
        }
    }
    //@GetMapping("/update")
    //public String update(@RequestParam("updateId") long updateId){
       // return ""


    }
//}
