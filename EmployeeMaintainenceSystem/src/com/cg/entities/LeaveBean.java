package com.cg.entities;

import java.sql.Date;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="leave_history")
public class LeaveBean {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="leave_id")
	private int leaveId;
	
	@Column(name="emp_id")
	private String employeeId;
	@Column(name="leave_balance")
	private int remainingLeaves;
	@Column(name="status")
	private String leaveStatus;
	@Column(name="date_from")
	private Date startdate;
	@Column(name="noofdays_applied")
	private int duration;
	@Column(name="mgr_id")
	private String managerId;
	@Column(name="curr_date")
	private Date currentDate;
	public Date getCurrentDate() {
		return currentDate;
	}

	public void setCurrentDate(Date date) {
		this.currentDate = date;
	}

	public String getManagerId() {
		return managerId;
	}

	public void setManagerId(String managerId) {
		this.managerId = managerId;
	}

	@Column(name="date_to")
	private Date enddate;
	public Date getEnddate() {
		return enddate;
	}

	public void setEnddate(Date enddate) {
		this.enddate = enddate;
	}

	public int getLeaveId() {
		return leaveId;
	}

	public void setLeaveId(int leaveId) {
		this.leaveId = leaveId;
	}

	public String getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(String employeeId) {
		this.employeeId = employeeId;
	}

	public int getRemainingLeaves() {
		return remainingLeaves;
	}

	public void setRemainingLeaves(int remainingLeaves) {
		this.remainingLeaves = remainingLeaves;
	}

	public String getLeaveStatus() {
		return leaveStatus;
	}

	public void setLeaveStatus(String leaveStatus) {
		this.leaveStatus = leaveStatus;
	}

	public Date getStartdate() {
		return startdate;
	}

	public void setStartdate(Date startdate) {
		this.startdate = startdate;
	}

	public int getDuration() {
		return duration;
	}

	public void setDuration(int duration) {
		this.duration = duration;
	}

	@Override
	public String toString() {
		return "Leave [leaveId=" + leaveId + ", employeeId=" + employeeId
				+ ", remainingLeaves=" + remainingLeaves + ", leaveStatus="
				+ leaveStatus + ", startdate=" + startdate + ", duration="
				+ duration + "]";
	}

	
}
