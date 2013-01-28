package com.coppernickel.corp.domain;
import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.GeneratedValue;

@Entity
@Table(name="cr_teacher")
public class Teacher implements Serializable {
	
	@Id
	@GeneratedValue
	private int tea_id;
	
	@Basic
	private String tea_user;
	
	@Basic
	private String tea_pass;
	
	@Basic
	private String tea_role;

	public int getTea_id() {
		return tea_id;
	}

	public void setTea_id(int tea_id) {
		this.tea_id = tea_id;
	}

	public String getTea_user() {
		return tea_user;
	}

	public void setTea_user(String tea_user) {
		this.tea_user = tea_user;
	}

	public String getTea_pass() {
		return tea_pass;
	}

	public void setTea_pass(String tea_pass) {
		this.tea_pass = tea_pass;
	}

	public String getTea_role() {
		return tea_role;
	}

	public void setTea_role(String tea_role) {
		this.tea_role = tea_role;
	}

}
