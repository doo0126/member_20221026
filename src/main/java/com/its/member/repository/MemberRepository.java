package com.its.member.repository;

import com.its.member.dto.MemberDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MemberRepository {
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
public int delete(long result){
        return sql.delete("member.memberDelete",result);

}
}
