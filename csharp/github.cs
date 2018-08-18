// To parse this JSON data, add NuGet 'Newtonsoft.Json' then do one of these:
//
//    using QuickType;
//
//    var apiData = ApiData.FromJson(jsonString);
//    var emojis = Emojis.FromJson(jsonString);
//    var events = Events.FromJson(jsonString);
//    var gists = Gists.FromJson(jsonString);
//    var meta = Meta.FromJson(jsonString);

namespace QuickType
{
    using System;
    using System.Collections.Generic;

    using System.Globalization;
    using Newtonsoft.Json;
    using Newtonsoft.Json.Converters;

    public partial class Events
    {
        [JsonProperty("id")]
        public string Id { get; set; }

        [JsonProperty("type")]
        public string Type { get; set; }

        [JsonProperty("actor")]
        public Actor Actor { get; set; }

        [JsonProperty("repo")]
        public EventRepo Repo { get; set; }

        [JsonProperty("payload")]
        public Payload Payload { get; set; }

        [JsonProperty("public")]
        public bool Public { get; set; }

        [JsonProperty("created_at")]
        public DateTimeOffset CreatedAt { get; set; }

        [JsonProperty("org", NullValueHandling = NullValueHandling.Ignore)]
        public Actor Org { get; set; }
    }

    public partial class Actor
    {
        [JsonProperty("id")]
        public long Id { get; set; }

        [JsonProperty("login")]
        public string Login { get; set; }

        [JsonProperty("display_login", NullValueHandling = NullValueHandling.Ignore)]
        public string DisplayLogin { get; set; }

        [JsonProperty("gravatar_id")]
        public string GravatarId { get; set; }

        [JsonProperty("url")]
        public string Url { get; set; }

        [JsonProperty("avatar_url")]
        public string AvatarUrl { get; set; }
    }

    public partial class Payload
    {
        [JsonProperty("push_id", NullValueHandling = NullValueHandling.Ignore)]
        public long? PushId { get; set; }

        [JsonProperty("size", NullValueHandling = NullValueHandling.Ignore)]
        public long? Size { get; set; }

        [JsonProperty("distinct_size", NullValueHandling = NullValueHandling.Ignore)]
        public long? DistinctSize { get; set; }

        [JsonProperty("ref")]
        public string Ref { get; set; }

        [JsonProperty("head", NullValueHandling = NullValueHandling.Ignore)]
        public string Head { get; set; }

        [JsonProperty("before", NullValueHandling = NullValueHandling.Ignore)]
        public string Before { get; set; }

        [JsonProperty("commits", NullValueHandling = NullValueHandling.Ignore)]
        public Commit[] Commits { get; set; }

        [JsonProperty("action", NullValueHandling = NullValueHandling.Ignore)]
        public string Action { get; set; }

        [JsonProperty("number", NullValueHandling = NullValueHandling.Ignore)]
        public long? Number { get; set; }

        [JsonProperty("pull_request", NullValueHandling = NullValueHandling.Ignore)]
        public PullRequest PullRequest { get; set; }

        [JsonProperty("ref_type", NullValueHandling = NullValueHandling.Ignore)]
        public string RefType { get; set; }

        [JsonProperty("master_branch", NullValueHandling = NullValueHandling.Ignore)]
        public string MasterBranch { get; set; }

        [JsonProperty("description")]
        public string Description { get; set; }

        [JsonProperty("pusher_type", NullValueHandling = NullValueHandling.Ignore)]
        public string PusherType { get; set; }

        [JsonProperty("comment", NullValueHandling = NullValueHandling.Ignore)]
        public Comment Comment { get; set; }
    }

    public partial class Comment
    {
        [JsonProperty("url")]
        public string Url { get; set; }

        [JsonProperty("pull_request_review_id")]
        public long PullRequestReviewId { get; set; }

        [JsonProperty("id")]
        public long Id { get; set; }

        [JsonProperty("node_id")]
        public string NodeId { get; set; }

        [JsonProperty("diff_hunk")]
        public string DiffHunk { get; set; }

        [JsonProperty("path")]
        public string Path { get; set; }

        [JsonProperty("position")]
        public long Position { get; set; }

        [JsonProperty("original_position")]
        public long OriginalPosition { get; set; }

        [JsonProperty("commit_id")]
        public string CommitId { get; set; }

        [JsonProperty("original_commit_id")]
        public string OriginalCommitId { get; set; }

        [JsonProperty("user")]
        public Owner User { get; set; }

        [JsonProperty("body")]
        public string Body { get; set; }

        [JsonProperty("created_at")]
        public DateTimeOffset CreatedAt { get; set; }

        [JsonProperty("updated_at")]
        public DateTimeOffset UpdatedAt { get; set; }

        [JsonProperty("html_url")]
        public string HtmlUrl { get; set; }

        [JsonProperty("pull_request_url")]
        public string PullRequestUrl { get; set; }

        [JsonProperty("author_association")]
        public string AuthorAssociation { get; set; }

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

    public partial class Owner
    {
        [JsonProperty("login")]
        public string Login { get; set; }

        [JsonProperty("id")]
        public long Id { get; set; }

        [JsonProperty("node_id")]
        public string NodeId { get; set; }

        [JsonProperty("avatar_url")]
        public string AvatarUrl { get; set; }

        [JsonProperty("gravatar_id")]
        public string GravatarId { get; set; }

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
        public TypeEnum Type { get; set; }

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

    public partial class PullRequest
    {
        [JsonProperty("url")]
        public string Url { get; set; }

        [JsonProperty("id")]
        public long Id { get; set; }

        [JsonProperty("node_id")]
        public string NodeId { get; set; }

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
        public Owner User { get; set; }

        [JsonProperty("body")]
        public string Body { get; set; }

        [JsonProperty("created_at")]
        public DateTimeOffset CreatedAt { get; set; }

        [JsonProperty("updated_at")]
        public DateTimeOffset UpdatedAt { get; set; }

        [JsonProperty("closed_at")]
        public object ClosedAt { get; set; }

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

        [JsonProperty("labels")]
        public object[] Labels { get; set; }

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

        [JsonProperty("merged", NullValueHandling = NullValueHandling.Ignore)]
        public bool? Merged { get; set; }

        [JsonProperty("mergeable")]
        public object Mergeable { get; set; }

        [JsonProperty("rebaseable")]
        public object Rebaseable { get; set; }

        [JsonProperty("mergeable_state", NullValueHandling = NullValueHandling.Ignore)]
        public string MergeableState { get; set; }

        [JsonProperty("merged_by")]
        public object MergedBy { get; set; }

        [JsonProperty("comments", NullValueHandling = NullValueHandling.Ignore)]
        public long? Comments { get; set; }

        [JsonProperty("review_comments", NullValueHandling = NullValueHandling.Ignore)]
        public long? ReviewComments { get; set; }

        [JsonProperty("maintainer_can_modify", NullValueHandling = NullValueHandling.Ignore)]
        public bool? MaintainerCanModify { get; set; }

        [JsonProperty("commits", NullValueHandling = NullValueHandling.Ignore)]
        public long? Commits { get; set; }

        [JsonProperty("additions", NullValueHandling = NullValueHandling.Ignore)]
        public long? Additions { get; set; }

        [JsonProperty("deletions", NullValueHandling = NullValueHandling.Ignore)]
        public long? Deletions { get; set; }

        [JsonProperty("changed_files", NullValueHandling = NullValueHandling.Ignore)]
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
        public Owner User { get; set; }

        [JsonProperty("repo")]
        public BaseRepo Repo { get; set; }
    }

    public partial class BaseRepo
    {
        [JsonProperty("id")]
        public long Id { get; set; }

        [JsonProperty("node_id")]
        public string NodeId { get; set; }

        [JsonProperty("name")]
        public string Name { get; set; }

        [JsonProperty("full_name")]
        public string FullName { get; set; }

        [JsonProperty("owner")]
        public Owner Owner { get; set; }

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
        public DateTimeOffset CreatedAt { get; set; }

        [JsonProperty("updated_at")]
        public DateTimeOffset UpdatedAt { get; set; }

        [JsonProperty("pushed_at")]
        public DateTimeOffset PushedAt { get; set; }

        [JsonProperty("git_url")]
        public string GitUrl { get; set; }

        [JsonProperty("ssh_url")]
        public string SshUrl { get; set; }

        [JsonProperty("clone_url")]
        public string CloneUrl { get; set; }

        [JsonProperty("svn_url")]
        public string SvnUrl { get; set; }

        [JsonProperty("homepage")]
        public string Homepage { get; set; }

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
        public string DefaultBranch { get; set; }
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

        [JsonProperty("node_id")]
        public string NodeId { get; set; }
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

    public partial class EventRepo
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

        [JsonProperty("node_id")]
        public string NodeId { get; set; }

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
        public DateTimeOffset CreatedAt { get; set; }

        [JsonProperty("updated_at")]
        public DateTimeOffset UpdatedAt { get; set; }

        [JsonProperty("description")]
        public string Description { get; set; }

        [JsonProperty("comments")]
        public long Comments { get; set; }

        [JsonProperty("user")]
        public object User { get; set; }

        [JsonProperty("comments_url")]
        public string CommentsUrl { get; set; }

        [JsonProperty("owner")]
        public Owner Owner { get; set; }

        [JsonProperty("truncated")]
        public bool Truncated { get; set; }
    }

    public partial class File
    {
        [JsonProperty("filename")]
        public string Filename { get; set; }

        [JsonProperty("type")]
        public string Type { get; set; }

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

    public enum TypeEnum { Organization, User };

    public class ApiData
    {
        public static Dictionary<string, string> FromJson(string json) => JsonConvert.DeserializeObject<Dictionary<string, string>>(json, QuickType.Converter.Settings);
    }

    public class Emojis
    {
        public static Dictionary<string, string> FromJson(string json) => JsonConvert.DeserializeObject<Dictionary<string, string>>(json, QuickType.Converter.Settings);
    }

    public partial class Events
    {
        public static Events[] FromJson(string json) => JsonConvert.DeserializeObject<Events[]>(json, QuickType.Converter.Settings);
    }

    public partial class Gists
    {
        public static Gists[] FromJson(string json) => JsonConvert.DeserializeObject<Gists[]>(json, QuickType.Converter.Settings);
    }

    public partial class Meta
    {
        public static Meta FromJson(string json) => JsonConvert.DeserializeObject<Meta>(json, QuickType.Converter.Settings);
    }

    public static class Serialize
    {
        public static string ToJson(this Dictionary<string, string> self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this Events[] self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this Gists[] self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this Meta self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
    }

    internal static class Converter
    {
        public static readonly JsonSerializerSettings Settings = new JsonSerializerSettings
        {
            MetadataPropertyHandling = MetadataPropertyHandling.Ignore,
            DateParseHandling = DateParseHandling.None,
            Converters = {
                TypeEnumConverter.Singleton,
                new IsoDateTimeConverter { DateTimeStyles = DateTimeStyles.AssumeUniversal }
            },
        };
    }

    internal class TypeEnumConverter : JsonConverter
    {
        public override bool CanConvert(Type t) => t == typeof(TypeEnum) || t == typeof(TypeEnum?);

        public override object ReadJson(JsonReader reader, Type t, object existingValue, JsonSerializer serializer)
        {
            if (reader.TokenType == JsonToken.Null) return null;
            var value = serializer.Deserialize<string>(reader);
            switch (value)
            {
                case "Organization":
                    return TypeEnum.Organization;
                case "User":
                    return TypeEnum.User;
            }
            throw new Exception("Cannot unmarshal type TypeEnum");
        }

        public override void WriteJson(JsonWriter writer, object untypedValue, JsonSerializer serializer)
        {
            if (untypedValue == null)
            {
                serializer.Serialize(writer, null);
                return;
            }
            var value = (TypeEnum)untypedValue;
            switch (value)
            {
                case TypeEnum.Organization:
                    serializer.Serialize(writer, "Organization");
                    return;
                case TypeEnum.User:
                    serializer.Serialize(writer, "User");
                    return;
            }
            throw new Exception("Cannot marshal type TypeEnum");
        }

        public static readonly TypeEnumConverter Singleton = new TypeEnumConverter();
    }
}
