package com.pwk.action;

import com.pwk.action.base.BaseAction;
import com.pwk.entity.WeddingVideo;
import com.pwk.service.WeddingVideoService;
import com.pwk.tools.Message;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.annotation.Resource;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by wenkai.peng on 2014/6/14.
 */
public class WeddingVideoAction extends BaseAction {
    private static final Logger LOG = LogManager.getLogger(WeddingVideoAction.class.getName());

    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    @Resource
    private WeddingVideoService weddingVideoService;

    public String add(){
        try {
            String title = getRequest().getParameter("title");
            String type = getRequest().getParameter("type");
            String pic = getRequest().getParameter("pic");
            String video = getRequest().getParameter("video");
            String position = getRequest().getParameter("position");
            WeddingVideo weddingVideo = new WeddingVideo();
            weddingVideo.setTitle(title);
            weddingVideo.setType(type);
            weddingVideo.setPic(pic);
            weddingVideo.setVideo(video);
            weddingVideo.setPosition(Integer.valueOf(position));
            weddingVideo.setCreateTime(Timestamp.valueOf(format.format(new Date())));
            weddingVideoService.add(weddingVideo);
            Message.returnMessage("婚礼视频添加成功！", "../wedding/weddingList.jsp", "ok", getResponse());
            LOG.info("添加婚礼视频成功！");
        }catch (Exception e){
            LOG.error("添加婚礼视频异常！");
            e.printStackTrace();
        }
        return null;
    }

    public String update(){
        try {
            String id = getRequest().getParameter("id");
            String title = getRequest().getParameter("title");
            String type = getRequest().getParameter("type");
            String pic = getRequest().getParameter("pic");
            String video = getRequest().getParameter("video");
            String position = getRequest().getParameter("position");
            WeddingVideo weddingVideo = weddingVideoService.getById(Integer.valueOf(id));
            weddingVideo.setTitle(title);
            weddingVideo.setType(type);
            weddingVideo.setPic(pic);
            weddingVideo.setVideo(video);
            weddingVideo.setPosition(Integer.valueOf(position));
            weddingVideoService.update(weddingVideo);
            Message.returnMessage("婚礼视频更新成功！", "../wedding/weddingList.jsp", "ok", getResponse());
            LOG.info("婚礼视频更新成功");
        }catch (Exception e){
            LOG.info("婚礼视频更新异常！");
            e.printStackTrace();
        }
        return null;
    }

    public String delete(){
        try {
            String id = getRequest().getParameter("id");
            weddingVideoService.delete(Integer.valueOf(id));
            LOG.info("删除婚礼视频成功！");
            getResponse().sendRedirect("../back/wedding/weddingList.jsp");
        }catch (Exception e){
            LOG.error("删除婚礼视频异常！");
            e.printStackTrace();
        }
        return null;
    }
}
