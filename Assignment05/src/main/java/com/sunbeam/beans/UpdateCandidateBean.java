package com.sunbeam.beans;

import com.sunbeam.daos.CandidateDao;
import com.sunbeam.daos.CandidateDaoImpl;
import com.sunbeam.pojos.Candidate;

public class UpdateCandidateBean {
	private int id;
	private String name;
	private String party;
	private int votes;
	private int count;

	public void updateCandidate() {
		Candidate candidate = new Candidate(id, name, party, votes);
		try (CandidateDao candidateDao = new CandidateDaoImpl()) {
			count = candidateDao.update(candidate);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
