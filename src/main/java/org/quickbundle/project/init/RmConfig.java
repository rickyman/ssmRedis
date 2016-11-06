package org.quickbundle.project.init;

import org.quickbundle.tools.support.encrypt.Md5Token;

/**
 * Created by ruiqizhang on 11/06/16.
 */
public class RmConfig {
    /**
     * 默认编码
     */
    public static String defaultEncode() {
        return "UTF-8";
    }

    public static void main(String[] args) {
        Md5Token md5Token = new Md5Token();
        System.out.println("12345 md5加密:" + md5Token.getLongToken("132456"));
    }


}
