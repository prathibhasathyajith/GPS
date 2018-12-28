package com.gayan.app.web.dao;

import com.gayan.app.web.dto.UserDataBean;
import com.gayan.app.web.dto.WebResponsBean;
import com.gayan.app.web.dto.WebUserRegBean;
import com.gayan.app.web.dto.WebUserUpdateBean;

import java.util.ArrayList;

/**
 * Created by Gayan Sanjeewa on 9/26/2018.
 */
public interface UserDao {
    public ArrayList<String[]> getRegisteredUserList(String start, String length, String search_value,String user_category) throws Exception;
    public int getRegisteredUserCount(String search_value,String user_category) throws Exception;
    public WebResponsBean registerUser(WebUserRegBean userRegBean) throws Exception;

    public WebResponsBean deleteUser(String user_id,String user_category) throws Exception;
    public WebUserUpdateBean getUserDatByUserIdUq(String user_id) throws Exception;

    public ArrayList<UserDataBean> getUserListDropDown()throws Exception;
}
