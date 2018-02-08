package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

public class Actor {
    private long id;
    private String login;
    private String displayLogin;
    private GravatarID gravatarID;
    private String url;
    private String avatarURL;

    @JsonProperty("id")
    public long getId() { return id; }
    @JsonProperty("id")
    public void setId(long value) { this.id = value; }

    @JsonProperty("login")
    public String getLogin() { return login; }
    @JsonProperty("login")
    public void setLogin(String value) { this.login = value; }

    @JsonProperty("display_login")
    public String getDisplayLogin() { return displayLogin; }
    @JsonProperty("display_login")
    public void setDisplayLogin(String value) { this.displayLogin = value; }

    @JsonProperty("gravatar_id")
    public GravatarID getGravatarID() { return gravatarID; }
    @JsonProperty("gravatar_id")
    public void setGravatarID(GravatarID value) { this.gravatarID = value; }

    @JsonProperty("url")
    public String getUrl() { return url; }
    @JsonProperty("url")
    public void setUrl(String value) { this.url = value; }

    @JsonProperty("avatar_url")
    public String getAvatarURL() { return avatarURL; }
    @JsonProperty("avatar_url")
    public void setAvatarURL(String value) { this.avatarURL = value; }
}
