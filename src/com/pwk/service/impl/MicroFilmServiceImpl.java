package com.pwk.service.impl;

import com.pwk.entity.MicroFilm;
import com.pwk.service.MicroFilmService;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by wenkai.peng on 2014/6/10.
 */
@Transactional
public class MicroFilmServiceImpl implements MicroFilmService {
    @Resource
    private SessionFactory sessionFactory;

    @Override
    public void add(MicroFilm microFilm) {
        sessionFactory.getCurrentSession().save(microFilm);
    }

    @Override
    public void delete(int id) {
        sessionFactory.getCurrentSession().delete(this.getById(id));
    }

    @Override
    public void update(MicroFilm microFilm) {
        sessionFactory.getCurrentSession().update(microFilm);
    }

    @Override
    public MicroFilm getById(int id) {
        return (MicroFilm)sessionFactory.getCurrentSession().get(MicroFilm.class,id);
    }

    @Override
    public List<MicroFilm> getList(int page, int size) {
        if(page==0||size==0){
            page = 1;
            size = 10;
        }
        Query query = sessionFactory.getCurrentSession().createQuery("from MicroFilm mf order by mf.position asc");
        if (page != 0 && size != 0) {
            query.setFirstResult(size * (page - 1));
            query.setMaxResults(size);
        }
        return query.list();
    }

    @Override
    public int getTotal() {
        return sessionFactory.getCurrentSession().createQuery("from MicroFilm").list().size();
    }
}
