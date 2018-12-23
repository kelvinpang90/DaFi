package com.pwk.service;

import com.pwk.entity.WeddingVideo;

import java.util.List;

/**
 * Created by wenkai.peng on 2014/6/14.
 */
public interface WeddingVideoService {
    public void add(WeddingVideo weddingVideo);
    public void update(WeddingVideo weddingVideo);
    public void delete(int id);
    public WeddingVideo getById(int id);
    public List<WeddingVideo> getByList(int page,int size);
    public List<WeddingVideo> getByType(String type,int page,int size);
    public int getTotal();
    public int getTotalByType(String type);
}
