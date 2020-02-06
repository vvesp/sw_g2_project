package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ReplyVO {
	private Long rNo;
	private Long bNo;
	private String reply;
	private String replyer;
	private Date replyDate;
	private Date updateDate;

}
