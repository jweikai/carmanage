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
 * Announcementinfo entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "announcementinfo", catalog = "mybatis")
public class Announcementinfo implements java.io.Serializable {

	// Fields

	private Integer announcementId;
	private Admininfo admininfo;
	private String announcementTilte;
	private String announcementContent;

	// Constructors

	/** default constructor */
	public Announcementinfo() {
	}

	/** full constructor */
	public Announcementinfo(Admininfo admininfo, String announcementTilte,
			String announcementContent) {
		this.admininfo = admininfo;
		this.announcementTilte = announcementTilte;
		this.announcementContent = announcementContent;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "announcementId", unique = true, nullable = false)
	public Integer getAnnouncementId() {
		return this.announcementId;
	}

	public void setAnnouncementId(Integer announcementId) {
		this.announcementId = announcementId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "announcementAuthorId", nullable = false)
	public Admininfo getAdmininfo() {
		return this.admininfo;
	}

	public void setAdmininfo(Admininfo admininfo) {
		this.admininfo = admininfo;
	}

	@Column(name = "announcementTilte", nullable = false, length = 20)
	public String getAnnouncementTilte() {
		return this.announcementTilte;
	}

	public void setAnnouncementTilte(String announcementTilte) {
		this.announcementTilte = announcementTilte;
	}

	@Column(name = "announcementContent", nullable = false, length = 65535)
	public String getAnnouncementContent() {
		return this.announcementContent;
	}

	public void setAnnouncementContent(String announcementContent) {
		this.announcementContent = announcementContent;
	}

}