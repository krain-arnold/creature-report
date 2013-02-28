package com.coppernickel.corp.webapp;

import java.lang.reflect.Field;

public class Reports {

	//Basic Details
	private int ReportID;
	private String reportType;
	private String status;
	private int studentID;
	private String date;
	private String teachers;
	private String room;
	private String dailyActivity;
	private String neededItems;
	private String attitudes;
	private String sleepMessages;
	private int percentageBreakfastComplete;
	private int percentageLunchComplete;
	private int percentageSnackComplete;
	private String pottyEvents;
	
	
	public String getPottyEvents() {
		return pottyEvents;
	}


	public void setPottyEvents(String pottyEvents) {
		this.pottyEvents = pottyEvents;
	}


	public int getReportID() {
		return ReportID;
	}


	public void setReportID(int reportID) {
		ReportID = reportID;
	}


	public String getReportType() {
		return reportType;
	}


	public void setReportType(String reportType) {
		this.reportType = reportType;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public int getStudentID() {
		return studentID;
	}


	public void setStudentID(int studentID) {
		this.studentID = studentID;
	}


	public String getDate() {
		return date;
	}


	public void setDate(String date) {
		this.date = date;
	}


	public String getTeachers() {
		return teachers;
	}


	public void setTeachers(String teachers) {
		this.teachers = teachers;
	}


	public String getRoom() {
		return room;
	}


	public void setRoom(String room) {
		this.room = room;
	}


	public String getDailyActivity() {
		return dailyActivity;
	}


	public void setDailyActivity(String dailyActivity) {
		this.dailyActivity = dailyActivity;
	}


	public String getNeededItems() {
		return neededItems;
	}


	public void setNeededItems(String neededItems) {
		this.neededItems = neededItems;
	}


	public String getAttitudes() {
		return attitudes;
	}


	public void setAttitudes(String attitudes) {
		this.attitudes = attitudes;
	}


	public String getSleepMessages() {
		return sleepMessages;
	}


	public void setSleepMessages(String sleepMessages) {
		this.sleepMessages = sleepMessages;
	}


	public int getPercentageBreakfastComplete() {
		return percentageBreakfastComplete;
	}


	public void setPercentageBreakfastComplete(int percentageBreakfastComplete) {
		this.percentageBreakfastComplete = percentageBreakfastComplete;
	}


	public int getPercentageLunchComplete() {
		return percentageLunchComplete;
	}


	public void setPercentageLunchComplete(int percentageLunchComplete) {
		this.percentageLunchComplete = percentageLunchComplete;
	}


	public int getPercentageSnackComplete() {
		return percentageSnackComplete;
	}


	public void setPercentageSnackComplete(int percentageSnackComplete) {
		this.percentageSnackComplete = percentageSnackComplete;
	}


	@Override
	public String toString() {
		StringBuilder result = new StringBuilder();
		String newLine = System.getProperty("line.separator");
		result.append(this.getClass().getName());
		result.append(" Object {");
		result.append(newLine);
		// determine fields declared in this class only (no fields of
		// superclass)
		Field[] fields = this.getClass().getDeclaredFields();
		// print field names paired with their values
		for (Field field : fields) {
			result.append(" ");
			try {
				result.append(field.getName());
				result.append(": ");
				// requires access to private field:
				result.append(field.get(this));
			} catch (IllegalAccessException ex) {
				System.out.println(ex);
			}
			result.append(newLine);
		}
		result.append("}");
		return result.toString();
	}
	
	
	
	
	}