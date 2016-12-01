package com.springapp.mvc.helper;

import com.alibaba.fastjson.JSONObject;

/**
 * Created by ruiqizhang on 11/24/16.
 */
public class AjaxUtil {

    /**
     * 所有请求不合法
     */
    public static String ajaxError(String message) {
        JSONObject json = new JSONObject();
        json.put("status", false);
        json.put("message", message);
        return json.toString();
    }
   /**
    * 
    * 所有请求合法
    */
   
    public  static JSONObject ajaxSuccess() {
        JSONObject json = new JSONObject();
        json.put("status", true);
        return json;
    }
    
/*    JSONObject json=ajaxSuccess();
    json.put("data",List<String> );
    json.put("total",);
    
    
    ...
    return json.toString();  */
    
    
}
