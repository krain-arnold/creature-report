package com.coppernickel.corp.domain;
import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.GeneratedValue;

@Entity
@Table(name="cr_student")
public class Student implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	private int stu_id;
	
	@Basic
	private String stu_fname;
	
	@Basic
	private String stu_lname;
	
	@Basic
	private String stu_room;
	
	@Basic
	private String stu_email;

	public int getStu_id() {
		return stu_id;
	}

	public void setStu_id(int stu_id) {
		this.stu_id = stu_id;
	}

	public String getStu_fname() {
		return stu_fname;
	}

	public void setStu_fname(String stu_fname) {
		this.stu_fname = stu_fname;
	}

	public String getStu_lname() {
		return stu_lname;
	}

	public void setStu_lname(String stu_lname) {
		this.stu_lname = stu_lname;
	}

	public String getStu_room() {
		return stu_room;
	}

	public void setStu_room(String stu_room) {
		this.stu_room = stu_room;
	}

	public String getStu_email() {
		return stu_email;
	}

	public void setStu_email(String stu_email) {
		this.stu_email = stu_email;
	}
	public String toString(){
		return "The Student " + stu_fname + " " + stu_lname + " is in " + stu_room + " room" ;
	}
}
