package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

public class Meta {
    private boolean verifiablePasswordAuthentication;
    private String githubServicesSHA;
    private String[] hooks;
    private String[] git;
    private String[] pages;
    private String[] importer;

    @JsonProperty("verifiable_password_authentication")
    public boolean getVerifiablePasswordAuthentication() { return verifiablePasswordAuthentication; }
    @JsonProperty("verifiable_password_authentication")
    public void setVerifiablePasswordAuthentication(boolean value) { this.verifiablePasswordAuthentication = value; }

    @JsonProperty("github_services_sha")
    public String getGithubServicesSHA() { return githubServicesSHA; }
    @JsonProperty("github_services_sha")
    public void setGithubServicesSHA(String value) { this.githubServicesSHA = value; }

    @JsonProperty("hooks")
    public String[] getHooks() { return hooks; }
    @JsonProperty("hooks")
    public void setHooks(String[] value) { this.hooks = value; }

    @JsonProperty("git")
    public String[] getGit() { return git; }
    @JsonProperty("git")
    public void setGit(String[] value) { this.git = value; }

    @JsonProperty("pages")
    public String[] getPages() { return pages; }
    @JsonProperty("pages")
    public void setPages(String[] value) { this.pages = value; }

    @JsonProperty("importer")
    public String[] getImporter() { return importer; }
    @JsonProperty("importer")
    public void setImporter(String[] value) { this.importer = value; }
}
