package com.sunbeam.beans;

import java.util.List;

import com.sunbeam.daos.BlogDao;
import com.sunbeam.pojo.Blog;

public class allBlogBean {
	private int id;
	private String title;
	private String contents;
	private int userId;
	private int categoryId;
	private List<Blog> list;

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

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public List<Blog> getList() {
		return list;
	}

	public void setList(List<Blog> list) {
		this.list = list;
	}

	public void allBlogList() {
		try (BlogDao blogDao = new BlogDao()) {
			list = blogDao.findAll();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void myBlogList() {
		try (BlogDao blogDao = new BlogDao()) {
			list = blogDao.findByUserId(userId);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
