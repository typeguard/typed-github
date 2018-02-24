package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

public class APIData {
    private String currentUserURL;
    private String currentUserAuthorizationsHTMLURL;
    private String authorizationsURL;
    private String codeSearchURL;
    private String commitSearchURL;
    private String emailsURL;
    private String emojisURL;
    private String eventsURL;
    private String feedsURL;
    private String followersURL;
    private String followingURL;
    private String gistsURL;
    private String hubURL;
    private String issueSearchURL;
    private String issuesURL;
    private String keysURL;
    private String notificationsURL;
    private String organizationRepositoriesURL;
    private String organizationURL;
    private String publicGistsURL;
    private String rateLimitURL;
    private String repositoryURL;
    private String repositorySearchURL;
    private String currentUserRepositoriesURL;
    private String starredURL;
    private String starredGistsURL;
    private String teamURL;
    private String userURL;
    private String userOrganizationsURL;
    private String userRepositoriesURL;
    private String userSearchURL;

    @JsonProperty("current_user_url")
    public String getCurrentUserURL() { return currentUserURL; }
    @JsonProperty("current_user_url")
    public void setCurrentUserURL(String value) { this.currentUserURL = value; }

    @JsonProperty("current_user_authorizations_html_url")
    public String getCurrentUserAuthorizationsHTMLURL() { return currentUserAuthorizationsHTMLURL; }
    @JsonProperty("current_user_authorizations_html_url")
    public void setCurrentUserAuthorizationsHTMLURL(String value) { this.currentUserAuthorizationsHTMLURL = value; }

    @JsonProperty("authorizations_url")
    public String getAuthorizationsURL() { return authorizationsURL; }
    @JsonProperty("authorizations_url")
    public void setAuthorizationsURL(String value) { this.authorizationsURL = value; }

    @JsonProperty("code_search_url")
    public String getCodeSearchURL() { return codeSearchURL; }
    @JsonProperty("code_search_url")
    public void setCodeSearchURL(String value) { this.codeSearchURL = value; }

    @JsonProperty("commit_search_url")
    public String getCommitSearchURL() { return commitSearchURL; }
    @JsonProperty("commit_search_url")
    public void setCommitSearchURL(String value) { this.commitSearchURL = value; }

    @JsonProperty("emails_url")
    public String getEmailsURL() { return emailsURL; }
    @JsonProperty("emails_url")
    public void setEmailsURL(String value) { this.emailsURL = value; }

    @JsonProperty("emojis_url")
    public String getEmojisURL() { return emojisURL; }
    @JsonProperty("emojis_url")
    public void setEmojisURL(String value) { this.emojisURL = value; }

    @JsonProperty("events_url")
    public String getEventsURL() { return eventsURL; }
    @JsonProperty("events_url")
    public void setEventsURL(String value) { this.eventsURL = value; }

    @JsonProperty("feeds_url")
    public String getFeedsURL() { return feedsURL; }
    @JsonProperty("feeds_url")
    public void setFeedsURL(String value) { this.feedsURL = value; }

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

    @JsonProperty("hub_url")
    public String getHubURL() { return hubURL; }
    @JsonProperty("hub_url")
    public void setHubURL(String value) { this.hubURL = value; }

    @JsonProperty("issue_search_url")
    public String getIssueSearchURL() { return issueSearchURL; }
    @JsonProperty("issue_search_url")
    public void setIssueSearchURL(String value) { this.issueSearchURL = value; }

    @JsonProperty("issues_url")
    public String getIssuesURL() { return issuesURL; }
    @JsonProperty("issues_url")
    public void setIssuesURL(String value) { this.issuesURL = value; }

    @JsonProperty("keys_url")
    public String getKeysURL() { return keysURL; }
    @JsonProperty("keys_url")
    public void setKeysURL(String value) { this.keysURL = value; }

    @JsonProperty("notifications_url")
    public String getNotificationsURL() { return notificationsURL; }
    @JsonProperty("notifications_url")
    public void setNotificationsURL(String value) { this.notificationsURL = value; }

    @JsonProperty("organization_repositories_url")
    public String getOrganizationRepositoriesURL() { return organizationRepositoriesURL; }
    @JsonProperty("organization_repositories_url")
    public void setOrganizationRepositoriesURL(String value) { this.organizationRepositoriesURL = value; }

    @JsonProperty("organization_url")
    public String getOrganizationURL() { return organizationURL; }
    @JsonProperty("organization_url")
    public void setOrganizationURL(String value) { this.organizationURL = value; }

    @JsonProperty("public_gists_url")
    public String getPublicGistsURL() { return publicGistsURL; }
    @JsonProperty("public_gists_url")
    public void setPublicGistsURL(String value) { this.publicGistsURL = value; }

    @JsonProperty("rate_limit_url")
    public String getRateLimitURL() { return rateLimitURL; }
    @JsonProperty("rate_limit_url")
    public void setRateLimitURL(String value) { this.rateLimitURL = value; }

    @JsonProperty("repository_url")
    public String getRepositoryURL() { return repositoryURL; }
    @JsonProperty("repository_url")
    public void setRepositoryURL(String value) { this.repositoryURL = value; }

    @JsonProperty("repository_search_url")
    public String getRepositorySearchURL() { return repositorySearchURL; }
    @JsonProperty("repository_search_url")
    public void setRepositorySearchURL(String value) { this.repositorySearchURL = value; }

    @JsonProperty("current_user_repositories_url")
    public String getCurrentUserRepositoriesURL() { return currentUserRepositoriesURL; }
    @JsonProperty("current_user_repositories_url")
    public void setCurrentUserRepositoriesURL(String value) { this.currentUserRepositoriesURL = value; }

    @JsonProperty("starred_url")
    public String getStarredURL() { return starredURL; }
    @JsonProperty("starred_url")
    public void setStarredURL(String value) { this.starredURL = value; }

    @JsonProperty("starred_gists_url")
    public String getStarredGistsURL() { return starredGistsURL; }
    @JsonProperty("starred_gists_url")
    public void setStarredGistsURL(String value) { this.starredGistsURL = value; }

    @JsonProperty("team_url")
    public String getTeamURL() { return teamURL; }
    @JsonProperty("team_url")
    public void setTeamURL(String value) { this.teamURL = value; }

    @JsonProperty("user_url")
    public String getUserURL() { return userURL; }
    @JsonProperty("user_url")
    public void setUserURL(String value) { this.userURL = value; }

    @JsonProperty("user_organizations_url")
    public String getUserOrganizationsURL() { return userOrganizationsURL; }
    @JsonProperty("user_organizations_url")
    public void setUserOrganizationsURL(String value) { this.userOrganizationsURL = value; }

    @JsonProperty("user_repositories_url")
    public String getUserRepositoriesURL() { return userRepositoriesURL; }
    @JsonProperty("user_repositories_url")
    public void setUserRepositoriesURL(String value) { this.userRepositoriesURL = value; }

    @JsonProperty("user_search_url")
    public String getUserSearchURL() { return userSearchURL; }
    @JsonProperty("user_search_url")
    public void setUserSearchURL(String value) { this.userSearchURL = value; }
}
