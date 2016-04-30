package com.ouyan.model;

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
 * Carportinfo entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "carportinfo", catalog = "mybatis")
public class Carportinfo implements java.io.Serializable {

	// Fields

	private Integer carportId;
	private String carportLocation;
	private Integer carportState;
	private Set<Reservationinfo> reservationinfos = new HashSet<Reservationinfo>(
			0);

	// Constructors

	/** default constructor */
	public Carportinfo() {
	}

	/** minimal constructor */
	public Carportinfo(String carportLocation, Integer carportState) {
		this.carportLocation = carportLocation;
		this.carportState = carportState;
	}

	/** full constructor */
	public Carportinfo(String carportLocation, Integer carportState,
			Set<Reservationinfo> reservationinfos) {
		this.carportLocation = carportLocation;
		this.carportState = carportState;
		this.reservationinfos = reservationinfos;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "carportId", unique = true, nullable = false)
	public Integer getCarportId() {
		return this.carportId;
	}

	public void setCarportId(Integer carportId) {
		this.carportId = carportId;
	}

	@Column(name = "carportLocation", nullable = false, length = 30)
	public String getCarportLocation() {
		return this.carportLocation;
	}

	public void setCarportLocation(String carportLocation) {
		this.carportLocation = carportLocation;
	}

	@Column(name = "carportState", nullable = false)
	public Integer getCarportState() {
		return this.carportState;
	}

	public void setCarportState(Integer carportState) {
		this.carportState = carportState;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "carportinfo")
	public Set<Reservationinfo> getReservationinfos() {
		return this.reservationinfos;
	}

	public void setReservationinfos(Set<Reservationinfo> reservationinfos) {
		this.reservationinfos = reservationinfos;
	}

}