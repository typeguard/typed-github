package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

public class Comment {
    private String url;
    private String htmlURL;
    private String issueURL;
    private long id;
    private User user;
    private String createdAt;
    private String updatedAt;
    private String authorAssociation;
    private String body;
    private Long position;
    private Long line;
    private String path;
    private String commitID;

    @JsonProperty("url")
    public String getUrl() { return url; }
    @JsonProperty("url")
    public void setUrl(String value) { this.url = value; }

    @JsonProperty("html_url")
    public String getHtmlURL() { return htmlURL; }
    @JsonProperty("html_url")
    public void setHtmlURL(String value) { this.htmlURL = value; }

    @JsonProperty("issue_url")
    public String getIssueURL() { return issueURL; }
    @JsonProperty("issue_url")
    public void setIssueURL(String value) { this.issueURL = value; }

    @JsonProperty("id")
    public long getId() { return id; }
    @JsonProperty("id")
    public void setId(long value) { this.id = value; }

    @JsonProperty("user")
    public User getUser() { return user; }
    @JsonProperty("user")
    public void setUser(User value) { this.user = value; }

    @JsonProperty("created_at")
    public String getCreatedAt() { return createdAt; }
    @JsonProperty("created_at")
    public void setCreatedAt(String value) { this.createdAt = value; }

    @JsonProperty("updated_at")
    public String getUpdatedAt() { return updatedAt; }
    @JsonProperty("updated_at")
    public void setUpdatedAt(String value) { this.updatedAt = value; }

    @JsonProperty("author_association")
    public String getAuthorAssociation() { return authorAssociation; }
    @JsonProperty("author_association")
    public void setAuthorAssociation(String value) { this.authorAssociation = value; }

    @JsonProperty("body")
    public String getBody() { return body; }
    @JsonProperty("body")
    public void setBody(String value) { this.body = value; }

    @JsonProperty("position")
    public Long getPosition() { return position; }
    @JsonProperty("position")
    public void setPosition(Long value) { this.position = value; }

    @JsonProperty("line")
    public Long getLine() { return line; }
    @JsonProperty("line")
    public void setLine(Long value) { this.line = value; }

    @JsonProperty("path")
    public String getPath() { return path; }
    @JsonProperty("path")
    public void setPath(String value) { this.path = value; }

    @JsonProperty("commit_id")
    public String getCommitID() { return commitID; }
    @JsonProperty("commit_id")
    public void setCommitID(String value) { this.commitID = value; }
}
