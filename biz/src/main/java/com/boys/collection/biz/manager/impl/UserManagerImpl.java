package com.boys.collection.biz.manager.impl;

import com.boys.collection.biz.manager.UserManager;
import org.springframework.stereotype.Service;

/**
 * Created by yangweijie on 2017/8/27.
 */
@Service("userManager")
public class UserManagerImpl implements UserManager{

    @Override
    public boolean isUserExists(String userName) {
        return false;
    }
}
