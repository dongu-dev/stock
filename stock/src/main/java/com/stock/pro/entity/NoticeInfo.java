package com.stock.pro.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.Data;


@Entity
@Table(name= "notice_info")
@Data
public class NoticeInfo {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int num;
	private String notice_title;
	private String notice_contents;
	private int select_count;
	private char use_yn;
	
	@Column(nullable=false, columnDefinition = "date default sysdate")
	@Temporal(TemporalType.DATE)
	private Date regist_date;
	private Date modify_date;
}
