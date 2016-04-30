package com.ouyan.model;

import java.util.Date;
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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.hibernate.annotations.GenericGenerator;

/**
 * Userinfo entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "userinfo", catalog = "mybatis")
public class Userinfo implements java.io.Serializable {

	// Fields

	private Integer userId;
	private String userName;
	private String userPassword;
	private Date userBirthday;
	private Integer userJurisdiction;
	private Integer userSex;
	private String userTel;
	private String userCarName;
	private String userCarBoardNum;
	private Set<Reservationinfo> reservationinfos = new HashSet<Reservationinfo>(
			0);
	private Set<Passwordquizinfo> passwordquizinfos = new HashSet<Passwordquizinfo>(
			0);
	private Set<Accountinfo> accountinfos = new HashSet<Accountinfo>(0);
	private Set<Caraccessinfo> caraccessinfos = new HashSet<Caraccessinfo>(0);

	// Constructors

	/** default constructor */
	public Userinfo() {
	}

	/** minimal constructor */
	public Userinfo(String userName, String userPassword, Date userBirthday,
			Integer userJurisdiction, Integer userSex, String userCarName,
			String userCarBoardNum) {
		this.userName = userName;
		this.userPassword = userPassword;
		this.userBirthday = userBirthday;
		this.userJurisdiction = userJurisdiction;
		this.userSex = userSex;
		this.userCarName = userCarName;
		this.userCarBoardNum = userCarBoardNum;
	}

	/** full constructor */
	public Userinfo(String userName, String userPassword, Date userBirthday,
			Integer userJurisdiction, Integer userSex, String userTel,
			String userCarName, String userCarBoardNum,
			Set<Reservationinfo> reservationinfos,
			Set<Passwordquizinfo> passwordquizinfos,
			Set<Accountinfo> accountinfos, Set<Caraccessinfo> caraccessinfos) {
		this.userName = userName;
		this.userPassword = userPassword;
		this.userBirthday = userBirthday;
		this.userJurisdiction = userJurisdiction;
		this.userSex = userSex;
		this.userTel = userTel;
		this.userCarName = userCarName;
		this.userCarBoardNum = userCarBoardNum;
		this.reservationinfos = reservationinfos;
		this.passwordquizinfos = passwordquizinfos;
		this.accountinfos = accountinfos;
		this.caraccessinfos = caraccessinfos;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "userId", unique = true, nullable = false)
	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	@Column(name = "userName", nullable = false, length = 20)
	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Column(name = "userPassword", nullable = false, length = 30)
	public String getUserPassword() {
		return this.userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "userBirthday", nullable = false, length = 10)
	public Date getUserBirthday() {
		return this.userBirthday;
	}

	public void setUserBirthday(Date userBirthday) {
		this.userBirthday = userBirthday;
	}

	@Column(name = "userJurisdiction", nullable = false)
	public Integer getUserJurisdiction() {
		return this.userJurisdiction;
	}

	public void setUserJurisdiction(Integer userJurisdiction) {
		this.userJurisdiction = userJurisdiction;
	}

	@Column(name = "userSex", nullable = false)
	public Integer getUserSex() {
		return this.userSex;
	}

	public void setUserSex(Integer userSex) {
		this.userSex = userSex;
	}

	@Column(name = "userTel")
	public String getUserTel() {
		return this.userTel;
	}

	public void setUserTel(String userTel) {
		this.userTel = userTel;
	}

	@Column(name = "userCarName", nullable = false, length = 40)
	public String getUserCarName() {
		return this.userCarName;
	}

	public void setUserCarName(String userCarName) {
		this.userCarName = userCarName;
	}

	@Column(name = "userCarBoardNum", nullable = false, length = 30)
	public String getUserCarBoardNum() {
		return this.userCarBoardNum;
	}

	public void setUserCarBoardNum(String userCarBoardNum) {
		this.userCarBoardNum = userCarBoardNum;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userinfo")
	public Set<Reservationinfo> getReservationinfos() {
		return this.reservationinfos;
	}

	public void setReservationinfos(Set<Reservationinfo> reservationinfos) {
		this.reservationinfos = reservationinfos;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userinfo")
	public Set<Passwordquizinfo> getPasswordquizinfos() {
		return this.passwordquizinfos;
	}

	public void setPasswordquizinfos(Set<Passwordquizinfo> passwordquizinfos) {
		this.passwordquizinfos = passwordquizinfos;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userinfo")
	public Set<Accountinfo> getAccountinfos() {
		return this.accountinfos;
	}

	public void setAccountinfos(Set<Accountinfo> accountinfos) {
		this.accountinfos = accountinfos;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userinfo")
	public Set<Caraccessinfo> getCaraccessinfos() {
		return this.caraccessinfos;
	}

	public void setCaraccessinfos(Set<Caraccessinfo> caraccessinfos) {
		this.caraccessinfos = caraccessinfos;
	}

}