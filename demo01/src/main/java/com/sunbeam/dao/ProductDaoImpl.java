package com.sunbeam.dao;

import static com.sunbeam.utils.HibernateUtil.getFactory;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.sunbeam.pojo.Category;
import com.sunbeam.pojo.Products;

public class ProductDaoImpl implements ProductDao {

	@Override
	public String addProduct(Products product) {
		String message = "product insertion failed !..";
		Session session = getFactory().getCurrentSession();
		Transaction tx = session.beginTransaction();
		try {
			Serializable productId = session.save(product);
			tx.commit();
			message = "product insert successfully, with id= " + productId;
		} catch (RuntimeException e) {
			tx.rollback();
			throw e;
		}

		return message;
	}

	@Override
	public Products getProductDetailsById(Long productId) {
		Products product = null;
		Session session = getFactory().getCurrentSession();
		Transaction tx = session.beginTransaction();
		try {

			product = session.get(Products.class, productId);
		} catch (RuntimeException e) {
			tx.rollback();
			throw e;
		}
		return product;
	}

	@Override
	public List<Products> getProductPriceRangeBYCategory(double minPrice, double maxPrice, Category category) {
		List<Products> list = null;
		Session session = getFactory().getCurrentSession();
		Transaction tx = session.beginTransaction();
		try {
			String jpql = "select p from Products p where p.category=:categories and p.price between :min and :max";
			list = session.createQuery(jpql, Products.class).setParameter("categories", category)
					.setParameter("min", minPrice).setParameter("max", maxPrice).getResultList();
			tx.commit();
		} catch (RuntimeException e) {
			tx.rollback();
			throw e;
		}
		return list;
	}

	@Override
	public int updatePriceOnDiscountByCategory(double discount, Category cat) {
		// 1. get session from SF (getCurrentSession)
		int count = 0;
		String jpql = "update Products p set p.price=p.price-:disc where p.category=:cat";
		Session session = getFactory().getCurrentSession();
		// 2. Begin a Tx
		Transaction tx = session.beginTransaction();
		try {
			count = session.createQuery(jpql).setParameter("disc", discount).setParameter("cat", cat).executeUpdate();
			tx.commit();
		} catch (RuntimeException e) {
			if (tx != null)
				tx.rollback();
			// re throw the exc to the caller
			throw e;
		}
		return count;
	}

	@Override
	public String purchaseProduct(Long id, int qty) {
		Products product = null;
		String msg = "Failure!";
		// 1. get session from SF (getCurrentSession)
		Session session = getFactory().getCurrentSession();
		// 2. Begin a Tx
		Transaction tx = session.beginTransaction();
		try {
			product = session.get(Products.class, id);
			if (qty < product.getAvailableQuantity()) {
				product.setAvailableQuantity(product.getAvailableQuantity() - qty);
				tx.commit();
				msg = "Success!";
			} else {
				System.out.println("Specified quantity is not available");
			}
		} catch (RuntimeException e) {
			if (tx != null)
				tx.rollback();
			// re throw the exc to the caller
			throw e;
		}
		return msg;
	}

	@Override
	public String deleteProduct(String name) {
		String msg="Failure";
		String jpql="select p from Products p where p.productName=:name";
		// 1. get session from SF (getCurrentSession)
		Session session = getFactory().getCurrentSession();
		// 2. Begin a Tx
		Transaction tx = session.beginTransaction();
		try {
			Products product =session.createQuery(jpql,Products.class).setParameter("name", name).getSingleResult();
			session.delete(product);
			tx.commit();
			msg="Success!";
		} catch (RuntimeException e) {
			if (tx != null)
				tx.rollback();
			// re throw the exc to the caller
			throw e;
		}
		return msg;
	}

}
