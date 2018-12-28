package com.gayan.app.web.controller;

import com.gayan.app.web.dto.WebLoginBean;
import com.gayan.app.web.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Gayan Sanjeewa on 9/23/2018.
 */
@Controller
@RequestMapping(value = "app/web")
public class WebAdminLoginController {

    @Autowired
    HttpServletRequest httpServletRequest;

    @Autowired
    private LoginService loginService;

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView loginUser(@ModelAttribute WebLoginBean webLoginBean) throws Exception {
        System.out.println(webLoginBean);
        boolean b = loginService.authorizeWebUser(webLoginBean);
        ModelAndView andView = new ModelAndView();
        if(b){
            andView.setViewName("redirect:/dashboard");
            andView.addObject(webLoginBean);
            httpServletRequest.getSession().setAttribute("webLoginBean", webLoginBean);
        }else{
            webLoginBean.setMessage("Invalid login credetionls..!");
            andView.setViewName("login");
            andView.addObject(webLoginBean);
        }



       return andView;
    }
}
