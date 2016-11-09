package com.springapp.mvc.interceptor;

import com.springapp.mvc.helper.UrlEncoderUtil;
import org.springframework.util.AntPathMatcher;
import org.springframework.util.PathMatcher;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Iterator;
import java.util.List;

/**
 * Created by ruiqizhang on 11/8/16.
 */
public class LoginInterceptor extends HandlerInterceptorAdapter {
    private static final long serialVersionUID = 1l;
    private PathMatcher pathMatcher = new AntPathMatcher();
    public List<String> excludeUrlPatterns;

    public List<String> getExcludeUrlPatterns() {
        return excludeUrlPatterns;
    }

    public void setExcludeUrlPatterns(List<String> excludeUrlPatterns) {
        this.excludeUrlPatterns = excludeUrlPatterns;
    }

    /**
     * 除去用户登陆页面不需要拦截，其他都需要拦截
     *
     * @param request
     * @param response
     * @param handler
     * @return
     * @throws Exception
     */
    public boolean doPreHandle(HttpSession session, HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        if (this.isExcludeUrl(this.getUrlPath(request))) {
            return true;
        }
        if (session.getAttribute("user") != null) {
            return true;
        } else {
            //ajax请求,不能跳转
            if (request.getHeader("X-Requested-With") != null && request.getHeader("X-Requested-With").equals("XMLHttpRequest")) {
                return false;
            } else {
                //重定向到登陆页面  todo 路径待定
                String url = UrlEncoderUtil.getForwardUrl(request);
                response.sendRedirect("http://" + request.getServerName() + request.getServerPort() + "/login?redir=" + UrlEncoderUtil.encodeByUtf8(url, "/"));
                return false;
            }
        }
    }

    protected boolean isExcludeUrl(String path) {
        return this.patternUrl(this.excludeUrlPatterns, path);
    }

    protected String getUrlPath(HttpServletRequest request) {
        String servletPath = request.getServletPath();
        if (servletPath == null || "/".equals(servletPath)) {
            servletPath = "";
        }

        return servletPath + request.getPathInfo();
    }

    private boolean patternUrl(List<String> urlPatterns, String path) {
        if (urlPatterns != null && !urlPatterns.isEmpty()) {
            Iterator i$ = urlPatterns.iterator();

            String pattern;
            do {
                if (!i$.hasNext()) {
                    return false;
                }

                pattern = (String) i$.next();
            } while (!this.pathMatcher.match(pattern, path));

            return true;
        } else {
            return false;
        }
    }
}
