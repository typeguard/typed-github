package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

public class Release {
    private String url;
    private String assetsURL;
    private String uploadURL;
    private String htmlURL;
    private long id;
    private String tagName;
    private String targetCommitish;
    private String name;
    private boolean draft;
    private User author;
    private boolean prerelease;
    private String createdAt;
    private String publishedAt;
    private Object[] assets;
    private String tarballURL;
    private String zipballURL;
    private String body;

    @JsonProperty("url")
    public String getURL() { return url; }
    @JsonProperty("url")
    public void setURL(String value) { this.url = value; }

    @JsonProperty("assets_url")
    public String getAssetsURL() { return assetsURL; }
    @JsonProperty("assets_url")
    public void setAssetsURL(String value) { this.assetsURL = value; }

    @JsonProperty("upload_url")
    public String getUploadURL() { return uploadURL; }
    @JsonProperty("upload_url")
    public void setUploadURL(String value) { this.uploadURL = value; }

    @JsonProperty("html_url")
    public String getHTMLURL() { return htmlURL; }
    @JsonProperty("html_url")
    public void setHTMLURL(String value) { this.htmlURL = value; }

    @JsonProperty("id")
    public long getID() { return id; }
    @JsonProperty("id")
    public void setID(long value) { this.id = value; }

    @JsonProperty("tag_name")
    public String getTagName() { return tagName; }
    @JsonProperty("tag_name")
    public void setTagName(String value) { this.tagName = value; }

    @JsonProperty("target_commitish")
    public String getTargetCommitish() { return targetCommitish; }
    @JsonProperty("target_commitish")
    public void setTargetCommitish(String value) { this.targetCommitish = value; }

    @JsonProperty("name")
    public String getName() { return name; }
    @JsonProperty("name")
    public void setName(String value) { this.name = value; }

    @JsonProperty("draft")
    public boolean getDraft() { return draft; }
    @JsonProperty("draft")
    public void setDraft(boolean value) { this.draft = value; }

    @JsonProperty("author")
    public User getAuthor() { return author; }
    @JsonProperty("author")
    public void setAuthor(User value) { this.author = value; }

    @JsonProperty("prerelease")
    public boolean getPrerelease() { return prerelease; }
    @JsonProperty("prerelease")
    public void setPrerelease(boolean value) { this.prerelease = value; }

    @JsonProperty("created_at")
    public String getCreatedAt() { return createdAt; }
    @JsonProperty("created_at")
    public void setCreatedAt(String value) { this.createdAt = value; }

    @JsonProperty("published_at")
    public String getPublishedAt() { return publishedAt; }
    @JsonProperty("published_at")
    public void setPublishedAt(String value) { this.publishedAt = value; }

    @JsonProperty("assets")
    public Object[] getAssets() { return assets; }
    @JsonProperty("assets")
    public void setAssets(Object[] value) { this.assets = value; }

    @JsonProperty("tarball_url")
    public String getTarballURL() { return tarballURL; }
    @JsonProperty("tarball_url")
    public void setTarballURL(String value) { this.tarballURL = value; }

    @JsonProperty("zipball_url")
    public String getZipballURL() { return zipballURL; }
    @JsonProperty("zipball_url")
    public void setZipballURL(String value) { this.zipballURL = value; }

    @JsonProperty("body")
    public String getBody() { return body; }
    @JsonProperty("body")
    public void setBody(String value) { this.body = value; }
}
