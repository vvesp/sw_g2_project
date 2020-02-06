package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class RentalVO {
	private Long rNum;
	private Long mId;
	private String bNum;
	private Date rdDate;
	private Date retDate;

}
