package com.pwk.entity;

import java.sql.Timestamp;

/**
 * Created by wenkai.peng on 2014/6/22.
 */
public class Comment {
    private int id;
    private int microId;
    private String content;
    private String nickName;
    private Timestamp createDate;
    private String position;
    private String status;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getMicroId() {
        return microId;
    }

    public void setMicroId(int microId) {
        this.microId = microId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public Timestamp getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Timestamp createDate) {
        this.createDate = createDate;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
