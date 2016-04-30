package com.ouyan.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;

/**
 * Deleteinfo entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "deleteinfo", catalog = "mybatis")
public class Deleteinfo implements java.io.Serializable {

	// Fields

	private Integer deleteId;
	private String deleteKind;
	private String deleteContent;

	// Constructors

	/** default constructor */
	public Deleteinfo() {
	}

	/** full constructor */
	public Deleteinfo(String deleteKind, String deleteContent) {
		this.deleteKind = deleteKind;
		this.deleteContent = deleteContent;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "deleteId", unique = true, nullable = false)
	public Integer getDeleteId() {
		return this.deleteId;
	}

	public void setDeleteId(Integer deleteId) {
		this.deleteId = deleteId;
	}

	@Column(name = "deleteKind", nullable = false, length = 30)
	public String getDeleteKind() {
		return this.deleteKind;
	}

	public void setDeleteKind(String deleteKind) {
		this.deleteKind = deleteKind;
	}

	@Column(name = "deleteContent", nullable = false, length = 65535)
	public String getDeleteContent() {
		return this.deleteContent;
	}

	public void setDeleteContent(String deleteContent) {
		this.deleteContent = deleteContent;
	}

}