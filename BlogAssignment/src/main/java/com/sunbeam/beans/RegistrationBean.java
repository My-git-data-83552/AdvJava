package com.sunbeam.beans;

import com.sunbeam.daos.UserDao;
import com.sunbeam.pojo.User;

public class RegistrationBean {
	private String name;
	private String email;
	private String password;
	private String phone;
	private User user;
	private int count=0;

	public int register() {
		user = new User(name, email, password, phone);
		System.out.println(user.getName());
		try (UserDao userDao = new UserDao()) {
			count = userDao.save(user);
			return count;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}
	
	
}
