package com.ouyan.model;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;

/**
 * Accountlistinfo entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "accountlistinfo", catalog = "mybatis")
public class Accountlistinfo implements java.io.Serializable {

	// Fields

	private Integer accountListId;
	private Long accountListBalance;
	private String accountListWay;
	private Timestamp accountListTime;
	private Integer payCondition;
	private Set<Accountinfo> accountinfos = new HashSet<Accountinfo>(0);

	// Constructors

	/** default constructor */
	public Accountlistinfo() {
	}

	/** minimal constructor */
	public Accountlistinfo(Long accountListBalance, String accountListWay,
			Timestamp accountListTime, Integer payCondition) {
		this.accountListBalance = accountListBalance;
		this.accountListWay = accountListWay;
		this.accountListTime = accountListTime;
		this.payCondition = payCondition;
	}

	/** full constructor */
	public Accountlistinfo(Long accountListBalance, String accountListWay,
			Timestamp accountListTime, Integer payCondition,
			Set<Accountinfo> accountinfos) {
		this.accountListBalance = accountListBalance;
		this.accountListWay = accountListWay;
		this.accountListTime = accountListTime;
		this.payCondition = payCondition;
		this.accountinfos = accountinfos;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "accountListId", unique = true, nullable = false)
	public Integer getAccountListId() {
		return this.accountListId;
	}

	public void setAccountListId(Integer accountListId) {
		this.accountListId = accountListId;
	}

	@Column(name = "accountListBalance", nullable = false, precision = 10, scale = 0)
	public Long getAccountListBalance() {
		return this.accountListBalance;
	}

	public void setAccountListBalance(Long accountListBalance) {
		this.accountListBalance = accountListBalance;
	}

	@Column(name = "accountListWay", nullable = false, length = 20)
	public String getAccountListWay() {
		return this.accountListWay;
	}

	public void setAccountListWay(String accountListWay) {
		this.accountListWay = accountListWay;
	}

	@Column(name = "accountListTime", nullable = false, length = 19)
	public Timestamp getAccountListTime() {
		return this.accountListTime;
	}

	public void setAccountListTime(Timestamp accountListTime) {
		this.accountListTime = accountListTime;
	}

	@Column(name = "payCondition", nullable = false)
	public Integer getPayCondition() {
		return this.payCondition;
	}

	public void setPayCondition(Integer payCondition) {
		this.payCondition = payCondition;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "accountlistinfo")
	public Set<Accountinfo> getAccountinfos() {
		return this.accountinfos;
	}

	public void setAccountinfos(Set<Accountinfo> accountinfos) {
		this.accountinfos = accountinfos;
	}

}