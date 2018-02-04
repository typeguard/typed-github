// To parse this JSON data, add NuGet 'Newtonsoft.Json' then do one of these:
//
//    using QuickType;
//
//    var data = ApiData.FromJson(jsonString);
//
//    var data = Emojis.FromJson(jsonString);
//
//    var data = Events.FromJson(jsonString);
//
//    var data = Gists.FromJson(jsonString);
//
//    var data = Meta.FromJson(jsonString);

namespace QuickType
{
    using System;
    using System.Net;
    using System.Collections.Generic;

    using Newtonsoft.Json;

    public partial class Events
    {
        [JsonProperty("id")]
        public string Id { get; set; }

        [JsonProperty("type")]
        public string PurpleType { get; set; }

        [JsonProperty("actor")]
        public Actor Actor { get; set; }

        [JsonProperty("repo")]
        public Repo Repo { get; set; }

        [JsonProperty("payload")]
        public Payload Payload { get; set; }

        [JsonProperty("public")]
        public bool Public { get; set; }

        [JsonProperty("created_at")]
        public System.DateTime CreatedAt { get; set; }

        [JsonProperty("org")]
        public Actor Org { get; set; }
    }

    public partial class Actor
    {
        [JsonProperty("id")]
        public long Id { get; set; }

        [JsonProperty("login")]
        public string Login { get; set; }

        [JsonProperty("display_login")]
        public string DisplayLogin { get; set; }

        [JsonProperty("gravatar_id")]
        public GravatarId GravatarId { get; set; }

        [JsonProperty("url")]
        public string Url { get; set; }

        [JsonProperty("avatar_url")]
        public string AvatarUrl { get; set; }
    }

    public partial class Payload
    {
        [JsonProperty("action")]
        public string Action { get; set; }

        [JsonProperty("number")]
        public long? Number { get; set; }

        [JsonProperty("pull_request")]
        public PayloadPullRequest PullRequest { get; set; }

        [JsonProperty("forkee")]
        public Forkee Forkee { get; set; }

        [JsonProperty("ref")]
        public string Ref { get; set; }

        [JsonProperty("ref_type")]
        public string RefType { get; set; }

        [JsonProperty("pusher_type")]
        public string PusherType { get; set; }

        [JsonProperty("push_id")]
        public long? PushId { get; set; }

        [JsonProperty("size")]
        public long? Size { get; set; }

        [JsonProperty("distinct_size")]
        public long? DistinctSize { get; set; }

        [JsonProperty("head")]
        public string Head { get; set; }

        [JsonProperty("before")]
        public string Before { get; set; }

        [JsonProperty("commits")]
        public Commit[] Commits { get; set; }

        [JsonProperty("issue")]
        public Issue Issue { get; set; }

        [JsonProperty("master_branch")]
        public string MasterBranch { get; set; }

        [JsonProperty("description")]
        public string Description { get; set; }

        [JsonProperty("comment")]
        public Comment Comment { get; set; }
    }

    public partial class Comment
    {
        [JsonProperty("url")]
        public string Url { get; set; }

        [JsonProperty("html_url")]
        public string HtmlUrl { get; set; }

        [JsonProperty("issue_url")]
        public string IssueUrl { get; set; }

        [JsonProperty("id")]
        public long Id { get; set; }

        [JsonProperty("user")]
        public User User { get; set; }

        [JsonProperty("created_at")]
        public System.DateTime CreatedAt { get; set; }

        [JsonProperty("updated_at")]
        public System.DateTime UpdatedAt { get; set; }

        [JsonProperty("author_association")]
        public string AuthorAssociation { get; set; }

        [JsonProperty("body")]
        public string Body { get; set; }

        [JsonProperty("pull_request_review_id")]
        public long? PullRequestReviewId { get; set; }

        [JsonProperty("diff_hunk")]
        public string DiffHunk { get; set; }

        [JsonProperty("path")]
        public string Path { get; set; }

        [JsonProperty("position")]
        public long? Position { get; set; }

        [JsonProperty("original_position")]
        public long? OriginalPosition { get; set; }

        [JsonProperty("commit_id")]
        public string CommitId { get; set; }

        [JsonProperty("original_commit_id")]
        public string OriginalCommitId { get; set; }

        [JsonProperty("pull_request_url")]
        public string PullRequestUrl { get; set; }

        [JsonProperty("_links")]
        public CommentLinks Links { get; set; }
    }

    public partial class CommentLinks
    {
        [JsonProperty("self")]
        public Html Self { get; set; }

        [JsonProperty("html")]
        public Html Html { get; set; }

        [JsonProperty("pull_request")]
        public Html PullRequest { get; set; }
    }

    public partial class Html
    {
        [JsonProperty("href")]
        public string Href { get; set; }
    }

    public partial class User
    {
        [JsonProperty("login")]
        public string Login { get; set; }

        [JsonProperty("id")]
        public long Id { get; set; }

        [JsonProperty("avatar_url")]
        public string AvatarUrl { get; set; }

        [JsonProperty("gravatar_id")]
        public GravatarId GravatarId { get; set; }

        [JsonProperty("url")]
        public string Url { get; set; }

        [JsonProperty("html_url")]
        public string HtmlUrl { get; set; }

        [JsonProperty("followers_url")]
        public string FollowersUrl { get; set; }

        [JsonProperty("following_url")]
        public string FollowingUrl { get; set; }

        [JsonProperty("gists_url")]
        public string GistsUrl { get; set; }

        [JsonProperty("starred_url")]
        public string StarredUrl { get; set; }

        [JsonProperty("subscriptions_url")]
        public string SubscriptionsUrl { get; set; }

        [JsonProperty("organizations_url")]
        public string OrganizationsUrl { get; set; }

        [JsonProperty("repos_url")]
        public string ReposUrl { get; set; }

        [JsonProperty("events_url")]
        public string EventsUrl { get; set; }

        [JsonProperty("received_events_url")]
        public string ReceivedEventsUrl { get; set; }

        [JsonProperty("type")]
        public UserType PurpleType { get; set; }

        [JsonProperty("site_admin")]
        public bool SiteAdmin { get; set; }
    }

    public partial class Commit
    {
        [JsonProperty("sha")]
        public string Sha { get; set; }

        [JsonProperty("author")]
        public Author Author { get; set; }

        [JsonProperty("message")]
        public string Message { get; set; }

        [JsonProperty("distinct")]
        public bool Distinct { get; set; }

        [JsonProperty("url")]
        public string Url { get; set; }
    }

    public partial class Author
    {
        [JsonProperty("email")]
        public string Email { get; set; }

        [JsonProperty("name")]
        public string Name { get; set; }
    }

    public partial class Forkee
    {
        [JsonProperty("id")]
        public long Id { get; set; }

        [JsonProperty("name")]
        public string Name { get; set; }

        [JsonProperty("full_name")]
        public string FullName { get; set; }

        [JsonProperty("owner")]
        public User Owner { get; set; }

        [JsonProperty("private")]
        public bool Private { get; set; }

        [JsonProperty("html_url")]
        public string HtmlUrl { get; set; }

        [JsonProperty("description")]
        public string Description { get; set; }

        [JsonProperty("fork")]
        public bool Fork { get; set; }

        [JsonProperty("url")]
        public string Url { get; set; }

        [JsonProperty("forks_url")]
        public string ForksUrl { get; set; }

        [JsonProperty("keys_url")]
        public string KeysUrl { get; set; }

        [JsonProperty("collaborators_url")]
        public string CollaboratorsUrl { get; set; }

        [JsonProperty("teams_url")]
        public string TeamsUrl { get; set; }

        [JsonProperty("hooks_url")]
        public string HooksUrl { get; set; }

        [JsonProperty("issue_events_url")]
        public string IssueEventsUrl { get; set; }

        [JsonProperty("events_url")]
        public string EventsUrl { get; set; }

        [JsonProperty("assignees_url")]
        public string AssigneesUrl { get; set; }

        [JsonProperty("branches_url")]
        public string BranchesUrl { get; set; }

        [JsonProperty("tags_url")]
        public string TagsUrl { get; set; }

        [JsonProperty("blobs_url")]
        public string BlobsUrl { get; set; }

        [JsonProperty("git_tags_url")]
        public string GitTagsUrl { get; set; }

        [JsonProperty("git_refs_url")]
        public string GitRefsUrl { get; set; }

        [JsonProperty("trees_url")]
        public string TreesUrl { get; set; }

        [JsonProperty("statuses_url")]
        public string StatusesUrl { get; set; }

        [JsonProperty("languages_url")]
        public string LanguagesUrl { get; set; }

        [JsonProperty("stargazers_url")]
        public string StargazersUrl { get; set; }

        [JsonProperty("contributors_url")]
        public string ContributorsUrl { get; set; }

        [JsonProperty("subscribers_url")]
        public string SubscribersUrl { get; set; }

        [JsonProperty("subscription_url")]
        public string SubscriptionUrl { get; set; }

        [JsonProperty("commits_url")]
        public string CommitsUrl { get; set; }

        [JsonProperty("git_commits_url")]
        public string GitCommitsUrl { get; set; }

        [JsonProperty("comments_url")]
        public string CommentsUrl { get; set; }

        [JsonProperty("issue_comment_url")]
        public string IssueCommentUrl { get; set; }

        [JsonProperty("contents_url")]
        public string ContentsUrl { get; set; }

        [JsonProperty("compare_url")]
        public string CompareUrl { get; set; }

        [JsonProperty("merges_url")]
        public string MergesUrl { get; set; }

        [JsonProperty("archive_url")]
        public string ArchiveUrl { get; set; }

        [JsonProperty("downloads_url")]
        public string DownloadsUrl { get; set; }

        [JsonProperty("issues_url")]
        public string IssuesUrl { get; set; }

        [JsonProperty("pulls_url")]
        public string PullsUrl { get; set; }

        [JsonProperty("milestones_url")]
        public string MilestonesUrl { get; set; }

        [JsonProperty("notifications_url")]
        public string NotificationsUrl { get; set; }

        [JsonProperty("labels_url")]
        public string LabelsUrl { get; set; }

        [JsonProperty("releases_url")]
        public string ReleasesUrl { get; set; }

        [JsonProperty("deployments_url")]
        public string DeploymentsUrl { get; set; }

        [JsonProperty("created_at")]
        public System.DateTime CreatedAt { get; set; }

        [JsonProperty("updated_at")]
        public System.DateTime UpdatedAt { get; set; }

        [JsonProperty("pushed_at")]
        public System.DateTime PushedAt { get; set; }

        [JsonProperty("git_url")]
        public string GitUrl { get; set; }

        [JsonProperty("ssh_url")]
        public string SshUrl { get; set; }

        [JsonProperty("clone_url")]
        public string CloneUrl { get; set; }

        [JsonProperty("svn_url")]
        public string SvnUrl { get; set; }

        [JsonProperty("homepage")]
        public Homepage? Homepage { get; set; }

        [JsonProperty("size")]
        public long Size { get; set; }

        [JsonProperty("stargazers_count")]
        public long StargazersCount { get; set; }

        [JsonProperty("watchers_count")]
        public long WatchersCount { get; set; }

        [JsonProperty("language")]
        public string Language { get; set; }

        [JsonProperty("has_issues")]
        public bool HasIssues { get; set; }

        [JsonProperty("has_projects")]
        public bool HasProjects { get; set; }

        [JsonProperty("has_downloads")]
        public bool HasDownloads { get; set; }

        [JsonProperty("has_wiki")]
        public bool HasWiki { get; set; }

        [JsonProperty("has_pages")]
        public bool HasPages { get; set; }

        [JsonProperty("forks_count")]
        public long ForksCount { get; set; }

        [JsonProperty("mirror_url")]
        public object MirrorUrl { get; set; }

        [JsonProperty("archived")]
        public bool Archived { get; set; }

        [JsonProperty("open_issues_count")]
        public long OpenIssuesCount { get; set; }

        [JsonProperty("license")]
        public License License { get; set; }

        [JsonProperty("forks")]
        public long Forks { get; set; }

        [JsonProperty("open_issues")]
        public long OpenIssues { get; set; }

        [JsonProperty("watchers")]
        public long Watchers { get; set; }

        [JsonProperty("default_branch")]
        public DefaultBranch DefaultBranch { get; set; }

        [JsonProperty("public")]
        public bool? Public { get; set; }
    }

    public partial class License
    {
        [JsonProperty("key")]
        public string Key { get; set; }

        [JsonProperty("name")]
        public string Name { get; set; }

        [JsonProperty("spdx_id")]
        public string SpdxId { get; set; }

        [JsonProperty("url")]
        public string Url { get; set; }
    }

    public partial class Issue
    {
        [JsonProperty("url")]
        public string Url { get; set; }

        [JsonProperty("repository_url")]
        public string RepositoryUrl { get; set; }

        [JsonProperty("labels_url")]
        public string LabelsUrl { get; set; }

        [JsonProperty("comments_url")]
        public string CommentsUrl { get; set; }

        [JsonProperty("events_url")]
        public string EventsUrl { get; set; }

        [JsonProperty("html_url")]
        public string HtmlUrl { get; set; }

        [JsonProperty("id")]
        public long Id { get; set; }

        [JsonProperty("number")]
        public long Number { get; set; }

        [JsonProperty("title")]
        public string Title { get; set; }

        [JsonProperty("user")]
        public User User { get; set; }

        [JsonProperty("labels")]
        public Label[] Labels { get; set; }

        [JsonProperty("state")]
        public string State { get; set; }

        [JsonProperty("locked")]
        public bool Locked { get; set; }

        [JsonProperty("assignee")]
        public object Assignee { get; set; }

        [JsonProperty("assignees")]
        public object[] Assignees { get; set; }

        [JsonProperty("milestone")]
        public Milestone Milestone { get; set; }

        [JsonProperty("comments")]
        public long Comments { get; set; }

        [JsonProperty("created_at")]
        public System.DateTime CreatedAt { get; set; }

        [JsonProperty("updated_at")]
        public System.DateTime UpdatedAt { get; set; }

        [JsonProperty("closed_at")]
        public System.DateTime? ClosedAt { get; set; }

        [JsonProperty("author_association")]
        public string AuthorAssociation { get; set; }

        [JsonProperty("body")]
        public string Body { get; set; }

        [JsonProperty("pull_request")]
        public IssuePullRequest PullRequest { get; set; }
    }

    public partial class Label
    {
        [JsonProperty("id")]
        public long Id { get; set; }

        [JsonProperty("url")]
        public string Url { get; set; }

        [JsonProperty("name")]
        public string Name { get; set; }

        [JsonProperty("color")]
        public string Color { get; set; }

        [JsonProperty("default")]
        public bool Default { get; set; }
    }

    public partial class Milestone
    {
        [JsonProperty("url")]
        public string Url { get; set; }

        [JsonProperty("html_url")]
        public string HtmlUrl { get; set; }

        [JsonProperty("labels_url")]
        public string LabelsUrl { get; set; }

        [JsonProperty("id")]
        public long Id { get; set; }

        [JsonProperty("number")]
        public long Number { get; set; }

        [JsonProperty("title")]
        public string Title { get; set; }

        [JsonProperty("description")]
        public object Description { get; set; }

        [JsonProperty("creator")]
        public User Creator { get; set; }

        [JsonProperty("open_issues")]
        public long OpenIssues { get; set; }

        [JsonProperty("closed_issues")]
        public long ClosedIssues { get; set; }

        [JsonProperty("state")]
        public string State { get; set; }

        [JsonProperty("created_at")]
        public System.DateTime CreatedAt { get; set; }

        [JsonProperty("updated_at")]
        public System.DateTime UpdatedAt { get; set; }

        [JsonProperty("due_on")]
        public object DueOn { get; set; }

        [JsonProperty("closed_at")]
        public object ClosedAt { get; set; }
    }

    public partial class IssuePullRequest
    {
        [JsonProperty("url")]
        public string Url { get; set; }

        [JsonProperty("html_url")]
        public string HtmlUrl { get; set; }

        [JsonProperty("diff_url")]
        public string DiffUrl { get; set; }

        [JsonProperty("patch_url")]
        public string PatchUrl { get; set; }
    }

    public partial class PayloadPullRequest
    {
        [JsonProperty("url")]
        public string Url { get; set; }

        [JsonProperty("id")]
        public long Id { get; set; }

        [JsonProperty("html_url")]
        public string HtmlUrl { get; set; }

        [JsonProperty("diff_url")]
        public string DiffUrl { get; set; }

        [JsonProperty("patch_url")]
        public string PatchUrl { get; set; }

        [JsonProperty("issue_url")]
        public string IssueUrl { get; set; }

        [JsonProperty("number")]
        public long Number { get; set; }

        [JsonProperty("state")]
        public string State { get; set; }

        [JsonProperty("locked")]
        public bool Locked { get; set; }

        [JsonProperty("title")]
        public string Title { get; set; }

        [JsonProperty("user")]
        public User User { get; set; }

        [JsonProperty("body")]
        public string Body { get; set; }

        [JsonProperty("created_at")]
        public System.DateTime CreatedAt { get; set; }

        [JsonProperty("updated_at")]
        public System.DateTime UpdatedAt { get; set; }

        [JsonProperty("closed_at")]
        public System.DateTime? ClosedAt { get; set; }

        [JsonProperty("merged_at")]
        public object MergedAt { get; set; }

        [JsonProperty("merge_commit_sha")]
        public string MergeCommitSha { get; set; }

        [JsonProperty("assignee")]
        public object Assignee { get; set; }

        [JsonProperty("assignees")]
        public object[] Assignees { get; set; }

        [JsonProperty("requested_reviewers")]
        public object[] RequestedReviewers { get; set; }

        [JsonProperty("requested_teams")]
        public object[] RequestedTeams { get; set; }

        [JsonProperty("milestone")]
        public object Milestone { get; set; }

        [JsonProperty("commits_url")]
        public string CommitsUrl { get; set; }

        [JsonProperty("review_comments_url")]
        public string ReviewCommentsUrl { get; set; }

        [JsonProperty("review_comment_url")]
        public string ReviewCommentUrl { get; set; }

        [JsonProperty("comments_url")]
        public string CommentsUrl { get; set; }

        [JsonProperty("statuses_url")]
        public string StatusesUrl { get; set; }

        [JsonProperty("head")]
        public Base Head { get; set; }

        [JsonProperty("base")]
        public Base Base { get; set; }

        [JsonProperty("_links")]
        public PullRequestLinks Links { get; set; }

        [JsonProperty("author_association")]
        public string AuthorAssociation { get; set; }

        [JsonProperty("merged")]
        public bool? Merged { get; set; }

        [JsonProperty("mergeable")]
        public bool? Mergeable { get; set; }

        [JsonProperty("rebaseable")]
        public bool? Rebaseable { get; set; }

        [JsonProperty("mergeable_state")]
        public string MergeableState { get; set; }

        [JsonProperty("merged_by")]
        public object MergedBy { get; set; }

        [JsonProperty("comments")]
        public long? Comments { get; set; }

        [JsonProperty("review_comments")]
        public long? ReviewComments { get; set; }

        [JsonProperty("maintainer_can_modify")]
        public bool? MaintainerCanModify { get; set; }

        [JsonProperty("commits")]
        public long? Commits { get; set; }

        [JsonProperty("additions")]
        public long? Additions { get; set; }

        [JsonProperty("deletions")]
        public long? Deletions { get; set; }

        [JsonProperty("changed_files")]
        public long? ChangedFiles { get; set; }
    }

    public partial class Base
    {
        [JsonProperty("label")]
        public string Label { get; set; }

        [JsonProperty("ref")]
        public string Ref { get; set; }

        [JsonProperty("sha")]
        public string Sha { get; set; }

        [JsonProperty("user")]
        public User User { get; set; }

        [JsonProperty("repo")]
        public Forkee Repo { get; set; }
    }

    public partial class PullRequestLinks
    {
        [JsonProperty("self")]
        public Html Self { get; set; }

        [JsonProperty("html")]
        public Html Html { get; set; }

        [JsonProperty("issue")]
        public Html Issue { get; set; }

        [JsonProperty("comments")]
        public Html Comments { get; set; }

        [JsonProperty("review_comments")]
        public Html ReviewComments { get; set; }

        [JsonProperty("review_comment")]
        public Html ReviewComment { get; set; }

        [JsonProperty("commits")]
        public Html Commits { get; set; }

        [JsonProperty("statuses")]
        public Html Statuses { get; set; }
    }

    public partial class Repo
    {
        [JsonProperty("id")]
        public long Id { get; set; }

        [JsonProperty("name")]
        public string Name { get; set; }

        [JsonProperty("url")]
        public string Url { get; set; }
    }

    public partial class Gists
    {
        [JsonProperty("url")]
        public string Url { get; set; }

        [JsonProperty("forks_url")]
        public string ForksUrl { get; set; }

        [JsonProperty("commits_url")]
        public string CommitsUrl { get; set; }

        [JsonProperty("id")]
        public string Id { get; set; }

        [JsonProperty("git_pull_url")]
        public string GitPullUrl { get; set; }

        [JsonProperty("git_push_url")]
        public string GitPushUrl { get; set; }

        [JsonProperty("html_url")]
        public string HtmlUrl { get; set; }

        [JsonProperty("files")]
        public Dictionary<string, File> Files { get; set; }

        [JsonProperty("public")]
        public bool Public { get; set; }

        [JsonProperty("created_at")]
        public System.DateTime CreatedAt { get; set; }

        [JsonProperty("updated_at")]
        public System.DateTime UpdatedAt { get; set; }

        [JsonProperty("description")]
        public string Description { get; set; }

        [JsonProperty("comments")]
        public long Comments { get; set; }

        [JsonProperty("user")]
        public object User { get; set; }

        [JsonProperty("comments_url")]
        public string CommentsUrl { get; set; }

        [JsonProperty("truncated")]
        public bool Truncated { get; set; }

        [JsonProperty("owner")]
        public User Owner { get; set; }
    }

    public partial class File
    {
        [JsonProperty("filename")]
        public string Filename { get; set; }

        [JsonProperty("type")]
        public FileType PurpleType { get; set; }

        [JsonProperty("language")]
        public string Language { get; set; }

        [JsonProperty("raw_url")]
        public string RawUrl { get; set; }

        [JsonProperty("size")]
        public long Size { get; set; }
    }

    public partial class Meta
    {
        [JsonProperty("verifiable_password_authentication")]
        public bool VerifiablePasswordAuthentication { get; set; }

        [JsonProperty("github_services_sha")]
        public string GithubServicesSha { get; set; }

        [JsonProperty("hooks")]
        public string[] Hooks { get; set; }

        [JsonProperty("git")]
        public string[] Git { get; set; }

        [JsonProperty("pages")]
        public string[] Pages { get; set; }

        [JsonProperty("importer")]
        public string[] Importer { get; set; }
    }

    public enum GravatarId { Empty };

    public enum UserType { Organization, User };

    public enum DefaultBranch { Master };

    public enum Homepage { Empty, HttpsValloricGithubIoYcmd };

    public enum FileType { ApplicationJavascript, ApplicationJson, TextCss, TextHtml, TextPlain };

    public class ApiData
    {
        public static Dictionary<string, string> FromJson(string json) => JsonConvert.DeserializeObject<Dictionary<string, string>>(json, Converter.Settings);
    }

    public class Emojis
    {
        public static Dictionary<string, string> FromJson(string json) => JsonConvert.DeserializeObject<Dictionary<string, string>>(json, Converter.Settings);
    }

    public partial class Events
    {
        public static Events[] FromJson(string json) => JsonConvert.DeserializeObject<Events[]>(json, Converter.Settings);
    }

    public partial class Gists
    {
        public static Gists[] FromJson(string json) => JsonConvert.DeserializeObject<Gists[]>(json, Converter.Settings);
    }

    public partial class Meta
    {
        public static Meta FromJson(string json) => JsonConvert.DeserializeObject<Meta>(json, Converter.Settings);
    }

    static class GravatarIdExtensions
    {
        public static GravatarId? ValueForString(string str)
        {
            switch (str)
            {
                case "": return GravatarId.Empty;
                default: return null;
            }
        }

        public static GravatarId ReadJson(JsonReader reader, JsonSerializer serializer)
        {
            var str = serializer.Deserialize<string>(reader);
            var maybeValue = ValueForString(str);
            if (maybeValue.HasValue) return maybeValue.Value;
            throw new Exception("Unknown enum case " + str);
        }

        public static void WriteJson(this GravatarId value, JsonWriter writer, JsonSerializer serializer)
        {
            switch (value)
            {
                case GravatarId.Empty: serializer.Serialize(writer, ""); break;
            }
        }
    }

    static class UserTypeExtensions
    {
        public static UserType? ValueForString(string str)
        {
            switch (str)
            {
                case "Organization": return UserType.Organization;
                case "User": return UserType.User;
                default: return null;
            }
        }

        public static UserType ReadJson(JsonReader reader, JsonSerializer serializer)
        {
            var str = serializer.Deserialize<string>(reader);
            var maybeValue = ValueForString(str);
            if (maybeValue.HasValue) return maybeValue.Value;
            throw new Exception("Unknown enum case " + str);
        }

        public static void WriteJson(this UserType value, JsonWriter writer, JsonSerializer serializer)
        {
            switch (value)
            {
                case UserType.Organization: serializer.Serialize(writer, "Organization"); break;
                case UserType.User: serializer.Serialize(writer, "User"); break;
            }
        }
    }

    static class DefaultBranchExtensions
    {
        public static DefaultBranch? ValueForString(string str)
        {
            switch (str)
            {
                case "master": return DefaultBranch.Master;
                default: return null;
            }
        }

        public static DefaultBranch ReadJson(JsonReader reader, JsonSerializer serializer)
        {
            var str = serializer.Deserialize<string>(reader);
            var maybeValue = ValueForString(str);
            if (maybeValue.HasValue) return maybeValue.Value;
            throw new Exception("Unknown enum case " + str);
        }

        public static void WriteJson(this DefaultBranch value, JsonWriter writer, JsonSerializer serializer)
        {
            switch (value)
            {
                case DefaultBranch.Master: serializer.Serialize(writer, "master"); break;
            }
        }
    }

    static class HomepageExtensions
    {
        public static Homepage? ValueForString(string str)
        {
            switch (str)
            {
                case "": return Homepage.Empty;
                case "https://valloric.github.io/ycmd/": return Homepage.HttpsValloricGithubIoYcmd;
                default: return null;
            }
        }

        public static Homepage ReadJson(JsonReader reader, JsonSerializer serializer)
        {
            var str = serializer.Deserialize<string>(reader);
            var maybeValue = ValueForString(str);
            if (maybeValue.HasValue) return maybeValue.Value;
            throw new Exception("Unknown enum case " + str);
        }

        public static void WriteJson(this Homepage value, JsonWriter writer, JsonSerializer serializer)
        {
            switch (value)
            {
                case Homepage.Empty: serializer.Serialize(writer, ""); break;
                case Homepage.HttpsValloricGithubIoYcmd: serializer.Serialize(writer, "https://valloric.github.io/ycmd/"); break;
            }
        }
    }

    static class FileTypeExtensions
    {
        public static FileType? ValueForString(string str)
        {
            switch (str)
            {
                case "application/javascript": return FileType.ApplicationJavascript;
                case "application/json": return FileType.ApplicationJson;
                case "text/css": return FileType.TextCss;
                case "text/html": return FileType.TextHtml;
                case "text/plain": return FileType.TextPlain;
                default: return null;
            }
        }

        public static FileType ReadJson(JsonReader reader, JsonSerializer serializer)
        {
            var str = serializer.Deserialize<string>(reader);
            var maybeValue = ValueForString(str);
            if (maybeValue.HasValue) return maybeValue.Value;
            throw new Exception("Unknown enum case " + str);
        }

        public static void WriteJson(this FileType value, JsonWriter writer, JsonSerializer serializer)
        {
            switch (value)
            {
                case FileType.ApplicationJavascript: serializer.Serialize(writer, "application/javascript"); break;
                case FileType.ApplicationJson: serializer.Serialize(writer, "application/json"); break;
                case FileType.TextCss: serializer.Serialize(writer, "text/css"); break;
                case FileType.TextHtml: serializer.Serialize(writer, "text/html"); break;
                case FileType.TextPlain: serializer.Serialize(writer, "text/plain"); break;
            }
        }
    }

    public static class Serialize
    {
        public static string ToJson(this Dictionary<string, string> self) => JsonConvert.SerializeObject(self, Converter.Settings);
        public static string ToJson(this Dictionary<string, string> self) => JsonConvert.SerializeObject(self, Converter.Settings);
        public static string ToJson(this Events[] self) => JsonConvert.SerializeObject(self, Converter.Settings);
        public static string ToJson(this Gists[] self) => JsonConvert.SerializeObject(self, Converter.Settings);
        public static string ToJson(this Meta self) => JsonConvert.SerializeObject(self, Converter.Settings);
    }

    public class Converter: JsonConverter
    {
        public override bool CanConvert(Type t) => t == typeof(GravatarId) || t == typeof(UserType) || t == typeof(DefaultBranch) || t == typeof(Homepage) || t == typeof(FileType) || t == typeof(GravatarId?) || t == typeof(UserType?) || t == typeof(DefaultBranch?) || t == typeof(Homepage?) || t == typeof(FileType?);

        public override object ReadJson(JsonReader reader, Type t, object existingValue, JsonSerializer serializer)
        {
            if (t == typeof(GravatarId))
                return GravatarIdExtensions.ReadJson(reader, serializer);
            if (t == typeof(UserType))
                return UserTypeExtensions.ReadJson(reader, serializer);
            if (t == typeof(DefaultBranch))
                return DefaultBranchExtensions.ReadJson(reader, serializer);
            if (t == typeof(Homepage))
                return HomepageExtensions.ReadJson(reader, serializer);
            if (t == typeof(FileType))
                return FileTypeExtensions.ReadJson(reader, serializer);
            if (t == typeof(GravatarId?))
            {
                if (reader.TokenType == JsonToken.Null) return null;
                return GravatarIdExtensions.ReadJson(reader, serializer);
            }
            if (t == typeof(UserType?))
            {
                if (reader.TokenType == JsonToken.Null) return null;
                return UserTypeExtensions.ReadJson(reader, serializer);
            }
            if (t == typeof(DefaultBranch?))
            {
                if (reader.TokenType == JsonToken.Null) return null;
                return DefaultBranchExtensions.ReadJson(reader, serializer);
            }
            if (t == typeof(Homepage?))
            {
                if (reader.TokenType == JsonToken.Null) return null;
                return HomepageExtensions.ReadJson(reader, serializer);
            }
            if (t == typeof(FileType?))
            {
                if (reader.TokenType == JsonToken.Null) return null;
                return FileTypeExtensions.ReadJson(reader, serializer);
            }
            throw new Exception("Unknown type");
        }

        public override void WriteJson(JsonWriter writer, object value, JsonSerializer serializer)
        {
            var t = value.GetType();
            if (t == typeof(GravatarId))
            {
                ((GravatarId)value).WriteJson(writer, serializer);
                return;
            }
            if (t == typeof(UserType))
            {
                ((UserType)value).WriteJson(writer, serializer);
                return;
            }
            if (t == typeof(DefaultBranch))
            {
                ((DefaultBranch)value).WriteJson(writer, serializer);
                return;
            }
            if (t == typeof(Homepage))
            {
                ((Homepage)value).WriteJson(writer, serializer);
                return;
            }
            if (t == typeof(FileType))
            {
                ((FileType)value).WriteJson(writer, serializer);
                return;
            }
            throw new Exception("Unknown type");
        }

        public static readonly JsonSerializerSettings Settings = new JsonSerializerSettings
        {
            MetadataPropertyHandling = MetadataPropertyHandling.Ignore,
            DateParseHandling = DateParseHandling.None,
            Converters = { new Converter() },
        };
    }
}
