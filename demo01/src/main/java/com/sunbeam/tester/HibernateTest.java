package com.sunbeam.tester;

import static com.sunbeam.utils.HibernateUtil.getFactory;

import org.hibernate.SessionFactory;

public class HibernateTest {
	public static void main(String[] args) {
		try (SessionFactory sf = getFactory()) {
			System.out.println("Hibernate up n running .....");
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	

}
