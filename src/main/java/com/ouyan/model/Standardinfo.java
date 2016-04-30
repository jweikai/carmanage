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
 * Standardinfo entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "standardinfo", catalog = "mybatis")
public class Standardinfo implements java.io.Serializable {

	// Fields

	private Integer standardId;
	private Locationinfo locationinfo;
	private Integer standardNormal;
	private Integer standardFree;
	private Integer standardCard;
	private Integer standardJurisdiction;

	// Constructors

	/** default constructor */
	public Standardinfo() {
	}

	/** full constructor */
	public Standardinfo(Locationinfo locationinfo, Integer standardNormal,
			Integer standardFree, Integer standardCard,
			Integer standardJurisdiction) {
		this.locationinfo = locationinfo;
		this.standardNormal = standardNormal;
		this.standardFree = standardFree;
		this.standardCard = standardCard;
		this.standardJurisdiction = standardJurisdiction;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "standardId", unique = true, nullable = false)
	public Integer getStandardId() {
		return this.standardId;
	}

	public void setStandardId(Integer standardId) {
		this.standardId = standardId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "standardLocationId", nullable = false)
	public Locationinfo getLocationinfo() {
		return this.locationinfo;
	}

	public void setLocationinfo(Locationinfo locationinfo) {
		this.locationinfo = locationinfo;
	}

	@Column(name = "standardNormal", nullable = false)
	public Integer getStandardNormal() {
		return this.standardNormal;
	}

	public void setStandardNormal(Integer standardNormal) {
		this.standardNormal = standardNormal;
	}

	@Column(name = "standardFree", nullable = false)
	public Integer getStandardFree() {
		return this.standardFree;
	}

	public void setStandardFree(Integer standardFree) {
		this.standardFree = standardFree;
	}

	@Column(name = "standardCard", nullable = false)
	public Integer getStandardCard() {
		return this.standardCard;
	}

	public void setStandardCard(Integer standardCard) {
		this.standardCard = standardCard;
	}

	@Column(name = "standardJurisdiction", nullable = false)
	public Integer getStandardJurisdiction() {
		return this.standardJurisdiction;
	}

	public void setStandardJurisdiction(Integer standardJurisdiction) {
		this.standardJurisdiction = standardJurisdiction;
	}

}