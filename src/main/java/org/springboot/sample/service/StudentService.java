package org.springboot.sample.service;

import org.springboot.sample.dao.IUserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StudentService {
	
    @Autowired
    private IUserDao userDao;

}
