package com.ouyan.model;

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
 * Passwordquizinfo entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "passwordquizinfo", catalog = "mybatis")
public class Passwordquizinfo implements java.io.Serializable {

	// Fields

	private Integer passwordQuizId;
	private Userinfo userinfo;
	private String passwordQuizContent;
	private String passwordQuizAnswer;
	private String passwordQuizPwd;

	// Constructors

	/** default constructor */
	public Passwordquizinfo() {
	}

	/** full constructor */
	public Passwordquizinfo(Userinfo userinfo, String passwordQuizContent,
			String passwordQuizAnswer, String passwordQuizPwd) {
		this.userinfo = userinfo;
		this.passwordQuizContent = passwordQuizContent;
		this.passwordQuizAnswer = passwordQuizAnswer;
		this.passwordQuizPwd = passwordQuizPwd;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "passwordQuizId", unique = true, nullable = false)
	public Integer getPasswordQuizId() {
		return this.passwordQuizId;
	}

	public void setPasswordQuizId(Integer passwordQuizId) {
		this.passwordQuizId = passwordQuizId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "passwordQuizUserId", nullable = false)
	public Userinfo getUserinfo() {
		return this.userinfo;
	}

	public void setUserinfo(Userinfo userinfo) {
		this.userinfo = userinfo;
	}

	@Column(name = "passwordQuizContent", nullable = false, length = 65535)
	public String getPasswordQuizContent() {
		return this.passwordQuizContent;
	}

	public void setPasswordQuizContent(String passwordQuizContent) {
		this.passwordQuizContent = passwordQuizContent;
	}

	@Column(name = "passwordQuizAnswer", nullable = false)
	public String getPasswordQuizAnswer() {
		return this.passwordQuizAnswer;
	}

	public void setPasswordQuizAnswer(String passwordQuizAnswer) {
		this.passwordQuizAnswer = passwordQuizAnswer;
	}

	@Column(name = "passwordQuizPwd", nullable = false)
	public String getPasswordQuizPwd() {
		return this.passwordQuizPwd;
	}

	public void setPasswordQuizPwd(String passwordQuizPwd) {
		this.passwordQuizPwd = passwordQuizPwd;
	}

}