package com.pwk.action;

import com.pwk.action.base.BaseAction;
import com.pwk.entity.MicroFilm;
import com.pwk.service.MicroFilmService;
import com.pwk.tools.Message;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.annotation.Resource;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by wenkai.peng on 2014/6/10.
 */
public class MicroFilmAction extends BaseAction {

    private static final Logger LOG = LogManager.getLogger(AdminAction.class.getName());

    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    @Resource
    private MicroFilmService microFilmService;

    public String add(){
        try {
            String title = getRequest().getParameter("title");
            String description = getRequest().getParameter("description");
            String icon = getRequest().getParameter("icon");
            String pic = getRequest().getParameter("pic");
            String projectTime = getRequest().getParameter("time");
            String video = getRequest().getParameter("video");
            String position = getRequest().getParameter("position");
            MicroFilm microFilm = new MicroFilm();
            microFilm.setTitle(title);
            microFilm.setDescription(description);
            microFilm.setIcon(icon);
            microFilm.setPic(pic);
            microFilm.setProjectTime(projectTime);
            microFilm.setVideo(video);
            microFilm.setCreateTime(Timestamp.valueOf(format.format(new Date())));
            microFilmService.add(microFilm);
            Message.returnMessage("微电影项目添加成功！", "../microFilm/microFilmList.jsp", "ok", getResponse());
            LOG.info("微电影项目添加成功！");
        }catch (Exception e){
            LOG.error("微电影项目添加异常！");
            e.printStackTrace();
        }
        return null;
    }

    public String delete(){
        try {
            String id = getRequest().getParameter("id");
            microFilmService.delete(Integer.valueOf(id));
            LOG.info("微电影项目删除成功！");
            getResponse().sendRedirect("../back/microFilm/microFilmList.jsp");
        }catch (Exception e){
            LOG.error("微电影项目删除异常！");
            e.printStackTrace();
        }
        return null;
    }

    public String update(){
        try {
            String id = getRequest().getParameter("microFilmId");
            MicroFilm microFilm = microFilmService.getById(Integer.valueOf(id));
            String title = getRequest().getParameter("title");
            String description = getRequest().getParameter("description");
            String icon = getRequest().getParameter("icon");
            String pic = getRequest().getParameter("pic");
            String projectTime = getRequest().getParameter("time");
            String video = getRequest().getParameter("video");
            String position = getRequest().getParameter("position");
            microFilm.setTitle(title);
            microFilm.setDescription(description);
            microFilm.setIcon(icon);
            microFilm.setPic(pic);
            microFilm.setProjectTime(projectTime);
            microFilm.setVideo(video);
            microFilmService.update(microFilm);
            Message.returnMessage("微电影项目更新成功！", "../microFilm/microFilmList.jsp", "ok", getResponse());
            LOG.info("微电影项目更新成功！");
        }catch (Exception e){
            LOG.error("微电影项目更新异常！");
            e.printStackTrace();
        }
        return null;
    }
}
