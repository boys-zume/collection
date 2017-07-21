package com.boys.collection.dal.entity;

import com.boys.collection.dal.enums.SexEnum;

import java.io.Serializable;

/**
 * Created by yangweijie on 2017/7/21.
 */
public class UserDO implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long id;

    private SexEnum sex;

    private String userName;

    private String nickName;

    private String password;

    public UserDO() {
        super();
    }

    public UserDO(String userName, String password, SexEnum sex) {
        super();
        this.password = password;
        this.userName = userName;
        this.sex = sex;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public SexEnum getSex() {
        return sex;
    }

    public void setSex(SexEnum sex) {
        this.sex = sex;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "userName " + this.userName + ", password " + this.password + "sex " + sex.name();
    }

}
