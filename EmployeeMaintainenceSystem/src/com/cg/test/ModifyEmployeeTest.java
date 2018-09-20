package com.cg.test;

import static org.junit.Assert.*;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.cg.dao.IEmployeeDao;
import com.cg.entities.EmployeeBean;
import com.cg.exception.EmployeeException;

public class ModifyEmployeeTest {
	@Autowired
	EmployeeBean bean;
	
	@Autowired
	IEmployeeDao employeeDao;
	
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception {

		
		bean.setSalary(100000);
		bean.setPhoneNumber("8714333996");
		String date="28-08-1996";
		DateTimeFormatter dateFormat = DateTimeFormatter
				.ofPattern("dd-MM-yyyy");

			LocalDate dob=LocalDate.parse(date, dateFormat);
		
		bean.setDateOfBirth(java.sql.Date.valueOf(dob));
		String dateofJoining="20-09-2017";
		DateTimeFormatter dateFormatter = DateTimeFormatter
				.ofPattern("dd-MM-yyyy");

			LocalDate doj=LocalDate.parse(dateofJoining, dateFormatter);
		bean.setDateOfJoining(java.sql.Date.valueOf(doj));
		bean.setDepartmentId(100);
		bean.setDesignation("Analyst");
		bean.setGrade("M7");
		bean.setEmployeeId("154501");
		bean.setFirstName("Santhosh");
		bean.setGender("M");
		bean.setAddress("Bangalore");
		bean.setLastName("Kumar");
		bean.setManagerId("154832");
		bean.setMaritalStatus("U");
		
		
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void test() throws EmployeeException {
		try{
			Boolean check= employeeDao.modifyEmp(bean);
			assertTrue(check);
		}
		catch(EmployeeException e){
			throw new EmployeeException("null exception");
			
		}

		
	}

}
