package com.springapp.mvc.helper;

import javax.servlet.http.HttpServletRequest;
import java.net.URLEncoder;

/**
 * Created by ruiqizhang on 11/8/16.
 */
public class UrlEncoderUtil {
    private UrlEncoderUtil() {
    }

    public static String encode(String toBeEncoded, String charSet, String defaultReturnValue) {
        String encodedString;
        try {
            encodedString = URLEncoder.encode(toBeEncoded, charSet);
        } catch (Exception var5) {
            System.err.println(String.format("Error when url-encode:%s with charset:%s", new Object[]{toBeEncoded == null ? "" : toBeEncoded, charSet == null ? "" : charSet}));
            var5.printStackTrace();
            encodedString = defaultReturnValue;
        }

        return encodedString;
    }

    public static String encodeByUtf8(String toBeEncoded, String defaultReturnValue) {
        return encode(toBeEncoded, "utf-8", defaultReturnValue);
    }

    public static String encodeByUtf8(String toBeEncoded) {
        return encodeByUtf8(toBeEncoded, (String) null);
    }

    public static String getForwardUrl(HttpServletRequest request) {
        int port = request.getServerPort();
        String servletPath = request.getServletPath();
        if (servletPath == null || "/".equals(servletPath)) {
            servletPath = "";
        }

        StringBuilder stringBuilder = (new StringBuilder(request.getScheme())).append("://").append(request.getServerName()).append(port == 80 ? "" : ":" + port).append(request.getContextPath()).append(servletPath).append(request.getPathInfo());
        if (request.getQueryString() != null && !request.getQueryString().isEmpty()) {
            stringBuilder.append("?").append(filterHeaderValue(request.getQueryString()));
        }

        return stringBuilder.toString();
    }

    public static String filterHeaderValue(String value) {
        if (value != null && value.length() != 0) {
            StringBuilder sb = new StringBuilder(value.length());

            for (int i = 0; i < value.length(); ++i) {
                char c = value.charAt(i);
                if (c >= 32 && c < 127) {
                    sb.append(c);
                }
            }

            return sb.toString();
        } else {
            return null;
        }
    }
}
