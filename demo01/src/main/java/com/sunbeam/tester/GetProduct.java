package com.sunbeam.tester;

import static com.sunbeam.utils.HibernateUtil.getFactory;

import java.util.Scanner;

import org.hibernate.SessionFactory;

import com.sunbeam.dao.ProductDao;
import com.sunbeam.dao.ProductDaoImpl;



public class GetProduct {
	public static void main(String[] args) {
		try (SessionFactory sf = getFactory(); 
				Scanner sc = new Scanner(System.in)) {
			// create dao instance
			ProductDao dao = new ProductDaoImpl();
			System.out.println("Enter user id");
			System.out.println(dao.getProductDetailsById(sc.nextLong()));
		} // JVM : sc.close() , sf.close() -> DBCP will be cleaned up !
		catch (Exception e) {
			e.printStackTrace();
		}
	}

}
