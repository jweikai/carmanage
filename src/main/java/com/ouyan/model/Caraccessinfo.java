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
 * Caraccessinfo entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "caraccessinfo", catalog = "mybatis")
public class Caraccessinfo implements java.io.Serializable {

	// Fields

	private Integer carAccessId;
	private Userinfo userinfo;
	private Timestamp carAccessEnter;
	private Timestamp carAccessExit;

	// Constructors

	/** default constructor */
	public Caraccessinfo() {
	}

	/** full constructor */
	public Caraccessinfo(Userinfo userinfo, Timestamp carAccessEnter,
			Timestamp carAccessExit) {
		this.userinfo = userinfo;
		this.carAccessEnter = carAccessEnter;
		this.carAccessExit = carAccessExit;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "carAccessId", unique = true, nullable = false)
	public Integer getCarAccessId() {
		return this.carAccessId;
	}

	public void setCarAccessId(Integer carAccessId) {
		this.carAccessId = carAccessId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "carAccessCarId", nullable = false)
	public Userinfo getUserinfo() {
		return this.userinfo;
	}

	public void setUserinfo(Userinfo userinfo) {
		this.userinfo = userinfo;
	}

	@Column(name = "carAccessEnter", nullable = false, length = 19)
	public Timestamp getCarAccessEnter() {
		return this.carAccessEnter;
	}

	public void setCarAccessEnter(Timestamp carAccessEnter) {
		this.carAccessEnter = carAccessEnter;
	}

	@Column(name = "carAccessExit", nullable = false, length = 19)
	public Timestamp getCarAccessExit() {
		return this.carAccessExit;
	}

	public void setCarAccessExit(Timestamp carAccessExit) {
		this.carAccessExit = carAccessExit;
	}

}