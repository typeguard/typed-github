package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

public class Milestone {
    private String url;
    private String htmlURL;
    private String labelsURL;
    private long id;
    private long number;
    private String title;
    private String description;
    private User creator;
    private long openIssues;
    private long closedIssues;
    private String state;
    private String createdAt;
    private String updatedAt;
    private String dueOn;
    private Object closedAt;

    @JsonProperty("url")
    public String getURL() { return url; }
    @JsonProperty("url")
    public void setURL(String value) { this.url = value; }

    @JsonProperty("html_url")
    public String getHTMLURL() { return htmlURL; }
    @JsonProperty("html_url")
    public void setHTMLURL(String value) { this.htmlURL = value; }

    @JsonProperty("labels_url")
    public String getLabelsURL() { return labelsURL; }
    @JsonProperty("labels_url")
    public void setLabelsURL(String value) { this.labelsURL = value; }

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

    @JsonProperty("description")
    public String getDescription() { return description; }
    @JsonProperty("description")
    public void setDescription(String value) { this.description = value; }

    @JsonProperty("creator")
    public User getCreator() { return creator; }
    @JsonProperty("creator")
    public void setCreator(User value) { this.creator = value; }

    @JsonProperty("open_issues")
    public long getOpenIssues() { return openIssues; }
    @JsonProperty("open_issues")
    public void setOpenIssues(long value) { this.openIssues = value; }

    @JsonProperty("closed_issues")
    public long getClosedIssues() { return closedIssues; }
    @JsonProperty("closed_issues")
    public void setClosedIssues(long value) { this.closedIssues = value; }

    @JsonProperty("state")
    public String getState() { return state; }
    @JsonProperty("state")
    public void setState(String value) { this.state = value; }

    @JsonProperty("created_at")
    public String getCreatedAt() { return createdAt; }
    @JsonProperty("created_at")
    public void setCreatedAt(String value) { this.createdAt = value; }

    @JsonProperty("updated_at")
    public String getUpdatedAt() { return updatedAt; }
    @JsonProperty("updated_at")
    public void setUpdatedAt(String value) { this.updatedAt = value; }

    @JsonProperty("due_on")
    public String getDueOn() { return dueOn; }
    @JsonProperty("due_on")
    public void setDueOn(String value) { this.dueOn = value; }

    @JsonProperty("closed_at")
    public Object getClosedAt() { return closedAt; }
    @JsonProperty("closed_at")
    public void setClosedAt(Object value) { this.closedAt = value; }
}
