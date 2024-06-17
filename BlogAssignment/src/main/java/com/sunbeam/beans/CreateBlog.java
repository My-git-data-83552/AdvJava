package com.sunbeam.beans;

import com.sunbeam.daos.BlogDao;
import com.sunbeam.pojo.Blog;

public class CreateBlog {
	private String title;
	private String contents;
	private int userId;
	private int categoryId;
	private Blog blog;
	private int count;

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

	public Blog getBlog() {
		return blog;
	}

	public void setBlog(Blog blog) {
		this.blog = blog;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public void createBlog() {
		blog = new Blog(0, title, contents, userId, categoryId, null);
		try (BlogDao blogDao = new BlogDao()) {
			count = blogDao.save(blog);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
