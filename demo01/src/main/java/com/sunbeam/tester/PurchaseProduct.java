package com.sunbeam.tester;

import static com.sunbeam.utils.HibernateUtil.getFactory;

import java.util.Scanner;

import org.hibernate.SessionFactory;

import com.sunbeam.dao.ProductDao;
import com.sunbeam.dao.ProductDaoImpl;

public class PurchaseProduct {
	public static void main(String[] args) {
		try (SessionFactory sf = getFactory(); Scanner sc = new Scanner(System.in)) {
			ProductDao dao = new ProductDaoImpl();
			System.out.println("Enter id and quantity to purchase - ");
		System.out.println(dao.purchaseProduct(sc.nextLong(), sc.nextInt())); 
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
