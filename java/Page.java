package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

public class Page {
    private String pageName;
    private String title;
    private Object summary;
    private String action;
    private String sha;
    private String htmlURL;

    @JsonProperty("page_name")
    public String getPageName() { return pageName; }
    @JsonProperty("page_name")
    public void setPageName(String value) { this.pageName = value; }

    @JsonProperty("title")
    public String getTitle() { return title; }
    @JsonProperty("title")
    public void setTitle(String value) { this.title = value; }

    @JsonProperty("summary")
    public Object getSummary() { return summary; }
    @JsonProperty("summary")
    public void setSummary(Object value) { this.summary = value; }

    @JsonProperty("action")
    public String getAction() { return action; }
    @JsonProperty("action")
    public void setAction(String value) { this.action = value; }

    @JsonProperty("sha")
    public String getSHA() { return sha; }
    @JsonProperty("sha")
    public void setSHA(String value) { this.sha = value; }

    @JsonProperty("html_url")
    public String getHTMLURL() { return htmlURL; }
    @JsonProperty("html_url")
    public void setHTMLURL(String value) { this.htmlURL = value; }
}
