package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class MemberVO {
	private Long mId;
	private String mName;
	private Long sNum;
	private String adre;
	private Long telNum;
	private String eMail;
	private Date aDate;

}
