package com.springapp.mvc.commmon;

/**
 * Created by ruiqizhang on 11/13/16.
 */
//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

import java.io.Serializable;
import java.util.List;

public class PageIterator<T> implements Serializable {
    private static final long serialVersionUID = 1100034894592704355L;
    private int page;
    private int pageSize;
    private int totalPages;
    private int totalCount;
    private String params;
    private List<T> data;

    public PageIterator() {
    }

    public static <T> PageIterator<T> createInstance(int page, int pageSize, int totalCount) {
        PageIterator pageBean = new PageIterator();
        pageBean.setTotalCount(totalCount);
        pageBean.setTotalPages((totalCount + pageSize - 1) / pageSize);
        pageBean.setPageSize(pageSize);
        if (page > pageBean.totalPages) {
            page = pageBean.getTotalPages();
        }

        if (page <= 0) {
            pageBean.setPage(1);
        } else {
            pageBean.setPage(page);
        }

        return pageBean;
    }

    public static <T> PageIterator<T> createInstance(int page, int pageSize, List<T> data) {
        PageIterator pageBean = new PageIterator();
        if (data != null && data.size() > 0) {
            pageBean.setTotalCount(data.size());
            pageBean.setTotalPages((data.size() + pageSize - 1) / pageSize);
            pageBean.setData(data);
            pageBean.setPageSize(pageSize);
            if (page <= 0) {
                pageBean.setPage(1);
            } else if (page > pageBean.totalPages) {
                pageBean.setPage(pageBean.getTotalPages());
            } else {
                pageBean.setPage(page);
            }
        } else {
            pageBean.setData(data);
        }

        return pageBean;
    }

    public int getPage() {
        return this.page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getPageSize() {
        return this.pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getTotalPages() {
        return this.totalPages;
    }

    public void setTotalPages(int totalPages) {
        this.totalPages = totalPages;
    }

    public int getTotalCount() {
        return this.totalCount;
    }

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }

    public String getParams() {
        return this.params;
    }

    public void setParams(String params) {
        this.params = params;
    }

    public List<T> getData() {
        return this.data;
    }

    public void setData(List<T> data) {
        this.data = data;
    }

    public List<T> getPageList(int pageNum) {
        if (this.data == null) {
            return null;
        } else {
            List pageList;
            if (pageNum <= 0) {
                this.setPage(1);
                if (this.totalCount > this.pageSize) {
                    pageList = this.data.subList(0, this.pageSize);
                } else {
                    pageList = this.data.subList(0, this.totalCount);
                }
            } else if (pageNum * this.pageSize <= this.totalCount) {
                this.setPage(pageNum);
                pageList = this.data.subList((pageNum - 1) * this.pageSize, pageNum * this.pageSize);
            } else {
                this.setPage(this.totalPages);
                pageList = this.data.subList((this.totalPages - 1) * this.pageSize, this.totalCount);
            }

            return pageList;
        }
    }
}

