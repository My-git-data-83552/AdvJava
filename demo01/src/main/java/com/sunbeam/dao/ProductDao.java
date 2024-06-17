package com.sunbeam.dao;

import java.util.List;

import com.sunbeam.pojo.Category;
import com.sunbeam.pojo.Products;



public interface ProductDao {
	String addProduct(Products product);
	Products getProductDetailsById(Long productId);
	List<Products> getProductPriceRangeBYCategory(double minPrice,double maxPrice,Category category);
	int updatePriceOnDiscountByCategory(double discount, Category cat);
	String purchaseProduct(Long id, int qty);
	String deleteProduct(String name);
}
