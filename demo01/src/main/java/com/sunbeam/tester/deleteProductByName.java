package com.sunbeam.tester;

import static com.sunbeam.utils.HibernateUtil.getFactory;

import java.util.Scanner;

import org.hibernate.SessionFactory;

import com.sunbeam.dao.ProductDao;
import com.sunbeam.dao.ProductDaoImpl;

public class deleteProductByName {

	public static void main(String[] args) {
		try (SessionFactory sf = getFactory(); Scanner sc = new Scanner(System.in)) {
			ProductDao dao = new ProductDaoImpl();
			System.out.println("Enter the name of product to delete - ");
			System.out.println(dao.deleteProduct(sc.next()));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
