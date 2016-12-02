package com.springapp.mvc.controller;

import com.springapp.mvc.commmon.ViewExcel;
//import com.springapp.mvc.commmon.ViewPDF;
import com.springapp.mvc.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static org.springframework.web.bind.annotation.RequestMethod.*;

/**
 * Created by ruiqizhang on 3/22/16.
 */
@Controller
@RequestMapping("/user/view")
public class ViewController {


    @RequestMapping(value = "/export")
    public ModelAndView toAdd() {
        return new ModelAndView("user/export");
    }

    @RequestMapping(value = "/export",params="exceltest",method= GET)
    public ModelAndView viewExcel(HttpServletRequest request, HttpServletResponse response){
        List list = new ArrayList();
        Map model = new HashMap();
        list.add("test1");
        list.add("test2");
        User user=new User();
        model.put("list", user);
        ViewExcel viewExcel = new ViewExcel();
        return new ModelAndView(viewExcel, model);
    }

    @RequestMapping(value = "/export",params="pdftest",method= GET)
    public ModelAndView viewPDF(HttpServletRequest request,
                                HttpServletResponse response) throws Exception {
        List list = new ArrayList();
        Map model = new HashMap();
        list.add("test1");
        list.add("test2");
        model.put("list", list);
        return  null;
//        ViewPDF viewPDF = new ViewPDF();
//        return new ModelAndView(viewPDF, model);
    }
}
