package com.its.member.service;

import com.its.member.dto.MemberDTO;
import com.its.member.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.lang.reflect.Member;
import java.util.List;

@Service
public class MemberService {
    @Autowired
    private MemberRepository memberRepository;

    public boolean save(MemberDTO memberDTO) {
        int result = memberRepository.save(memberDTO);
        if (result > 0) {
            return true;
        } else {
            return false;
        }

    }


    public MemberDTO login(MemberDTO memberDTO) {
        String email = memberDTO.getMemberEmail();
        String password = memberDTO.getMemberPassword();
        MemberDTO resultDTO = memberRepository.login(email);
        if (password.equals(resultDTO.getMemberPassword())) {
            return resultDTO;
        } else {
            return null;
        }

    }
    public List<MemberDTO> memberDTOList(){
            return  memberRepository.memberDTOList();

    }
    public MemberDTO member(long findId){
          return memberRepository.member(findId);
    }


    public List<MemberDTO> delete(long result){
   List<MemberDTO> resultList = memberRepository.delete(result);

    return resultList;


    }
    public void add(){
        memberRepository.add();
    }
}

