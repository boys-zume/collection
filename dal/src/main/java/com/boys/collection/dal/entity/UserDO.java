package com.boys.collection.dal.entity;

import com.boys.collection.dal.enums.SexEnum;

import java.io.Serializable;

/**
 * Created by yangweijie on 2017/7/21.
 */
public class UserDO implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long id;

    private String userName;

    private String realName;

    private String password;

    public UserDO() {
        super();
    }

    public UserDO(String userName, String password, String realName) {
        super();
        this.password = password;
        this.userName = userName;
        this.realName = realName;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }


    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "userName " + this.userName + ", password " + this.password + "realName " + this.realName;
    }

}
