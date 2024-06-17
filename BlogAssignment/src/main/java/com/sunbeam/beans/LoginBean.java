package com.sunbeam.beans;

import com.sunbeam.daos.UserDao;
import com.sunbeam.pojo.User;

public class LoginBean {

	private String email;
	private String password;
	private User user;

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

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public void login() {
		try (UserDao userDao = new UserDao()) {
			user = userDao.findByEmailAndPassword(email, password);
//			System.out.println(user.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
