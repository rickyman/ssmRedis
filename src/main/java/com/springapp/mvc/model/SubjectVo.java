package com.springapp.mvc.model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by ruiqizhang on 11/14/16.
 */
public class SubjectVo {

    private Integer id;
    private String subject_number;
    private String subject_title;
    private String answer_a;
    private String answer_b;
    private String answer_c;
    private String answer_d;
    private String answer_true;
    private String subject_img;
    private String subject_analysis;
    private String subject_type;

    @Override
    public String toString() {
        return "SubjectVo{" +
                "id=" + id +
                ", subject_number='" + subject_number + '\'' +
                ", subject_title='" + subject_title + '\'' +
                ", answer_a='" + answer_a + '\'' +
                ", answer_b='" + answer_b + '\'' +
                ", answer_c='" + answer_c + '\'' +
                ", answer_d='" + answer_d + '\'' +
                ", answer_true='" + answer_true + '\'' +
                ", subject_img='" + subject_img + '\'' +
                ", subject_analysis='" + subject_analysis + '\'' +
                ", subject_type='" + subject_type + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSubject_number() {
        return subject_number;
    }

    public void setSubject_number(String subject_number) {
        this.subject_number = subject_number;
    }

    public String getSubject_title() {
        return subject_title;
    }

    public void setSubject_title(String subject_title) {
        this.subject_title = subject_title;
    }

    public String getAnswer_a() {
        return answer_a;
    }

    public void setAnswer_a(String answer_a) {
        this.answer_a = answer_a;
    }

    public String getAnswer_b() {
        return answer_b;
    }

    public void setAnswer_b(String answer_b) {
        this.answer_b = answer_b;
    }

    public String getAnswer_c() {
        return answer_c;
    }

    public void setAnswer_c(String answer_c) {
        this.answer_c = answer_c;
    }

    public String getAnswer_d() {
        return answer_d;
    }

    public void setAnswer_d(String answer_d) {
        this.answer_d = answer_d;
    }

    public String getAnswer_true() {
        return answer_true;
    }

    public void setAnswer_true(String answer_true) {
        this.answer_true = answer_true;
    }

    public String getSubject_img() {
        return subject_img;
    }

    public void setSubject_img(String subject_img) {
        this.subject_img = subject_img;
    }

    public String getSubject_analysis() {
        return subject_analysis;
    }

    public void setSubject_analysis(String subject_analysis) {
        this.subject_analysis = subject_analysis;
    }

    public String getSubject_type() {
        return subject_type;
    }

    public void setSubject_type(String subject_type) {
        this.subject_type = subject_type;
    }
}
