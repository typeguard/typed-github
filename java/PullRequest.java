package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

public class PullRequest {
    private String url;
    private long id;
    private String nodeID;
    private String htmlURL;
    private String diffURL;
    private String patchURL;
    private String issueURL;
    private long number;
    private String state;
    private boolean locked;
    private String title;
    private Owner user;
    private String body;
    private String createdAt;
    private String updatedAt;
    private Object closedAt;
    private Object mergedAt;
    private String mergeCommitSHA;
    private Object assignee;
    private Object[] assignees;
    private Object[] requestedReviewers;
    private Object[] requestedTeams;
    private Object[] labels;
    private Object milestone;
    private String commitsURL;
    private String reviewCommentsURL;
    private String reviewCommentURL;
    private String commentsURL;
    private String statusesURL;
    private Base head;
    private Base base;
    private PullRequestLinks links;
    private String authorAssociation;
    private Boolean merged;
    private Object mergeable;
    private Object rebaseable;
    private String mergeableState;
    private Object mergedBy;
    private Long comments;
    private Long reviewComments;
    private Boolean maintainerCanModify;
    private Long commits;
    private Long additions;
    private Long deletions;
    private Long changedFiles;

    @JsonProperty("url")
    public String getURL() { return url; }
    @JsonProperty("url")
    public void setURL(String value) { this.url = value; }

    @JsonProperty("id")
    public long getID() { return id; }
    @JsonProperty("id")
    public void setID(long value) { this.id = value; }

    @JsonProperty("node_id")
    public String getNodeID() { return nodeID; }
    @JsonProperty("node_id")
    public void setNodeID(String value) { this.nodeID = value; }

    @JsonProperty("html_url")
    public String getHTMLURL() { return htmlURL; }
    @JsonProperty("html_url")
    public void setHTMLURL(String value) { this.htmlURL = value; }

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

    @JsonProperty("closed_at")
    public Object getClosedAt() { return closedAt; }
    @JsonProperty("closed_at")
    public void setClosedAt(Object value) { this.closedAt = value; }

    @JsonProperty("merged_at")
    public Object getMergedAt() { return mergedAt; }
    @JsonProperty("merged_at")
    public void setMergedAt(Object value) { this.mergedAt = value; }

    @JsonProperty("merge_commit_sha")
    public String getMergeCommitSHA() { return mergeCommitSHA; }
    @JsonProperty("merge_commit_sha")
    public void setMergeCommitSHA(String value) { this.mergeCommitSHA = value; }

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

    @JsonProperty("labels")
    public Object[] getLabels() { return labels; }
    @JsonProperty("labels")
    public void setLabels(Object[] value) { this.labels = value; }

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
    public PullRequestLinks getLinks() { return links; }
    @JsonProperty("_links")
    public void setLinks(PullRequestLinks value) { this.links = value; }

    @JsonProperty("author_association")
    public String getAuthorAssociation() { return authorAssociation; }
    @JsonProperty("author_association")
    public void setAuthorAssociation(String value) { this.authorAssociation = value; }

    @JsonProperty("merged")
    public Boolean getMerged() { return merged; }
    @JsonProperty("merged")
    public void setMerged(Boolean value) { this.merged = value; }

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
    public Long getComments() { return comments; }
    @JsonProperty("comments")
    public void setComments(Long value) { this.comments = value; }

    @JsonProperty("review_comments")
    public Long getReviewComments() { return reviewComments; }
    @JsonProperty("review_comments")
    public void setReviewComments(Long value) { this.reviewComments = value; }

    @JsonProperty("maintainer_can_modify")
    public Boolean getMaintainerCanModify() { return maintainerCanModify; }
    @JsonProperty("maintainer_can_modify")
    public void setMaintainerCanModify(Boolean value) { this.maintainerCanModify = value; }

    @JsonProperty("commits")
    public Long getCommits() { return commits; }
    @JsonProperty("commits")
    public void setCommits(Long value) { this.commits = value; }

    @JsonProperty("additions")
    public Long getAdditions() { return additions; }
    @JsonProperty("additions")
    public void setAdditions(Long value) { this.additions = value; }

    @JsonProperty("deletions")
    public Long getDeletions() { return deletions; }
    @JsonProperty("deletions")
    public void setDeletions(Long value) { this.deletions = value; }

    @JsonProperty("changed_files")
    public Long getChangedFiles() { return changedFiles; }
    @JsonProperty("changed_files")
    public void setChangedFiles(Long value) { this.changedFiles = value; }
}
