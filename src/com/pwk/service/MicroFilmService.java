package com.pwk.service;

import com.pwk.entity.MicroFilm;

import java.util.List;

/**
 * Created by wenkai.peng on 2014/6/10.
 */
public interface MicroFilmService {
    public void add(MicroFilm microFilm);
    public void delete(int id);
    public void update(MicroFilm microFilm);
    public MicroFilm getById(int id);
    public List<MicroFilm> getList(int page,int size);
    public int getTotal();
}
