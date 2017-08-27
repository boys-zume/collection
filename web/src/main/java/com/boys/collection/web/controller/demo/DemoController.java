package com.boys.collection.web.controller.demo;

import com.boys.collection.web.controller.BaseController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by yangweijie on 2017/8/27.
 */
@RestController
public class DemoController extends BaseController{

    @RequestMapping("/demo/demoIndex.html")
    public ModelAndView demoIndex(HttpServletRequest request, HttpServletResponse response){
        Map<String,Object> model = new HashMap<>();
        return new ModelAndView("demoIndex",model);
    }

}
