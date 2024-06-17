package com.sunbeam.beans;

import java.util.List;

import com.sunbeam.daos.CategoryDao;
import com.sunbeam.pojo.Category;

public class CategoryBean {
	private int id;
	private String title;
	private String description;
	private List<Category> list;
	private int count;

	public void showCategories() {
		try (CategoryDao categoryDao = new CategoryDao()) {
			list = categoryDao.findAll();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void createCategory() {
		Category category = new Category(0, title, description);
		try (CategoryDao categoryDao = new CategoryDao()) {
			count = categoryDao.save(category);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public List<Category> getList() {
		return list;
	}

	public void setList(List<Category> list) {
		this.list = list;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}
}
