package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

public class Actor {
    private long id;
    private String login;
    private String displayLogin;
    private String gravatarID;
    private String url;
    private String avatarURL;

    @JsonProperty("id")
    public long getID() { return id; }
    @JsonProperty("id")
    public void setID(long value) { this.id = value; }

    @JsonProperty("login")
    public String getLogin() { return login; }
    @JsonProperty("login")
    public void setLogin(String value) { this.login = value; }

    @JsonProperty("display_login")
    public String getDisplayLogin() { return displayLogin; }
    @JsonProperty("display_login")
    public void setDisplayLogin(String value) { this.displayLogin = value; }

    @JsonProperty("gravatar_id")
    public String getGravatarID() { return gravatarID; }
    @JsonProperty("gravatar_id")
    public void setGravatarID(String value) { this.gravatarID = value; }

    @JsonProperty("url")
    public String getURL() { return url; }
    @JsonProperty("url")
    public void setURL(String value) { this.url = value; }

    @JsonProperty("avatar_url")
    public String getAvatarURL() { return avatarURL; }
    @JsonProperty("avatar_url")
    public void setAvatarURL(String value) { this.avatarURL = value; }
}
