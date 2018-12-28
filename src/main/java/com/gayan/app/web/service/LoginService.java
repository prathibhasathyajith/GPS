package com.gayan.app.web.service;

import com.gayan.app.web.dto.WebLoginBean;

import java.util.ArrayList;

/**
 * Created by Gayan Sanjeewa on 9/26/2018.
 */
public interface LoginService {
    public boolean authorizeWebUser(WebLoginBean webLoginBean) throws Exception;
}
