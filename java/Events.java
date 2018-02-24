package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

public class Events {
    private String id;
    private String type;
    private Actor actor;
    private Repo repo;
    private Payload payload;
    private boolean eventPublic;
    private String createdAt;
    private Actor org;

    @JsonProperty("id")
    public String getID() { return id; }
    @JsonProperty("id")
    public void setID(String value) { this.id = value; }

    @JsonProperty("type")
    public String getType() { return type; }
    @JsonProperty("type")
    public void setType(String value) { this.type = value; }

    @JsonProperty("actor")
    public Actor getActor() { return actor; }
    @JsonProperty("actor")
    public void setActor(Actor value) { this.actor = value; }

    @JsonProperty("repo")
    public Repo getRepo() { return repo; }
    @JsonProperty("repo")
    public void setRepo(Repo value) { this.repo = value; }

    @JsonProperty("payload")
    public Payload getPayload() { return payload; }
    @JsonProperty("payload")
    public void setPayload(Payload value) { this.payload = value; }

    @JsonProperty("public")
    public boolean getEventPublic() { return eventPublic; }
    @JsonProperty("public")
    public void setEventPublic(boolean value) { this.eventPublic = value; }

    @JsonProperty("created_at")
    public String getCreatedAt() { return createdAt; }
    @JsonProperty("created_at")
    public void setCreatedAt(String value) { this.createdAt = value; }

    @JsonProperty("org")
    public Actor getOrg() { return org; }
    @JsonProperty("org")
    public void setOrg(Actor value) { this.org = value; }
}
