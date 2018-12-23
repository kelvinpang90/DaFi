package com.pwk.tools;

import com.pwk.service.AdminService;
import com.pwk.service.CommentService;
import com.pwk.service.MicroFilmService;
import com.pwk.service.WeddingVideoService;

public class Engine {
    public static AdminService adminService;
    public static MicroFilmService microFilmService;
    public static WeddingVideoService weddingVideoService;
    public static CommentService commentService;

    public void setAdminService(AdminService adminService) {
        Engine.adminService = adminService;
    }

    public void setMicroFilmService(MicroFilmService microFilmService) {
        Engine.microFilmService = microFilmService;
    }

    public void setWeddingVideoService(WeddingVideoService weddingVideoService) {
        Engine.weddingVideoService = weddingVideoService;
    }

    public void setCommentService(CommentService commentService) {
        Engine.commentService = commentService;
    }
}
