package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

public class User {
    private String login;
    private long id;
    private String avatarURL;
    private GravatarID gravatarID;
    private String url;
    private String htmlURL;
    private String followersURL;
    private String followingURL;
    private String gistsURL;
    private String starredURL;
    private String subscriptionsURL;
    private String organizationsURL;
    private String reposURL;
    private String eventsURL;
    private String receivedEventsURL;
    private Type type;
    private boolean siteAdmin;

    @JsonProperty("login")
    public String getLogin() { return login; }
    @JsonProperty("login")
    public void setLogin(String value) { this.login = value; }

    @JsonProperty("id")
    public long getId() { return id; }
    @JsonProperty("id")
    public void setId(long value) { this.id = value; }

    @JsonProperty("avatar_url")
    public String getAvatarURL() { return avatarURL; }
    @JsonProperty("avatar_url")
    public void setAvatarURL(String value) { this.avatarURL = value; }

    @JsonProperty("gravatar_id")
    public GravatarID getGravatarID() { return gravatarID; }
    @JsonProperty("gravatar_id")
    public void setGravatarID(GravatarID value) { this.gravatarID = value; }

    @JsonProperty("url")
    public String getUrl() { return url; }
    @JsonProperty("url")
    public void setUrl(String value) { this.url = value; }

    @JsonProperty("html_url")
    public String getHtmlURL() { return htmlURL; }
    @JsonProperty("html_url")
    public void setHtmlURL(String value) { this.htmlURL = value; }

    @JsonProperty("followers_url")
    public String getFollowersURL() { return followersURL; }
    @JsonProperty("followers_url")
    public void setFollowersURL(String value) { this.followersURL = value; }

    @JsonProperty("following_url")
    public String getFollowingURL() { return followingURL; }
    @JsonProperty("following_url")
    public void setFollowingURL(String value) { this.followingURL = value; }

    @JsonProperty("gists_url")
    public String getGistsURL() { return gistsURL; }
    @JsonProperty("gists_url")
    public void setGistsURL(String value) { this.gistsURL = value; }

    @JsonProperty("starred_url")
    public String getStarredURL() { return starredURL; }
    @JsonProperty("starred_url")
    public void setStarredURL(String value) { this.starredURL = value; }

    @JsonProperty("subscriptions_url")
    public String getSubscriptionsURL() { return subscriptionsURL; }
    @JsonProperty("subscriptions_url")
    public void setSubscriptionsURL(String value) { this.subscriptionsURL = value; }

    @JsonProperty("organizations_url")
    public String getOrganizationsURL() { return organizationsURL; }
    @JsonProperty("organizations_url")
    public void setOrganizationsURL(String value) { this.organizationsURL = value; }

    @JsonProperty("repos_url")
    public String getReposURL() { return reposURL; }
    @JsonProperty("repos_url")
    public void setReposURL(String value) { this.reposURL = value; }

    @JsonProperty("events_url")
    public String getEventsURL() { return eventsURL; }
    @JsonProperty("events_url")
    public void setEventsURL(String value) { this.eventsURL = value; }

    @JsonProperty("received_events_url")
    public String getReceivedEventsURL() { return receivedEventsURL; }
    @JsonProperty("received_events_url")
    public void setReceivedEventsURL(String value) { this.receivedEventsURL = value; }

    @JsonProperty("type")
    public Type getType() { return type; }
    @JsonProperty("type")
    public void setType(Type value) { this.type = value; }

    @JsonProperty("site_admin")
    public boolean getSiteAdmin() { return siteAdmin; }
    @JsonProperty("site_admin")
    public void setSiteAdmin(boolean value) { this.siteAdmin = value; }
}
