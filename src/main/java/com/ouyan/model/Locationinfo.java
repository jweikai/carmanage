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
 * Locationinfo entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "locationinfo", catalog = "mybatis")
public class Locationinfo implements java.io.Serializable {

	// Fields

	private Integer locationId;
	private String locationArea;
	private String locationRoad;
	private String locationSpot;
	private Set<Standardinfo> standardinfos = new HashSet<Standardinfo>(0);

	// Constructors

	/** default constructor */
	public Locationinfo() {
	}

	/** minimal constructor */
	public Locationinfo(String locationArea, String locationRoad,
			String locationSpot) {
		this.locationArea = locationArea;
		this.locationRoad = locationRoad;
		this.locationSpot = locationSpot;
	}

	/** full constructor */
	public Locationinfo(String locationArea, String locationRoad,
			String locationSpot, Set<Standardinfo> standardinfos) {
		this.locationArea = locationArea;
		this.locationRoad = locationRoad;
		this.locationSpot = locationSpot;
		this.standardinfos = standardinfos;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "locationId", unique = true, nullable = false)
	public Integer getLocationId() {
		return this.locationId;
	}

	public void setLocationId(Integer locationId) {
		this.locationId = locationId;
	}

	@Column(name = "locationArea", nullable = false, length = 40)
	public String getLocationArea() {
		return this.locationArea;
	}

	public void setLocationArea(String locationArea) {
		this.locationArea = locationArea;
	}

	@Column(name = "locationRoad", nullable = false, length = 40)
	public String getLocationRoad() {
		return this.locationRoad;
	}

	public void setLocationRoad(String locationRoad) {
		this.locationRoad = locationRoad;
	}

	@Column(name = "locationSpot", nullable = false, length = 40)
	public String getLocationSpot() {
		return this.locationSpot;
	}

	public void setLocationSpot(String locationSpot) {
		this.locationSpot = locationSpot;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "locationinfo")
	public Set<Standardinfo> getStandardinfos() {
		return this.standardinfos;
	}

	public void setStandardinfos(Set<Standardinfo> standardinfos) {
		this.standardinfos = standardinfos;
	}

}