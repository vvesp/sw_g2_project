package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class BookVO {
	private String bnum;
	private String auther;
	private String bname;
	private String publisher;
	private Date pdate;
	private String cl;
	private String info;
	private String bimg;
	

}
