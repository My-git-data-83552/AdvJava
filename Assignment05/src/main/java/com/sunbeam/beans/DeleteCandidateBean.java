package com.sunbeam.beans;

import com.sunbeam.daos.CandidateDao;
import com.sunbeam.daos.CandidateDaoImpl;

public class DeleteCandidateBean {
	private int id;
	private int count;

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
	public DeleteCandidateBean() {
	}

	public void deleteCandidate() {
		try (CandidateDao candidateDao = new CandidateDaoImpl()) {
			count = candidateDao.deleteById(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
