package com.ouyan.model;

import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;

/**
 * Accountinfo entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "accountinfo", catalog = "mybatis")
public class Accountinfo implements java.io.Serializable {

	// Fields

	private Integer accountId;
	private Userinfo userinfo;
	private Accountlistinfo accountlistinfo;
	private Long accountBalance;
	private Timestamp accountStartTime;
	private Integer payPassword;

	// Constructors

	/** default constructor */
	public Accountinfo() {
	}

	/** minimal constructor */
	public Accountinfo(Userinfo userinfo, Accountlistinfo accountlistinfo,
			Long accountBalance, Timestamp accountStartTime) {
		this.userinfo = userinfo;
		this.accountlistinfo = accountlistinfo;
		this.accountBalance = accountBalance;
		this.accountStartTime = accountStartTime;
	}

	/** full constructor */
	public Accountinfo(Userinfo userinfo, Accountlistinfo accountlistinfo,
			Long accountBalance, Timestamp accountStartTime, Integer payPassword) {
		this.userinfo = userinfo;
		this.accountlistinfo = accountlistinfo;
		this.accountBalance = accountBalance;
		this.accountStartTime = accountStartTime;
		this.payPassword = payPassword;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "accountId", unique = true, nullable = false)
	public Integer getAccountId() {
		return this.accountId;
	}

	public void setAccountId(Integer accountId) {
		this.accountId = accountId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "accountOwnerId", nullable = false)
	public Userinfo getUserinfo() {
		return this.userinfo;
	}

	public void setUserinfo(Userinfo userinfo) {
		this.userinfo = userinfo;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "accountListId", nullable = false)
	public Accountlistinfo getAccountlistinfo() {
		return this.accountlistinfo;
	}

	public void setAccountlistinfo(Accountlistinfo accountlistinfo) {
		this.accountlistinfo = accountlistinfo;
	}

	@Column(name = "accountBalance", nullable = false, precision = 10, scale = 0)
	public Long getAccountBalance() {
		return this.accountBalance;
	}

	public void setAccountBalance(Long accountBalance) {
		this.accountBalance = accountBalance;
	}

	@Column(name = "accountStartTime", nullable = false, length = 19)
	public Timestamp getAccountStartTime() {
		return this.accountStartTime;
	}

	public void setAccountStartTime(Timestamp accountStartTime) {
		this.accountStartTime = accountStartTime;
	}

	@Column(name = "payPassword")
	public Integer getPayPassword() {
		return this.payPassword;
	}

	public void setPayPassword(Integer payPassword) {
		this.payPassword = payPassword;
	}

}