package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

public class Issue {
    private String url;
    private String repositoryURL;
    private String labelsURL;
    private String commentsURL;
    private String eventsURL;
    private String htmlURL;
    private long id;
    private long number;
    private String title;
    private User user;
    private Label[] labels;
    private String state;
    private boolean locked;
    private User assignee;
    private User[] assignees;
    private Milestone milestone;
    private long comments;
    private String createdAt;
    private String updatedAt;
    private String closedAt;
    private String authorAssociation;
    private String body;

    @JsonProperty("url")
    public String getURL() { return url; }
    @JsonProperty("url")
    public void setURL(String value) { this.url = value; }

    @JsonProperty("repository_url")
    public String getRepositoryURL() { return repositoryURL; }
    @JsonProperty("repository_url")
    public void setRepositoryURL(String value) { this.repositoryURL = value; }

    @JsonProperty("labels_url")
    public String getLabelsURL() { return labelsURL; }
    @JsonProperty("labels_url")
    public void setLabelsURL(String value) { this.labelsURL = value; }

    @JsonProperty("comments_url")
    public String getCommentsURL() { return commentsURL; }
    @JsonProperty("comments_url")
    public void setCommentsURL(String value) { this.commentsURL = value; }

    @JsonProperty("events_url")
    public String getEventsURL() { return eventsURL; }
    @JsonProperty("events_url")
    public void setEventsURL(String value) { this.eventsURL = value; }

    @JsonProperty("html_url")
    public String getHTMLURL() { return htmlURL; }
    @JsonProperty("html_url")
    public void setHTMLURL(String value) { this.htmlURL = value; }

    @JsonProperty("id")
    public long getID() { return id; }
    @JsonProperty("id")
    public void setID(long value) { this.id = value; }

    @JsonProperty("number")
    public long getNumber() { return number; }
    @JsonProperty("number")
    public void setNumber(long value) { this.number = value; }

    @JsonProperty("title")
    public String getTitle() { return title; }
    @JsonProperty("title")
    public void setTitle(String value) { this.title = value; }

    @JsonProperty("user")
    public User getUser() { return user; }
    @JsonProperty("user")
    public void setUser(User value) { this.user = value; }

    @JsonProperty("labels")
    public Label[] getLabels() { return labels; }
    @JsonProperty("labels")
    public void setLabels(Label[] value) { this.labels = value; }

    @JsonProperty("state")
    public String getState() { return state; }
    @JsonProperty("state")
    public void setState(String value) { this.state = value; }

    @JsonProperty("locked")
    public boolean getLocked() { return locked; }
    @JsonProperty("locked")
    public void setLocked(boolean value) { this.locked = value; }

    @JsonProperty("assignee")
    public User getAssignee() { return assignee; }
    @JsonProperty("assignee")
    public void setAssignee(User value) { this.assignee = value; }

    @JsonProperty("assignees")
    public User[] getAssignees() { return assignees; }
    @JsonProperty("assignees")
    public void setAssignees(User[] value) { this.assignees = value; }

    @JsonProperty("milestone")
    public Milestone getMilestone() { return milestone; }
    @JsonProperty("milestone")
    public void setMilestone(Milestone value) { this.milestone = value; }

    @JsonProperty("comments")
    public long getComments() { return comments; }
    @JsonProperty("comments")
    public void setComments(long value) { this.comments = value; }

    @JsonProperty("created_at")
    public String getCreatedAt() { return createdAt; }
    @JsonProperty("created_at")
    public void setCreatedAt(String value) { this.createdAt = value; }

    @JsonProperty("updated_at")
    public String getUpdatedAt() { return updatedAt; }
    @JsonProperty("updated_at")
    public void setUpdatedAt(String value) { this.updatedAt = value; }

    @JsonProperty("closed_at")
    public String getClosedAt() { return closedAt; }
    @JsonProperty("closed_at")
    public void setClosedAt(String value) { this.closedAt = value; }

    @JsonProperty("author_association")
    public String getAuthorAssociation() { return authorAssociation; }
    @JsonProperty("author_association")
    public void setAuthorAssociation(String value) { this.authorAssociation = value; }

    @JsonProperty("body")
    public String getBody() { return body; }
    @JsonProperty("body")
    public void setBody(String value) { this.body = value; }
}
