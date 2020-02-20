package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class MemberVO {
	private Long mid;
	private String mname;
	private Long snum;
	private String adre;
	private Long telnum;
	private String email;
	private Date adate;
	private String pass;
	private String userid;

}
