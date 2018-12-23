package com.pwk.service.impl;

import com.pwk.entity.Comment;
import com.pwk.service.CommentService;
import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by wenkai.peng on 2014/6/22.
 */
@Transactional
public class CommentServiceImpl implements CommentService {
    @Resource
    private SessionFactory sessionFactory;
    @Override
    public void add(Comment comment) {
        sessionFactory.getCurrentSession().save(comment);
    }

    @Override
    public void update(Comment comment) {
        sessionFactory.getCurrentSession().update(comment);
    }

    @Override
    public void delete(int id) {
        sessionFactory.getCurrentSession().delete(this.getById(id));
    }

    @Override
    public Comment getById(int id) {
        return (Comment)sessionFactory.getCurrentSession().get(Comment.class,id);
    }

    @Override
    public List<Comment> getByList(int page, int size) {
        if(page==0||size==0){
            page = 1;
            size = 10;
        }
        Query query = sessionFactory.getCurrentSession().createQuery("from Comment c order by c.createDate desc");
        if (page != 0 && size != 0) {
            query.setFirstResult(size * (page - 1));
            query.setMaxResults(size);
        }
        return query.list();
    }

    @Override
    public List<Comment> getByMicroId(int id) {
        Query query = sessionFactory.getCurrentSession().createQuery("from Comment c where c.microId=:id order by c.createDate desc");
        query.setParameter("id",id, Hibernate.INTEGER);
        return query.list();
    }

    @Override
    public int getTotal() {
        return sessionFactory.getCurrentSession().createQuery("from Comment c where c.status=1").list().size();
    }

    @Override
    public int getTotalByMicroId(int id) {
        return sessionFactory.getCurrentSession().createQuery("from Comment c where c.status=1 and c.microId="+id).list().size();
    }
}
