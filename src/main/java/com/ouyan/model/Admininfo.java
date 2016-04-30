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
 * Admininfo entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "admininfo", catalog = "mybatis")
public class Admininfo implements java.io.Serializable {

	// Fields

	private Integer adminId;
	private String adminName;
	private String adminPassword;
	private Integer adminJurisdiction;
	private Set<Announcementinfo> announcementinfos = new HashSet<Announcementinfo>(
			0);

	// Constructors

	/** default constructor */
	public Admininfo() {
	}

	/** minimal constructor */
	public Admininfo(String adminName, String adminPassword,
			Integer adminJurisdiction) {
		this.adminName = adminName;
		this.adminPassword = adminPassword;
		this.adminJurisdiction = adminJurisdiction;
	}

	/** full constructor */
	public Admininfo(String adminName, String adminPassword,
			Integer adminJurisdiction, Set<Announcementinfo> announcementinfos) {
		this.adminName = adminName;
		this.adminPassword = adminPassword;
		this.adminJurisdiction = adminJurisdiction;
		this.announcementinfos = announcementinfos;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "adminId", unique = true, nullable = false)
	public Integer getAdminId() {
		return this.adminId;
	}

	public void setAdminId(Integer adminId) {
		this.adminId = adminId;
	}

	@Column(name = "adminName", nullable = false, length = 20)
	public String getAdminName() {
		return this.adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	@Column(name = "adminPassword", nullable = false, length = 30)
	public String getAdminPassword() {
		return this.adminPassword;
	}

	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
	}

	@Column(name = "adminJurisdiction", nullable = false)
	public Integer getAdminJurisdiction() {
		return this.adminJurisdiction;
	}

	public void setAdminJurisdiction(Integer adminJurisdiction) {
		this.adminJurisdiction = adminJurisdiction;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "admininfo")
	public Set<Announcementinfo> getAnnouncementinfos() {
		return this.announcementinfos;
	}

	public void setAnnouncementinfos(Set<Announcementinfo> announcementinfos) {
		this.announcementinfos = announcementinfos;
	}

}