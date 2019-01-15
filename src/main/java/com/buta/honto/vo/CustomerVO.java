package com.buta.honto.vo;

public class CustomerVO {
	private String custId;
	private String password;
	private String name;
	private String email;
	private String division;
	private String idno;
	private String address;
	public CustomerVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CustomerVO(String custId, String password, String name, String email, String division, String idno,
			String address) {
		super();
		this.custId = custId;
		this.password = password;
		this.name = name;
		this.email = email;
		this.division = division;
		this.idno = idno;
		this.address = address;
	}
	public String getCustId() {
		return custId;
	}
	public void setCustId(String custId) {
		this.custId = custId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDivision() {
		return division;
	}
	public void setDivision(String division) {
		this.division = division;
	}
	public String getIdno() {
		return idno;
	}
	public void setIdno(String idno) {
		this.idno = idno;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "CustomerVO [custId=" + custId + ", password=" + password + ", name=" + name + ", email=" + email
				+ ", division=" + division + ", idno=" + idno + ", address=" + address + "]";
	}
}
