package com.springapp.mvc.helper;

import com.springapp.mvc.commmon.PageIterator;
import com.springapp.mvc.model.SubjectVo;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.util.CollectionUtils;

import java.io.*;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/**
 * Created by ruiqizhang on 11/13/16.
 */


public class ResourceBeanUtil {
    public static void main(String[] args) {
        String str = readJsonFile("/home/ruiqizhang/resources/subject_four.json");
        JSONArray array = JSONArray.fromObject(str);
        List<SubjectVo> list = new ArrayList<SubjectVo>();
        for (Object object : array) {
            JSONObject jsonObject = JSONObject.fromObject(object);
            SubjectVo subjectVo = (SubjectVo) jsonObject.toBean(jsonObject, SubjectVo.class);
            list.add(subjectVo);
        }
        PageIterator<SubjectVo> pageIterator = getPageIterator(list, 10);
        System.out.print("pageIterator is" + pageIterator.getPageList(2));
    }

    public static PageIterator getPageIterator(Collection objects, Integer pageSize) {
        PageIterator pageIterator = new PageIterator();
        if (CollectionUtils.isEmpty(objects)) {
            return pageIterator;
        }
        pageSize = (pageSize == null || pageSize <= 0) ? 10 : pageSize;
        int totalCount = objects.size();
        int totalPages = (totalCount + pageSize - 1) / pageSize;
        pageIterator.setData((List<Object>) objects);
        pageIterator.setPageSize(pageSize);
        pageIterator.setTotalCount(totalCount);
        pageIterator.setTotalPages(totalPages);
        return pageIterator;
    }

    public static String readJsonFile(String filePath) {
        try {
            String encoding = "utf-8";
            File file = new File(filePath);
            System.out.println("file is" + file);
            if (file.isFile() && file.exists()) { //判断文件是否存在
                InputStreamReader read = new InputStreamReader(
                        new FileInputStream(file), encoding);//考虑到编码格式
                BufferedReader bufferedReader = new BufferedReader(read);
                StringBuffer json = new StringBuffer();
                String lineTxt = null;
                while ((lineTxt = bufferedReader.readLine()) != null) {
                    lineTxt = URLEncoder.encode(lineTxt, "utf-8");
                    json.append(lineTxt);
                }
                read.close();
                return json.toString();
            } else {
                System.out.println("找不到指定的文件");
            }
        } catch (Exception e) {
            System.out.println("读取文件内容出错");
            e.printStackTrace();
        }
        return "";
    }

    public static void readTxtFile(String filePath) {
        try {
            String encoding = "utf-8";
            File file = new File(filePath);
            System.out.println("file is" + file);
            if (file.isFile() && file.exists()) { //判断文件是否存在
                InputStreamReader read = new InputStreamReader(
                        new FileInputStream(file), encoding);//考虑到编码格式
                BufferedReader bufferedReader = new BufferedReader(read);
                String lineTxt = null;
                while ((lineTxt = bufferedReader.readLine()) != null) {
                    System.out.println(lineTxt);
                }
                read.close();
            } else {
                System.out.println("找不到指定的文件");
            }
        } catch (Exception e) {
            System.out.println("读取文件内容出错");
            e.printStackTrace();
        }

    }


}
