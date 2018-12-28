package com.gayan.app.web.service.impl;

import com.gayan.app.web.dao.LoginDao;
import com.gayan.app.web.dto.WebLoginBean;
import com.gayan.app.web.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Gayan Sanjeewa on 9/29/2018.
 */
@Service
public class LoginServiceImpl implements LoginService {

    @Autowired
    private LoginDao loginDao;
    @Transactional
    public boolean authorizeWebUser(WebLoginBean webLoginBean) throws Exception {
        return loginDao.authorizeWebUser(webLoginBean);
    }
}
