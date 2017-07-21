package com.boys.collection.dal.dao;

import com.boys.collection.dal.entity.UserDO;
import com.boys.collection.dal.enums.SexEnum;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * Created by yangweijie on 2017/7/21.
 */
public interface UserDAO {

    @Select("SELECT * FROM users")
    @Results({
            @Result(property = "sex",  column = "sex", javaType = SexEnum.class),
            @Result(property = "nickName", column = "nick_name")
    })
    List<UserDO> getAll();

    @Select("SELECT * FROM users WHERE id = #{id}")
    @Results({
            @Result(property = "sex",  column = "sex", javaType = SexEnum.class),
            @Result(property = "nickName", column = "nick_name")
    })
    UserDO getOne(Long id);

    @Insert("INSERT INTO users(user_name,nick_name,password,sex) VALUES(#{userName} , #{nickName}, #{password}, #{sex})")
    void insert(UserDO user);

    @Update("UPDATE users SET user_name=#{userName},nick_name=#{nickName} WHERE id =#{id}")
    void update(UserDO user);

    @Delete("DELETE FROM users WHERE id =#{id}")
    void delete(Long id);
}
