package com.OA.mainsite.entity;

import java.util.Date;

public class Attendance {
    private Integer id;

    private Date morningstarttime;

    private Date morningendtime;

    private Date afterstarttime;

    private Date afterendtime;

    private Integer result;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getMorningstarttime() {
        return morningstarttime;
    }

    public void setMorningstarttime(Date morningstarttime) {
        this.morningstarttime = morningstarttime;
    }

    public Date getMorningendtime() {
        return morningendtime;
    }

    public void setMorningendtime(Date morningendtime) {
        this.morningendtime = morningendtime;
    }

    public Date getAfterstarttime() {
        return afterstarttime;
    }

    public void setAfterstarttime(Date afterstarttime) {
        this.afterstarttime = afterstarttime;
    }

    public Date getAfterendtime() {
        return afterendtime;
    }

    public void setAfterendtime(Date afterendtime) {
        this.afterendtime = afterendtime;
    }

    public Integer getResult() {
        return result;
    }

    public void setResult(Integer result) {
        this.result = result;
    }
}