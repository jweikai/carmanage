package com.ouyan.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;

/**
 * Superadmininfo entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "superadmininfo", catalog = "mybatis")
public class Superadmininfo implements java.io.Serializable {

	// Fields

	private Integer superAdminId;
	private String superAdminName;
	private String superAdminPassword;
	private Integer superAdminJurisdiction;

	// Constructors

	/** default constructor */
	public Superadmininfo() {
	}

	/** full constructor */
	public Superadmininfo(String superAdminName, String superAdminPassword,
			Integer superAdminJurisdiction) {
		this.superAdminName = superAdminName;
		this.superAdminPassword = superAdminPassword;
		this.superAdminJurisdiction = superAdminJurisdiction;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "superAdminId", unique = true, nullable = false)
	public Integer getSuperAdminId() {
		return this.superAdminId;
	}

	public void setSuperAdminId(Integer superAdminId) {
		this.superAdminId = superAdminId;
	}

	@Column(name = "superAdminName", nullable = false, length = 20)
	public String getSuperAdminName() {
		return this.superAdminName;
	}

	public void setSuperAdminName(String superAdminName) {
		this.superAdminName = superAdminName;
	}

	@Column(name = "superAdminPassword", nullable = false, length = 30)
	public String getSuperAdminPassword() {
		return this.superAdminPassword;
	}

	public void setSuperAdminPassword(String superAdminPassword) {
		this.superAdminPassword = superAdminPassword;
	}

	@Column(name = "superAdminJurisdiction", nullable = false)
	public Integer getSuperAdminJurisdiction() {
		return this.superAdminJurisdiction;
	}

	public void setSuperAdminJurisdiction(Integer superAdminJurisdiction) {
		this.superAdminJurisdiction = superAdminJurisdiction;
	}

}