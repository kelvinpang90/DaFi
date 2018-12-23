package com.pwk.taglib;

import com.pwk.entity.MicroFilm;
import com.pwk.tools.Engine;

import java.util.List;

/**
 * Created by wenkai.peng on 2014/6/14.
 */
public class MicroFilmFunction {
    public static MicroFilm getById(int id){
        return Engine.microFilmService.getById(id);
    }
    public static List<MicroFilm> getByList(int page,int size){
        return Engine.microFilmService.getList(page,size);
    }
    public static int getTotal(){
        return Engine.microFilmService.getTotal();
    }
}
