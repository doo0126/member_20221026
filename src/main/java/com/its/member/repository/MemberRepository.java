package com.its.member.repository;

import com.its.member.dto.MemberDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.lang.reflect.Member;
import java.util.List;

@Repository
public class MemberRepository {
    int num1 =0;
    int num2 = 100;
    @Autowired
    private SqlSessionTemplate sql;

    public int save(MemberDTO memberDTO) {
        return sql.insert("member.memberInsert", memberDTO);

    }

    public MemberDTO login(String  email ){
      MemberDTO resultDTO =  sql.selectOne("member.memberLogin",email);
return resultDTO;
    }

public List<MemberDTO> memberDTOList(){
        return sql.selectList("member.memberList");

}
public MemberDTO member(long findId){
    System.out.println("findId = " + findId);
return sql.selectOne("member.memberId",findId);
}
public List<MemberDTO> delete(Long result){
 sql.delete("member.memberDelete",result);
    return sql.selectList("member.memberList");
}
public void add(){
        for(int i ;num1<num2 ;num1++){
            sql.insert("member.memberAdd",num1);

        }
        if(num1 == num2){
            num2+=100;
        }
}


    public String emailDuplicateCheck(String memberEmail) {

        return sql.selectOne("member.memberEmailCheck",memberEmail);

    }
    public MemberDTO memberListAjax(long memberId){
        return sql.selectOne("member.memberId",memberId);
    }
}
