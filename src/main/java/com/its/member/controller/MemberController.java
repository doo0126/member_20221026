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

import javax.servlet.http.HttpSession;
import java.lang.reflect.Member;
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
    public String login(@ModelAttribute MemberDTO memberDTO, Model model, HttpSession session) {
        MemberDTO resultDTO = memberService.login(memberDTO);

        if (resultDTO != null) {
            model.addAttribute("resultDTO", resultDTO);
            /*세션에 로그인 사용자의 이메일을 저장 */
            session.setAttribute("loginEmail",resultDTO.getMemberEmail());
            return "memberMain";
        } else {
            return "memberLogin";
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
    public String delete(@RequestParam("result") long result,Model model) {

       List<MemberDTO> resultList= memberService.delete(result);
        model.addAttribute("memberList", resultList);
            return "memberList";


    }
    //@GetMapping("/update")
    //public String update(@RequestParam("updateId") long updateId){
       // return ""

@GetMapping("/add")
    public String add(){
        memberService.add();
        return "index";
}
    }



//}
