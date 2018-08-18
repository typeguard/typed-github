package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

public class Comment {
    private String url;
    private long pullRequestReviewID;
    private long id;
    private String nodeID;
    private String diffHunk;
    private String path;
    private long position;
    private long originalPosition;
    private String commitID;
    private String originalCommitID;
    private Owner user;
    private String body;
    private String createdAt;
    private String updatedAt;
    private String htmlURL;
    private String pullRequestURL;
    private String authorAssociation;
    private CommentLinks links;

    @JsonProperty("url")
    public String getURL() { return url; }
    @JsonProperty("url")
    public void setURL(String value) { this.url = value; }

    @JsonProperty("pull_request_review_id")
    public long getPullRequestReviewID() { return pullRequestReviewID; }
    @JsonProperty("pull_request_review_id")
    public void setPullRequestReviewID(long value) { this.pullRequestReviewID = value; }

    @JsonProperty("id")
    public long getID() { return id; }
    @JsonProperty("id")
    public void setID(long value) { this.id = value; }

    @JsonProperty("node_id")
    public String getNodeID() { return nodeID; }
    @JsonProperty("node_id")
    public void setNodeID(String value) { this.nodeID = value; }

    @JsonProperty("diff_hunk")
    public String getDiffHunk() { return diffHunk; }
    @JsonProperty("diff_hunk")
    public void setDiffHunk(String value) { this.diffHunk = value; }

    @JsonProperty("path")
    public String getPath() { return path; }
    @JsonProperty("path")
    public void setPath(String value) { this.path = value; }

    @JsonProperty("position")
    public long getPosition() { return position; }
    @JsonProperty("position")
    public void setPosition(long value) { this.position = value; }

    @JsonProperty("original_position")
    public long getOriginalPosition() { return originalPosition; }
    @JsonProperty("original_position")
    public void setOriginalPosition(long value) { this.originalPosition = value; }

    @JsonProperty("commit_id")
    public String getCommitID() { return commitID; }
    @JsonProperty("commit_id")
    public void setCommitID(String value) { this.commitID = value; }

    @JsonProperty("original_commit_id")
    public String getOriginalCommitID() { return originalCommitID; }
    @JsonProperty("original_commit_id")
    public void setOriginalCommitID(String value) { this.originalCommitID = value; }

    @JsonProperty("user")
    public Owner getUser() { return user; }
    @JsonProperty("user")
    public void setUser(Owner value) { this.user = value; }

    @JsonProperty("body")
    public String getBody() { return body; }
    @JsonProperty("body")
    public void setBody(String value) { this.body = value; }

    @JsonProperty("created_at")
    public String getCreatedAt() { return createdAt; }
    @JsonProperty("created_at")
    public void setCreatedAt(String value) { this.createdAt = value; }

    @JsonProperty("updated_at")
    public String getUpdatedAt() { return updatedAt; }
    @JsonProperty("updated_at")
    public void setUpdatedAt(String value) { this.updatedAt = value; }

    @JsonProperty("html_url")
    public String getHTMLURL() { return htmlURL; }
    @JsonProperty("html_url")
    public void setHTMLURL(String value) { this.htmlURL = value; }

    @JsonProperty("pull_request_url")
    public String getPullRequestURL() { return pullRequestURL; }
    @JsonProperty("pull_request_url")
    public void setPullRequestURL(String value) { this.pullRequestURL = value; }

    @JsonProperty("author_association")
    public String getAuthorAssociation() { return authorAssociation; }
    @JsonProperty("author_association")
    public void setAuthorAssociation(String value) { this.authorAssociation = value; }

    @JsonProperty("_links")
    public CommentLinks getLinks() { return links; }
    @JsonProperty("_links")
    public void setLinks(CommentLinks value) { this.links = value; }
}
