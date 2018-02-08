package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

public class PayloadPullRequest {
    private String url;
    private long id;
    private String htmlURL;
    private String diffURL;
    private String patchURL;
    private String issueURL;
    private long number;
    private String state;
    private boolean locked;
    private String title;
    private User user;
    private String body;
    private String createdAt;
    private String updatedAt;
    private Object closedAt;
    private Object mergedAt;
    private Object mergeCommitSHA;
    private Object assignee;
    private Object[] assignees;
    private Object[] requestedReviewers;
    private Object[] requestedTeams;
    private Object milestone;
    private String commitsURL;
    private String reviewCommentsURL;
    private String reviewCommentURL;
    private String commentsURL;
    private String statusesURL;
    private Base head;
    private Base base;
    private Links links;
    private String authorAssociation;
    private boolean merged;
    private Object mergeable;
    private Object rebaseable;
    private String mergeableState;
    private Object mergedBy;
    private long comments;
    private long reviewComments;
    private boolean maintainerCanModify;
    private long commits;
    private long additions;
    private long deletions;
    private long changedFiles;

    @JsonProperty("url")
    public String getUrl() { return url; }
    @JsonProperty("url")
    public void setUrl(String value) { this.url = value; }

    @JsonProperty("id")
    public long getId() { return id; }
    @JsonProperty("id")
    public void setId(long value) { this.id = value; }

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

    @JsonProperty("issue_url")
    public String getIssueURL() { return issueURL; }
    @JsonProperty("issue_url")
    public void setIssueURL(String value) { this.issueURL = value; }

    @JsonProperty("number")
    public long getNumber() { return number; }
    @JsonProperty("number")
    public void setNumber(long value) { this.number = value; }

    @JsonProperty("state")
    public String getState() { return state; }
    @JsonProperty("state")
    public void setState(String value) { this.state = value; }

    @JsonProperty("locked")
    public boolean getLocked() { return locked; }
    @JsonProperty("locked")
    public void setLocked(boolean value) { this.locked = value; }

    @JsonProperty("title")
    public String getTitle() { return title; }
    @JsonProperty("title")
    public void setTitle(String value) { this.title = value; }

    @JsonProperty("user")
    public User getUser() { return user; }
    @JsonProperty("user")
    public void setUser(User value) { this.user = value; }

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

    @JsonProperty("closed_at")
    public Object getClosedAt() { return closedAt; }
    @JsonProperty("closed_at")
    public void setClosedAt(Object value) { this.closedAt = value; }

    @JsonProperty("merged_at")
    public Object getMergedAt() { return mergedAt; }
    @JsonProperty("merged_at")
    public void setMergedAt(Object value) { this.mergedAt = value; }

    @JsonProperty("merge_commit_sha")
    public Object getMergeCommitSHA() { return mergeCommitSHA; }
    @JsonProperty("merge_commit_sha")
    public void setMergeCommitSHA(Object value) { this.mergeCommitSHA = value; }

    @JsonProperty("assignee")
    public Object getAssignee() { return assignee; }
    @JsonProperty("assignee")
    public void setAssignee(Object value) { this.assignee = value; }

    @JsonProperty("assignees")
    public Object[] getAssignees() { return assignees; }
    @JsonProperty("assignees")
    public void setAssignees(Object[] value) { this.assignees = value; }

    @JsonProperty("requested_reviewers")
    public Object[] getRequestedReviewers() { return requestedReviewers; }
    @JsonProperty("requested_reviewers")
    public void setRequestedReviewers(Object[] value) { this.requestedReviewers = value; }

    @JsonProperty("requested_teams")
    public Object[] getRequestedTeams() { return requestedTeams; }
    @JsonProperty("requested_teams")
    public void setRequestedTeams(Object[] value) { this.requestedTeams = value; }

    @JsonProperty("milestone")
    public Object getMilestone() { return milestone; }
    @JsonProperty("milestone")
    public void setMilestone(Object value) { this.milestone = value; }

    @JsonProperty("commits_url")
    public String getCommitsURL() { return commitsURL; }
    @JsonProperty("commits_url")
    public void setCommitsURL(String value) { this.commitsURL = value; }

    @JsonProperty("review_comments_url")
    public String getReviewCommentsURL() { return reviewCommentsURL; }
    @JsonProperty("review_comments_url")
    public void setReviewCommentsURL(String value) { this.reviewCommentsURL = value; }

    @JsonProperty("review_comment_url")
    public String getReviewCommentURL() { return reviewCommentURL; }
    @JsonProperty("review_comment_url")
    public void setReviewCommentURL(String value) { this.reviewCommentURL = value; }

    @JsonProperty("comments_url")
    public String getCommentsURL() { return commentsURL; }
    @JsonProperty("comments_url")
    public void setCommentsURL(String value) { this.commentsURL = value; }

    @JsonProperty("statuses_url")
    public String getStatusesURL() { return statusesURL; }
    @JsonProperty("statuses_url")
    public void setStatusesURL(String value) { this.statusesURL = value; }

    @JsonProperty("head")
    public Base getHead() { return head; }
    @JsonProperty("head")
    public void setHead(Base value) { this.head = value; }

    @JsonProperty("base")
    public Base getBase() { return base; }
    @JsonProperty("base")
    public void setBase(Base value) { this.base = value; }

    @JsonProperty("_links")
    public Links getLinks() { return links; }
    @JsonProperty("_links")
    public void setLinks(Links value) { this.links = value; }

    @JsonProperty("author_association")
    public String getAuthorAssociation() { return authorAssociation; }
    @JsonProperty("author_association")
    public void setAuthorAssociation(String value) { this.authorAssociation = value; }

    @JsonProperty("merged")
    public boolean getMerged() { return merged; }
    @JsonProperty("merged")
    public void setMerged(boolean value) { this.merged = value; }

    @JsonProperty("mergeable")
    public Object getMergeable() { return mergeable; }
    @JsonProperty("mergeable")
    public void setMergeable(Object value) { this.mergeable = value; }

    @JsonProperty("rebaseable")
    public Object getRebaseable() { return rebaseable; }
    @JsonProperty("rebaseable")
    public void setRebaseable(Object value) { this.rebaseable = value; }

    @JsonProperty("mergeable_state")
    public String getMergeableState() { return mergeableState; }
    @JsonProperty("mergeable_state")
    public void setMergeableState(String value) { this.mergeableState = value; }

    @JsonProperty("merged_by")
    public Object getMergedBy() { return mergedBy; }
    @JsonProperty("merged_by")
    public void setMergedBy(Object value) { this.mergedBy = value; }

    @JsonProperty("comments")
    public long getComments() { return comments; }
    @JsonProperty("comments")
    public void setComments(long value) { this.comments = value; }

    @JsonProperty("review_comments")
    public long getReviewComments() { return reviewComments; }
    @JsonProperty("review_comments")
    public void setReviewComments(long value) { this.reviewComments = value; }

    @JsonProperty("maintainer_can_modify")
    public boolean getMaintainerCanModify() { return maintainerCanModify; }
    @JsonProperty("maintainer_can_modify")
    public void setMaintainerCanModify(boolean value) { this.maintainerCanModify = value; }

    @JsonProperty("commits")
    public long getCommits() { return commits; }
    @JsonProperty("commits")
    public void setCommits(long value) { this.commits = value; }

    @JsonProperty("additions")
    public long getAdditions() { return additions; }
    @JsonProperty("additions")
    public void setAdditions(long value) { this.additions = value; }

    @JsonProperty("deletions")
    public long getDeletions() { return deletions; }
    @JsonProperty("deletions")
    public void setDeletions(long value) { this.deletions = value; }

    @JsonProperty("changed_files")
    public long getChangedFiles() { return changedFiles; }
    @JsonProperty("changed_files")
    public void setChangedFiles(long value) { this.changedFiles = value; }
}
