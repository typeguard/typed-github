package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

public class PullRequestLinks {
    private HTML self;
    private HTML html;
    private HTML issue;
    private HTML comments;
    private HTML reviewComments;
    private HTML reviewComment;
    private HTML commits;
    private HTML statuses;

    @JsonProperty("self")
    public HTML getSelf() { return self; }
    @JsonProperty("self")
    public void setSelf(HTML value) { this.self = value; }

    @JsonProperty("html")
    public HTML getHTML() { return html; }
    @JsonProperty("html")
    public void setHTML(HTML value) { this.html = value; }

    @JsonProperty("issue")
    public HTML getIssue() { return issue; }
    @JsonProperty("issue")
    public void setIssue(HTML value) { this.issue = value; }

    @JsonProperty("comments")
    public HTML getComments() { return comments; }
    @JsonProperty("comments")
    public void setComments(HTML value) { this.comments = value; }

    @JsonProperty("review_comments")
    public HTML getReviewComments() { return reviewComments; }
    @JsonProperty("review_comments")
    public void setReviewComments(HTML value) { this.reviewComments = value; }

    @JsonProperty("review_comment")
    public HTML getReviewComment() { return reviewComment; }
    @JsonProperty("review_comment")
    public void setReviewComment(HTML value) { this.reviewComment = value; }

    @JsonProperty("commits")
    public HTML getCommits() { return commits; }
    @JsonProperty("commits")
    public void setCommits(HTML value) { this.commits = value; }

    @JsonProperty("statuses")
    public HTML getStatuses() { return statuses; }
    @JsonProperty("statuses")
    public void setStatuses(HTML value) { this.statuses = value; }
}
