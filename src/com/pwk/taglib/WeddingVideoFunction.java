package com.pwk.taglib;

import com.pwk.entity.WeddingVideo;
import com.pwk.tools.Engine;

import java.util.List;

/**
 * Created by wenkai.peng on 2014/6/14.
 */
public class WeddingVideoFunction {
    public static WeddingVideo getById(int id){
        return Engine.weddingVideoService.getById(id);
    }
    public static List<WeddingVideo> getByList(int page,int size){
        return Engine.weddingVideoService.getByList(page,size);
    }
    public static List<WeddingVideo> getByType(String type,int page,int size){
        return Engine.weddingVideoService.getByType(type,page,size);
    }
    public static int getTotal(){
        return Engine.weddingVideoService.getTotal();
    }

    public static int getTotalByType(String type){
        return Engine.weddingVideoService.getTotalByType(type);
    }
}
