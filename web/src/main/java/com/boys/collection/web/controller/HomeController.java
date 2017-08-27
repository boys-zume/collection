package com.boys.collection.web.controller;

import com.boys.collection.biz.manager.UserManager;
import com.boys.collection.common.config.AppConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by yangweijie on 2017/8/27.
 */
@RestController
public class HomeController extends BaseController{

    @Autowired
    private AppConfig appConfig;

    @Resource
    private UserManager userManager;

    @RequestMapping("/")
    public ModelAndView home(HttpServletRequest request, HttpServletResponse response){
        return index(request,response);
    }

    @RequestMapping("/index.html")
    public ModelAndView index(HttpServletRequest request, HttpServletResponse response){
        Map<String,Object> model = new HashMap<>();
        return new ModelAndView("index",model);
    }

    @RequestMapping("/noAuth")
    public ModelAndView noAuth(HttpServletRequest request, HttpServletResponse response,
                               @RequestParam("permissions") String permissions){
        Map<String,Object> model = new HashMap<>();
        model.put("permissions",permissions);
        return new ModelAndView("noAuth",model);
    }

    @RequestMapping("/error.html")
    public ModelAndView error(HttpServletRequest request, HttpServletResponse response){
        Map<String,Object> model = new HashMap<>();
        return new ModelAndView("error",model);
    }

    @RequestMapping("/info.html")
    public ModelAndView info(HttpServletRequest request, HttpServletResponse response){
        Map<String,Object> model = new HashMap<>();
        return new ModelAndView("info",model);
    }
}
