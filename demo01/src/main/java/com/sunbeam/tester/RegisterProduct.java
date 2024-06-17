package com.sunbeam.tester;

import org.hibernate.SessionFactory;

import com.sunbeam.dao.ProductDao;
import com.sunbeam.dao.ProductDaoImpl;
import com.sunbeam.pojo.Category;
import com.sunbeam.pojo.Products;

import java.time.LocalDate;
import java.util.Scanner;
import static com.sunbeam.utils.HibernateUtil.getFactory;
public class RegisterProduct {

	public static void main(String[] args) {
		try (SessionFactory sf = getFactory();
				Scanner sc=new Scanner(System.in)
				) {
			//create dao instance
			ProductDao dao=new ProductDaoImpl();
			System.out.println("Enter product details -, String category, \r\n"
					+ "			String productName, double price, int avaiableQuantity");
				
			Products newUser=new Products(Category.valueOf(sc.next().toUpperCase()), sc.next(), sc.nextDouble(),sc.nextInt()); 
			
			System.out.println(dao.addProduct(newUser));
		} //JVM : sc.close() , sf.close() -> DBCP will be cleaned up !
		catch (Exception e) {
			e.printStackTrace();
		}

	}

}
