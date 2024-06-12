package com.sunbeam.beans;

import com.sunbeam.daos.CandidateDao;
import com.sunbeam.daos.CandidateDaoImpl;
import com.sunbeam.daos.UserDao;
import com.sunbeam.daos.UserDaoImpl;

public class VoteBean {
	private int id;
	private int count;
	private int userId;
	private int userStatus;

	public void vote() {
		try (CandidateDao candDao = new CandidateDaoImpl()) {
			count = candDao.incrementVote(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void updateStatus() {
		try (UserDao userDao = new UserDaoImpl()) {
			userStatus = userDao.updateStatus(userId, true);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getUserStatus() {
		return userStatus;
	}

	public void setUserStatus(int userStatus) {
		this.userStatus = userStatus;
	}
}
