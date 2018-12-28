package com.gayan.app.web.dao;

import com.gayan.app.web.dto.WebLoginBean;

/**
 * Created by Gayan Sanjeewa on 9/26/2018.
 */
public interface LoginDao {
    public boolean authorizeWebUser(WebLoginBean webLoginBean) throws Exception;
}
