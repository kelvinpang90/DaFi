package com.pwk.service;

import com.pwk.entity.Comment;

import java.util.List;

/**
 * Created by wenkai.peng on 2014/6/22.
 */
public interface CommentService {
    public void add(Comment comment);
    public void update(Comment comment);
    public void delete(int id);
    public Comment getById(int id);
    public List<Comment> getByList(int page,int size);
    public List<Comment> getByMicroId(int id);
    public int getTotal();
    public int getTotalByMicroId(int id);
}
