package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

public class CommentLinks {
    private HTML self;
    private HTML html;
    private HTML pullRequest;

    @JsonProperty("self")
    public HTML getSelf() { return self; }
    @JsonProperty("self")
    public void setSelf(HTML value) { this.self = value; }

    @JsonProperty("html")
    public HTML getHTML() { return html; }
    @JsonProperty("html")
    public void setHTML(HTML value) { this.html = value; }

    @JsonProperty("pull_request")
    public HTML getPullRequest() { return pullRequest; }
    @JsonProperty("pull_request")
    public void setPullRequest(HTML value) { this.pullRequest = value; }
}
