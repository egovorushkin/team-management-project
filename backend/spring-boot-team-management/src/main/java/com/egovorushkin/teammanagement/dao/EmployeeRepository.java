package com.egovorushkin.teammanagement.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

import com.egovorushkin.teammanagement.entity.Employee;

@CrossOrigin("http://localhost:4200")
public interface EmployeeRepository extends JpaRepository<Employee, Long> {

}
