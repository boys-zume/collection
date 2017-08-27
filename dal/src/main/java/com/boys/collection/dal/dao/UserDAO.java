package com.boys.collection.dal.dao;

import com.boys.collection.dal.entity.UserDO;
import com.boys.collection.dal.enums.SexEnum;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * Created by yangweijie on 2017/7/21.
 */
public interface UserDAO {

    @Select("SELECT * FROM collection_user")
    @Results({
            @Result(property = "realName",  column = "real_name"),
            @Result(property = "userName", column = "user_name")
    })
    List<UserDO> getAll();

    @Select("SELECT * FROM collection_user WHERE id = #{id}")
    @Results({
            @Result(property = "realName",  column = "real_name"),
            @Result(property = "userName", column = "user_name")
    })
    UserDO getOne(Long id);

    @Insert("INSERT INTO collection_user(user_name,real_name,password) VALUES(#{userName} , #{realName}, #{password})")
    void insert(UserDO user);

    @Update("UPDATE collection_user SET user_name=#{userName},real_name=#{realName} WHERE id =#{id}")
    void update(UserDO user);

    @Delete("DELETE FROM collection_user WHERE id =#{id}")
    void delete(Long id);
}
