package com.rt.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rt.Dao.EmpDao;
import com.rt.Entity.EmpEntity;

@Service
public class EmpService {
	@Autowired
	EmpDao empDao;
	
	public boolean Register(EmpEntity Emp){
		
		return empDao.Register(Emp);
		
	}

	public EmpEntity selectEmployeeById(int id) {
		 return empDao.selectEmployeeById(id);

	}

	public boolean update(EmpEntity Emp) {
		return empDao.update(Emp);
	}
}
