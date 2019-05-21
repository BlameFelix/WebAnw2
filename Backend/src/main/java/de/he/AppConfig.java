package de.he;

import org.glassfish.jersey.server.ResourceConfig;
import org.glassfish.jersey.server.mvc.jsp.JspMvcFeature;


public class AppConfig extends ResourceConfig {
    public AppConfig() {
        packages("de.he");
        property(JspMvcFeature.TEMPLATE_BASE_PATH, "/WEB-INF");
        register(JspMvcFeature.class);
    }
}