package com.gayan.app.web.service.impl;

import com.gayan.app.web.dao.UserDao;
import com.gayan.app.web.dto.UserDataBean;
import com.gayan.app.web.dto.WebResponsBean;
import com.gayan.app.web.dto.WebUserRegBean;
import com.gayan.app.web.dto.WebUserUpdateBean;
import com.gayan.app.web.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;

/**
 * Created by Gayan Sanjeewa on 9/28/2018.
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Transactional
    public ArrayList<String[]> getRegisteredUserList(String start, String length, String search_value, String user_category) throws Exception {
        return userDao.getRegisteredUserList(start, length, search_value, user_category);
    }

    @Transactional
    public int getRegisteredUserCount(String search_value, String user_category) throws Exception {
        return userDao.getRegisteredUserCount(search_value, user_category);
    }

    @Transactional
    public WebResponsBean registerUser(WebUserRegBean userRegBean) throws Exception {
        return userDao.registerUser(userRegBean);
    }

    @Transactional
    public WebUserUpdateBean getUserDatByUserIdUq(String user_id) throws Exception {
        return userDao.getUserDatByUserIdUq(user_id);
    }

    @Transactional
    public WebResponsBean deleteUser(String user_id, String user_category) throws Exception {
        return userDao.deleteUser(user_id, user_category);
    }

    @Transactional
    public ArrayList<UserDataBean> getUserListDropDown() throws Exception {
        return userDao.getUserListDropDown();
    }
}
