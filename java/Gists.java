package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

public class Gists {
    private String url;
    private String forksURL;
    private String commitsURL;
    private String id;
    private String gitPullURL;
    private String gitPushURL;
    private String htmlURL;
    private Map<String, File> files;
    private boolean gistsPublic;
    private String createdAt;
    private String updatedAt;
    private String description;
    private long comments;
    private Object user;
    private String commentsURL;
    private User owner;
    private boolean truncated;

    @JsonProperty("url")
    public String getURL() { return url; }
    @JsonProperty("url")
    public void setURL(String value) { this.url = value; }

    @JsonProperty("forks_url")
    public String getForksURL() { return forksURL; }
    @JsonProperty("forks_url")
    public void setForksURL(String value) { this.forksURL = value; }

    @JsonProperty("commits_url")
    public String getCommitsURL() { return commitsURL; }
    @JsonProperty("commits_url")
    public void setCommitsURL(String value) { this.commitsURL = value; }

    @JsonProperty("id")
    public String getID() { return id; }
    @JsonProperty("id")
    public void setID(String value) { this.id = value; }

    @JsonProperty("git_pull_url")
    public String getGitPullURL() { return gitPullURL; }
    @JsonProperty("git_pull_url")
    public void setGitPullURL(String value) { this.gitPullURL = value; }

    @JsonProperty("git_push_url")
    public String getGitPushURL() { return gitPushURL; }
    @JsonProperty("git_push_url")
    public void setGitPushURL(String value) { this.gitPushURL = value; }

    @JsonProperty("html_url")
    public String getHTMLURL() { return htmlURL; }
    @JsonProperty("html_url")
    public void setHTMLURL(String value) { this.htmlURL = value; }

    @JsonProperty("files")
    public Map<String, File> getFiles() { return files; }
    @JsonProperty("files")
    public void setFiles(Map<String, File> value) { this.files = value; }

    @JsonProperty("public")
    public boolean getGistsPublic() { return gistsPublic; }
    @JsonProperty("public")
    public void setGistsPublic(boolean value) { this.gistsPublic = value; }

    @JsonProperty("created_at")
    public String getCreatedAt() { return createdAt; }
    @JsonProperty("created_at")
    public void setCreatedAt(String value) { this.createdAt = value; }

    @JsonProperty("updated_at")
    public String getUpdatedAt() { return updatedAt; }
    @JsonProperty("updated_at")
    public void setUpdatedAt(String value) { this.updatedAt = value; }

    @JsonProperty("description")
    public String getDescription() { return description; }
    @JsonProperty("description")
    public void setDescription(String value) { this.description = value; }

    @JsonProperty("comments")
    public long getComments() { return comments; }
    @JsonProperty("comments")
    public void setComments(long value) { this.comments = value; }

    @JsonProperty("user")
    public Object getUser() { return user; }
    @JsonProperty("user")
    public void setUser(Object value) { this.user = value; }

    @JsonProperty("comments_url")
    public String getCommentsURL() { return commentsURL; }
    @JsonProperty("comments_url")
    public void setCommentsURL(String value) { this.commentsURL = value; }

    @JsonProperty("owner")
    public User getOwner() { return owner; }
    @JsonProperty("owner")
    public void setOwner(User value) { this.owner = value; }

    @JsonProperty("truncated")
    public boolean getTruncated() { return truncated; }
    @JsonProperty("truncated")
    public void setTruncated(boolean value) { this.truncated = value; }
}
