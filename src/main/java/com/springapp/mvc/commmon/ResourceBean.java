package com.springapp.mvc.commmon;

import org.springframework.core.io.Resource;

/**
 * Created by ruiqizhang on 11/13/16.
 */
public class ResourceBean {

    private Resource resource1;
    private Resource resource2;

    @Override
    public String toString() {
        return "ResourceBean{" +
                "resource1=" + resource1 +
                ", resource2=" + resource2 +
                '}';
    }

    public Resource getResource1() {
        return resource1;
    }

    public void setResource1(Resource resource1) {
        this.resource1 = resource1;
    }

    public Resource getResource2() {
        return resource2;
    }

    public void setResource2(Resource resource2) {
        this.resource2 = resource2;
    }
}

