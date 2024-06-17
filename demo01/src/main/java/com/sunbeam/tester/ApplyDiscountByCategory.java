package com.sunbeam.tester;

import org.hibernate.SessionFactory;

import com.sunbeam.dao.ProductDao;
import com.sunbeam.dao.ProductDaoImpl;
import com.sunbeam.pojo.Category;

import static com.sunbeam.utils.HibernateUtil.getFactory;

import java.util.Scanner;

public class ApplyDiscountByCategory {
	public static void main(String[] args) {
		try (SessionFactory sf = getFactory(); Scanner sc = new Scanner(System.in);) {
			ProductDao dao =new ProductDaoImpl();
			System.out.println("Enter the Discount ammount and the Category:-");
		System.out.println(dao.updatePriceOnDiscountByCategory(sc.nextDouble(), Category.valueOf(sc.next().toUpperCase())));
		} catch (Exception e) {
			e.printStackTrace();

		}
	}
}
