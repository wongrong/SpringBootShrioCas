package org.springboot.sample.dao;

import org.springboot.sample.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface IUserDao extends JpaRepository<User, Integer> {

	public User findByUsername(String username);

}
