package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class BookVO {
	private String bNum;
	private String auther;
	private String bName;
	private String publisher;
	private Date pDate;
	private String cl;

}
