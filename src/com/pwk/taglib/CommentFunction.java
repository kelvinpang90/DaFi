package com.pwk.taglib;

import com.pwk.entity.Comment;
import com.pwk.tools.Engine;

import java.util.List;

/**
 * Created by wenkai.peng on 2014/6/22.
 */
public class CommentFunction {
    public static Comment getById(int id){
        return Engine.commentService.getById(id);
    }
    public static List<Comment> getByList(int page,int size){
        return Engine.commentService.getByList(page,size);
    }
    public static List<Comment> getByMicroId(int microId){
        return Engine.commentService.getByMicroId(microId);
    }
    public static int getTotal(){
        return Engine.commentService.getTotal();
    }
    public static int getTotalByMicroId(int id){
        return Engine.commentService.getTotalByMicroId(id);
    }
}
