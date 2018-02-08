package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

public class IssuePullRequest {
    private String url;
    private String htmlURL;
    private String diffURL;
    private String patchURL;

    @JsonProperty("url")
    public String getUrl() { return url; }
    @JsonProperty("url")
    public void setUrl(String value) { this.url = value; }

    @JsonProperty("html_url")
    public String getHtmlURL() { return htmlURL; }
    @JsonProperty("html_url")
    public void setHtmlURL(String value) { this.htmlURL = value; }

    @JsonProperty("diff_url")
    public String getDiffURL() { return diffURL; }
    @JsonProperty("diff_url")
    public void setDiffURL(String value) { this.diffURL = value; }

    @JsonProperty("patch_url")
    public String getPatchURL() { return patchURL; }
    @JsonProperty("patch_url")
    public void setPatchURL(String value) { this.patchURL = value; }
}
