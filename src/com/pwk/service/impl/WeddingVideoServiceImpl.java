package com.pwk.service.impl;

import com.pwk.entity.WeddingVideo;
import com.pwk.service.WeddingVideoService;
import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by wenkai.peng on 2014/6/14.
 */
@Transactional
public class WeddingVideoServiceImpl implements WeddingVideoService{
    @Resource
    private SessionFactory sessionFactory;

    @Override
    public void add(WeddingVideo weddingVideo) {
        sessionFactory.getCurrentSession().save(weddingVideo);
    }

    @Override
    public void update(WeddingVideo weddingVideo) {
        sessionFactory.getCurrentSession().update(weddingVideo);
    }

    @Override
    public void delete(int id) {
        sessionFactory.getCurrentSession().delete(this.getById(id));
    }

    @Override
    public WeddingVideo getById(int id) {
        return (WeddingVideo)sessionFactory.getCurrentSession().get(WeddingVideo.class,id);
    }

    @Override
    public List<WeddingVideo> getByList(int page, int size) {
        if(page==0||size==0){
            page = 1;
            size = 10;
        }
        Query query = sessionFactory.getCurrentSession().createQuery("from WeddingVideo wv order by wv.position asc");
        if (page != 0 && size != 0) {
            query.setFirstResult(size * (page - 1));
            query.setMaxResults(10);
        }
        return query.list();
    }

    @Override
    public List<WeddingVideo> getByType(String type, int page,int size) {
        if(page==0||size==0){
            page = 1;
            size = 8;
        }
        Query query = sessionFactory.getCurrentSession().createQuery("from WeddingVideo mf where mf.type=:type order by mf.position asc");
        query.setParameter("type",type, Hibernate.STRING);
        if (page != 0 && size != 0) {
            query.setFirstResult(size * (page - 1));
            query.setMaxResults(size);
        }
        return query.list();
    }

    @Override
    public int getTotal() {
        return sessionFactory.getCurrentSession().createQuery("from WeddingVideo").list().size();
    }

    @Override
    public int getTotalByType(String type) {
        Query query = sessionFactory.getCurrentSession().createQuery("from WeddingVideo wv where wv.type=:type");
        query.setParameter("type",type, Hibernate.STRING);
        return query.list().size();
    }
}
