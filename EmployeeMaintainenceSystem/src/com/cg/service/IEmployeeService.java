package com.cg.service;

import java.util.ArrayList;
import java.util.List;

import com.cg.entities.EmployeeBean;
import com.cg.entities.LeaveBean;
import com.cg.entities.UserMasterBean;
import com.cg.exception.EmployeeException;



public interface IEmployeeService {

	public void addEmployee(EmployeeBean employeebean)
			throws EmployeeException;

	public List<EmployeeBean> displayAll() throws EmployeeException;

	public EmployeeBean getDetailsById(String employeeId)
			throws EmployeeException;

	public UserMasterBean isValid(String user, String pass)
			throws EmployeeException;
	
	public List<String> getGrades() throws EmployeeException;

	public boolean modifyEmp(EmployeeBean bean) throws EmployeeException;

	public List<EmployeeBean> search(EmployeeBean bean)
			throws EmployeeException;
	
	public String getDeptName(int deptId) throws EmployeeException;
	
	public boolean validDetails(EmployeeBean bean) throws EmployeeException;

	public EmployeeBean getDetailsByName(String userName);

	public LeaveBean addLeaveDetails(EmployeeBean employee, LeaveBean bean) throws EmployeeException;

	public ArrayList<LeaveBean> fetchLeaveDetails(String employeeid);

	public void approveLeave(String employeeId);

	public void rejectLeave(String employeeId);

	public void generateLogin(EmployeeBean employee);
	
	public void approveLeaveAutomatically() throws EmployeeException;




}
