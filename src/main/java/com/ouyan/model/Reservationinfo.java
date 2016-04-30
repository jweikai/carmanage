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
 * Reservationinfo entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "reservationinfo", catalog = "mybatis")
public class Reservationinfo implements java.io.Serializable {

	// Fields

	private Integer reservationId;
	private Userinfo userinfo;
	private Carportinfo carportinfo;
	private Timestamp reservationTime;

	// Constructors

	/** default constructor */
	public Reservationinfo() {
	}

	/** full constructor */
	public Reservationinfo(Userinfo userinfo, Carportinfo carportinfo,
			Timestamp reservationTime) {
		this.userinfo = userinfo;
		this.carportinfo = carportinfo;
		this.reservationTime = reservationTime;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "reservationId", unique = true, nullable = false)
	public Integer getReservationId() {
		return this.reservationId;
	}

	public void setReservationId(Integer reservationId) {
		this.reservationId = reservationId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "reservationUserId", nullable = false)
	public Userinfo getUserinfo() {
		return this.userinfo;
	}

	public void setUserinfo(Userinfo userinfo) {
		this.userinfo = userinfo;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "reservationCarportId", nullable = false)
	public Carportinfo getCarportinfo() {
		return this.carportinfo;
	}

	public void setCarportinfo(Carportinfo carportinfo) {
		this.carportinfo = carportinfo;
	}

	@Column(name = "reservationTime", nullable = false, length = 19)
	public Timestamp getReservationTime() {
		return this.reservationTime;
	}

	public void setReservationTime(Timestamp reservationTime) {
		this.reservationTime = reservationTime;
	}

}