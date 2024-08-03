package com.WorldFlower.UserDTO;

import java.sql.Timestamp;

public class UserDTO {
	//userInfo Table
	private String userId;
	private String userNickName;
	private Timestamp userRegdate;
	private Timestamp userUpdatedate;
	private String checkLogin;
	private String checkResign;
	
	//userPwd Table
	private String pwd;
	private int pcount;
	private Timestamp pupdatedate;
	
	//user
	private String email;
	private String checkEmail;
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserNickName() {
		return userNickName;
	}
	public void setUserNickName(String userNickName) {
		this.userNickName = userNickName;
	}
	public Timestamp getUserRegdate() {
		return userRegdate;
	}
	public void setUserRegdate(Timestamp userRegdate) {
		this.userRegdate = userRegdate;
	}
	public Timestamp getUserUpdatedate() {
		return userUpdatedate;
	}
	public void setUserUpdatedate(Timestamp userUpdatedate) {
		this.userUpdatedate = userUpdatedate;
	}
	public String getCheckLogin() {
		return checkLogin;
	}
	public void setCheckLogin(String checkLogin) {
		this.checkLogin = checkLogin;
	}
	public String getCheckResign() {
		return checkResign;
	}
	public void setCheckResign(String checkResign) {
		this.checkResign = checkResign;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public int getPcount() {
		return pcount;
	}
	public void setPcount(int pcount) {
		this.pcount = pcount;
	}
	public Timestamp getPupdatedate() {
		return pupdatedate;
	}
	public void setPupdatedate(Timestamp pupdatedate) {
		this.pupdatedate = pupdatedate;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCheckEmail() {
		return checkEmail;
	}
	public void setCheckEmail(String checkEmail) {
		this.checkEmail = checkEmail;
	}
	
	
}
