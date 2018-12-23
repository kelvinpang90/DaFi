package com.pwk.action;

import com.pwk.action.base.BaseAction;
import com.pwk.entity.Comment;
import com.pwk.service.CommentService;
import com.pwk.tools.Message;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.annotation.Resource;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by wenkai.peng on 2014/6/22.
 */
public class CommentAction extends BaseAction {

    private static final Logger LOG = LogManager.getLogger(CommentAction.class.getName());

    private SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    @Resource
    private CommentService commentService;

    public String add(){
        try {
            String content = getRequest().getParameter("content");
            String nickName = getRequest().getParameter("nickName");
            String microId = getRequest().getParameter("microId");
            Comment comment = new Comment();
            comment.setContent(content);
            comment.setNickName(nickName);
            comment.setCreateDate(Timestamp.valueOf(format.format(new Date())));
            comment.setMicroId(Integer.valueOf(microId));
            comment.setStatus("1");
            comment.setPosition(null);
            commentService.add(comment);
            getResponse().sendRedirect("/video_"+comment.getMicroId()+".html?comment=ok");
            LOG.info("添加评论成功！nickName:"+nickName+"   content:"+content);
        }catch (Exception e){
            LOG.error("添加评论异常！");
            e.printStackTrace();
        }
        return null;
    }

    public String delete(){
        try {
            String id = getRequest().getParameter("id");
            commentService.delete(Integer.valueOf(id));
            LOG.info("删除评论成功！ id:"+id);
            getResponse().sendRedirect("../back/comment/commentList.jsp");
        }catch (Exception e){
            LOG.error("删除评论失败！");
        }
        return null;
    }
}
