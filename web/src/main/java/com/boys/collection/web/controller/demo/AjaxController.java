package com.boys.collection.web.controller.demo;

import com.boys.collection.web.controller.BaseController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by yangweijie on 2017/8/25.
 */
@RestController
public class AjaxController extends BaseController{

    @RequestMapping(value="/demo/ajaxJson",method = RequestMethod.GET,produces = "application/json;charset=UTF-8")
    public String ajaxJson(HttpServletRequest request, HttpServletResponse response){
        return "{\"data\":\"ajaxJson:abc\"}";
    }

    @RequestMapping(value="/demo/ajaxGet",method=RequestMethod.GET,produces = "text/html;charset=UTF-8")
    public String ajaxGet(HttpServletRequest request,HttpServletResponse response){
        return "ajaxGet";
    }

}
