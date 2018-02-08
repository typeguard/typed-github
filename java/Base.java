package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

public class Base {
    private String label;
    private String ref;
    private String sha;
    private User user;
    private BaseRepo repo;

    @JsonProperty("label")
    public String getLabel() { return label; }
    @JsonProperty("label")
    public void setLabel(String value) { this.label = value; }

    @JsonProperty("ref")
    public String getRef() { return ref; }
    @JsonProperty("ref")
    public void setRef(String value) { this.ref = value; }

    @JsonProperty("sha")
    public String getSha() { return sha; }
    @JsonProperty("sha")
    public void setSha(String value) { this.sha = value; }

    @JsonProperty("user")
    public User getUser() { return user; }
    @JsonProperty("user")
    public void setUser(User value) { this.user = value; }

    @JsonProperty("repo")
    public BaseRepo getRepo() { return repo; }
    @JsonProperty("repo")
    public void setRepo(BaseRepo value) { this.repo = value; }
}
