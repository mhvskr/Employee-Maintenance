package com.cg.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Grade_Master")
public class GradeMasterBean {

	@Id
	@Column(name="Grade_Code")
	private String gradeCode;
	
	@Column(name="Description")
	private String description;
	
	@Column(name="Min_Salary")
	private int minSalary;
	
	@Column(name="Max_Salary")
	private int maxSalary;
	
	
	public String getHradeCode() {
		return gradeCode;
	}
	public void setHradeCode(String hradeCode) {
		this.gradeCode = hradeCode;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getMinSalary() {
		return minSalary;
	}
	public void setMinSalary(int minSalary) {
		this.minSalary = minSalary;
	}
	public int getMaxSalary() {
		return maxSalary;
	}
	public void setMaxSalary(int maxSalary) {
		this.maxSalary = maxSalary;
	}
	
}
