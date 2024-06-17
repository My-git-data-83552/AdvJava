package com.sunbeam.tester;

import static com.sunbeam.utils.HibernateUtil.getFactory;

import java.util.Scanner;

import org.hibernate.SessionFactory;

import com.sunbeam.dao.ProductDao;
import com.sunbeam.dao.ProductDaoImpl;
import com.sunbeam.pojo.Category;

public class GetProductByPriceAndCategory {
	public static void main(String[] args) {
		try (SessionFactory sf=getFactory();
				Scanner sc=new Scanner(System.in)) {
			ProductDao dao=new ProductDaoImpl();
			System.out.println("Enter the Min Price Range and Max price range and Category:-");
			dao.getProductPriceRangeBYCategory(sc.nextDouble(),sc.nextDouble(),Category.valueOf(sc.next().toUpperCase())).forEach(p->System.out.println(p));
		} catch (Exception e) {
e.printStackTrace();
		}
	}
}
