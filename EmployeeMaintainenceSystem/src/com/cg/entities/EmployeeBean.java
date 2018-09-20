package com.cg.entities;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;


@Entity
@Table(name = "Employee")
public class EmployeeBean {
	
	@Override
	public String toString() {
		return "EmployeeBean [employeeId=" + employeeId + ", firstName="
				+ firstName + ", lastName=" + lastName + ", dateOfBirth="
				+ dateOfBirth + ", dateOfJoining=" + dateOfJoining
				+ ", departmentId=" + departmentId + ", grade=" + grade
				+ ", designation=" + designation + ", salary=" + salary
				+ ", gender=" + gender + ", maritalStatus=" + maritalStatus
				+ ", address=" + address + ", phoneNumber=" + phoneNumber
				+ ", managerId=" + managerId + ", remainingLeaves="
				+ remainingLeaves + "]";
	}

	@Id
	@NotEmpty(message="Please Enter Employee ID")
	@Pattern(regexp = "^[1-9]{1}[0-9]{5}$", message = "Employee ID must contain only NUMBERS & ShouldNot START with 0")
	@Column(name = "Emp_ID")
	private String employeeId;

	@Pattern(regexp = "^[a-zA-Z]+$", message = "EmployeeFirstName must contain only alphabets")
	@NotEmpty(message="Please Enter First Name")
	@Column(name = "Emp_First_Name")
	private String firstName;
	
	@Pattern(regexp = "^[a-zA-Z]+$", message = "EmployeeLastName must contain only alphabets")
	@NotEmpty(message="Please Enter Last Name")
	@Column(name = "Emp_Last_Name")
	private String lastName;

	@Column(name = "Emp_Date_of_Birth")
	@NotNull(message="Should not be empty")	
	private Date dateOfBirth;
	
	@NotNull(message="Should not be empty")
	@Column(name = "Emp_Date_of_Joining")
	private Date dateOfJoining;
	
	@Column(name = "Emp_Dept_ID")
	private Integer departmentId;
	
	public String getManagerId() {
		return managerId;
	}

	public void setManagerId(String managerId) {
		this.managerId = managerId;
	}

	public Integer getRemainingLeaves() {
		return remainingLeaves;
	}

	public void setRemainingLeaves(Integer remainingLeaves) {
		this.remainingLeaves = remainingLeaves;
	}

	public void setDepartmentId(Integer departmentId) {
		this.departmentId = departmentId;
	}

	public void setSalary(Integer salary) {
		this.salary = salary;
	}

	@NotEmpty(message="Please Enter Grade")
	@Column(name = "Emp_Grade")
	private String grade;
	
	@Column(name = "Emp_Designation")
	private String designation;
	
	@NotNull
	@Column(name = "Emp_Basic")
	private Integer salary;
	
	@NotEmpty(message="Please Select Gender")
	@Column(name = "Emp_Gender")
	private String gender;
	
	@NotEmpty(message="Please Enter Marital Status")
	@Column(name = "Emp_Marital_Status")
	private String maritalStatus;
	
	@Column(name = "Emp_Home_Address")
	private String address;
	
	@Column(name = "Emp_Contact_Num")
	private String phoneNumber;
	
	@Column(name="MGR_ID")
	private String managerId;
	
	@Column(name="remaining_leaves")
	private Integer remainingLeaves;

	public String getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(String employeeId) {
		this.employeeId = employeeId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public Date getDateOfJoining() {
		return dateOfJoining;
	}

	public void setDateOfJoining(Date dateOfJoining) {
		this.dateOfJoining = dateOfJoining;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getMaritalStatus() {
		return maritalStatus;
	}

	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public Integer getDepartmentId() {
		return departmentId;
	}

	public Integer getSalary() {
		return salary;
	}
	
	}