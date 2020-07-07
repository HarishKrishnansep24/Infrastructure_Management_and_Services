package com.harish.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import com.harish.model.User;

public interface UserRepository extends JpaRepository<User, Integer>
{
	User findByUsername(String username);
	
	/*@Query("select mailid l,mailid u from Login l, User u where l.mailid=?")
	User findByMailid();
	*/
	@Transactional
	@Modifying
	@Query("update User set password=?1 where username=?2")
	void changepass(String newpass,String uname);
	
	@Transactional
	@Modifying
	@Query("update User set staffid=?1,name=?2,dept=?3,mnumber=?4 where username=?5")
	void editprofile(String staffid,String name,String dept,Long mnumber,String username);
}
