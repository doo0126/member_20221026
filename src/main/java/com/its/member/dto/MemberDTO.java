package com.its.member.dto;

import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter

public class MemberDTO {
    private long memberId = 0 ;
    private String memberEmail = "";
    private String memberPassword = "";
    private String memberName = "";
    private int memberAge = 0;
    private String memberMobile = "";

    @Override
    public String toString() {
        return
                "memberId=" + memberId +
                ", memberEmail='" + memberEmail + '\'' +
                ", memberPassword='" + memberPassword + '\'' +
                ", memberName='" + memberName + '\'' +
                ", memberAge=" + memberAge +
                ", memberMobile='" + memberMobile + '\'' ;
    }
}
