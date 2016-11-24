package com.springapp.mvc.helper;

import com.alibaba.fastjson.JSONObject;

/**
 * Created by ruiqizhang on 11/24/16.
 */
public class AjaxUtil {


    public static String ajaxError(String message) {
        JSONObject json = new JSONObject();
        json.put("status", false);
        json.put("message", message);
        return json.toString();
    }

    public static JSONObject ajaxSuccess() {
        JSONObject json = new JSONObject();
        json.put("status", true);
        return json;
    }
}
