// To parse the JSON, install Klaxon and do:
//
//   val aPIData = APIData.fromJson(jsonString)
//   val emojis = Emojis.fromJson(jsonString)
//   val events = Events.fromJson(jsonString)
//   val gists = Gists.fromJson(jsonString)
//   val meta = Meta.fromJson(jsonString)

package quicktype

import com.beust.klaxon.*

private fun <T> Klaxon.convert(k: kotlin.reflect.KClass<*>, fromJson: (JsonValue) -> T, toJson: (T) -> String, isUnion: Boolean = false) =
    this.converter(object: Converter {
        @Suppress("UNCHECKED_CAST")
        override fun toJson(value: Any)        = toJson(value as T)
        override fun fromJson(jv: JsonValue)   = fromJson(jv) as Any
        override fun canConvert(cls: Class<*>) = cls == k.java || (isUnion && cls.superclass == k.java)
    })

private val klaxon = Klaxon()
    .convert(Type::class, { Type.fromValue(it.string!!) }, { "\"${it.value}\"" })

class APIData(elements: Map<String, String>) : HashMap<String, String>(elements) {
    public fun toJson() = klaxon.toJsonString(this)

    companion object {
        public fun fromJson(json: String) = APIData (
            klaxon.parseJsonObject(java.io.StringReader(json)) as Map<String, String>
        )
    }
}
class Emojis(elements: Map<String, String>) : HashMap<String, String>(elements) {
    public fun toJson() = klaxon.toJsonString(this)

    companion object {
        public fun fromJson(json: String) = Emojis (
            klaxon.parseJsonObject(java.io.StringReader(json)) as Map<String, String>
        )
    }
}
class Events(elements: Collection<Event>) : ArrayList<Event>(elements) {
    public fun toJson() = klaxon.toJsonString(this)

    companion object {
        public fun fromJson(json: String) = Events(klaxon.parseArray<Event>(json)!!)
    }
}
class Gists(elements: Collection<Gist>) : ArrayList<Gist>(elements) {
    public fun toJson() = klaxon.toJsonString(this)

    companion object {
        public fun fromJson(json: String) = Gists(klaxon.parseArray<Gist>(json)!!)
    }
}

data class Event (
    val id: String,
    val type: String,
    val actor: Actor,
    val repo: EventRepo,
    val payload: Payload,
    val public: Boolean,

    @Json(name = "created_at")
    val createdAt: String,

    val org: Actor? = null
)

data class Actor (
    val id: Long,
    val login: String,

    @Json(name = "display_login")
    val displayLogin: String? = null,

    @Json(name = "gravatar_id")
    val gravatarID: String,

    val url: String,

    @Json(name = "avatar_url")
    val avatarURL: String
)

data class Payload (
    @Json(name = "push_id")
    val pushID: Long? = null,

    val size: Long? = null,

    @Json(name = "distinct_size")
    val distinctSize: Long? = null,

    val ref: String? = null,
    val head: String? = null,
    val before: String? = null,
    val commits: List<Commit>? = null,
    val action: String? = null,
    val number: Long? = null,

    @Json(name = "pull_request")
    val pullRequest: PullRequest? = null,

    @Json(name = "ref_type")
    val refType: String? = null,

    @Json(name = "master_branch")
    val masterBranch: String? = null,

    val description: String? = null,

    @Json(name = "pusher_type")
    val pusherType: String? = null,

    val comment: Comment? = null
)

data class Comment (
    val url: String,

    @Json(name = "pull_request_review_id")
    val pullRequestReviewID: Long,

    val id: Long,

    @Json(name = "node_id")
    val nodeID: String,

    @Json(name = "diff_hunk")
    val diffHunk: String,

    val path: String,
    val position: Long,

    @Json(name = "original_position")
    val originalPosition: Long,

    @Json(name = "commit_id")
    val commitID: String,

    @Json(name = "original_commit_id")
    val originalCommitID: String,

    val user: Owner,
    val body: String,

    @Json(name = "created_at")
    val createdAt: String,

    @Json(name = "updated_at")
    val updatedAt: String,

    @Json(name = "html_url")
    val htmlURL: String,

    @Json(name = "pull_request_url")
    val pullRequestURL: String,

    @Json(name = "author_association")
    val authorAssociation: String,

    @Json(name = "_links")
    val links: CommentLinks
)

data class CommentLinks (
    val self: HTML,
    val html: HTML,

    @Json(name = "pull_request")
    val pullRequest: HTML
)

data class HTML (
    val href: String
)

data class Owner (
    val login: String,
    val id: Long,

    @Json(name = "node_id")
    val nodeID: String,

    @Json(name = "avatar_url")
    val avatarURL: String,

    @Json(name = "gravatar_id")
    val gravatarID: String,

    val url: String,

    @Json(name = "html_url")
    val htmlURL: String,

    @Json(name = "followers_url")
    val followersURL: String,

    @Json(name = "following_url")
    val followingURL: String,

    @Json(name = "gists_url")
    val gistsURL: String,

    @Json(name = "starred_url")
    val starredURL: String,

    @Json(name = "subscriptions_url")
    val subscriptionsURL: String,

    @Json(name = "organizations_url")
    val organizationsURL: String,

    @Json(name = "repos_url")
    val reposURL: String,

    @Json(name = "events_url")
    val eventsURL: String,

    @Json(name = "received_events_url")
    val receivedEventsURL: String,

    val type: Type,

    @Json(name = "site_admin")
    val siteAdmin: Boolean
)

enum class Type(val value: String) {
    Organization("Organization"),
    User("User");

    companion object {
        public fun fromValue(value: String): Type = when (value) {
            "Organization" -> Organization
            "User"         -> User
            else           -> throw IllegalArgumentException()
        }
    }
}

data class Commit (
    val sha: String,
    val author: Author,
    val message: String,
    val distinct: Boolean,
    val url: String
)

data class Author (
    val email: String,
    val name: String
)

data class PullRequest (
    val url: String,
    val id: Long,

    @Json(name = "node_id")
    val nodeID: String,

    @Json(name = "html_url")
    val htmlURL: String,

    @Json(name = "diff_url")
    val diffURL: String,

    @Json(name = "patch_url")
    val patchURL: String,

    @Json(name = "issue_url")
    val issueURL: String,

    val number: Long,
    val state: String,
    val locked: Boolean,
    val title: String,
    val user: Owner,
    val body: String? = null,

    @Json(name = "created_at")
    val createdAt: String,

    @Json(name = "updated_at")
    val updatedAt: String,

    @Json(name = "closed_at")
    val closedAt: Any? = null,

    @Json(name = "merged_at")
    val mergedAt: Any? = null,

    @Json(name = "merge_commit_sha")
    val mergeCommitSHA: String? = null,

    val assignee: Any? = null,
    val assignees: List<Any?>,

    @Json(name = "requested_reviewers")
    val requestedReviewers: List<Any?>,

    @Json(name = "requested_teams")
    val requestedTeams: List<Any?>,

    val labels: List<Any?>,
    val milestone: Any? = null,

    @Json(name = "commits_url")
    val commitsURL: String,

    @Json(name = "review_comments_url")
    val reviewCommentsURL: String,

    @Json(name = "review_comment_url")
    val reviewCommentURL: String,

    @Json(name = "comments_url")
    val commentsURL: String,

    @Json(name = "statuses_url")
    val statusesURL: String,

    val head: Base,
    val base: Base,

    @Json(name = "_links")
    val links: PullRequestLinks,

    @Json(name = "author_association")
    val authorAssociation: String,

    val merged: Boolean? = null,
    val mergeable: Any? = null,
    val rebaseable: Any? = null,

    @Json(name = "mergeable_state")
    val mergeableState: String? = null,

    @Json(name = "merged_by")
    val mergedBy: Any? = null,

    val comments: Long? = null,

    @Json(name = "review_comments")
    val reviewComments: Long? = null,

    @Json(name = "maintainer_can_modify")
    val maintainerCanModify: Boolean? = null,

    val commits: Long? = null,
    val additions: Long? = null,
    val deletions: Long? = null,

    @Json(name = "changed_files")
    val changedFiles: Long? = null
)

data class Base (
    val label: String,
    val ref: String,
    val sha: String,
    val user: Owner,
    val repo: BaseRepo
)

data class BaseRepo (
    val id: Long,

    @Json(name = "node_id")
    val nodeID: String,

    val name: String,

    @Json(name = "full_name")
    val fullName: String,

    val owner: Owner,
    val private: Boolean,

    @Json(name = "html_url")
    val htmlURL: String,

    val description: String? = null,
    val fork: Boolean,
    val url: String,

    @Json(name = "forks_url")
    val forksURL: String,

    @Json(name = "keys_url")
    val keysURL: String,

    @Json(name = "collaborators_url")
    val collaboratorsURL: String,

    @Json(name = "teams_url")
    val teamsURL: String,

    @Json(name = "hooks_url")
    val hooksURL: String,

    @Json(name = "issue_events_url")
    val issueEventsURL: String,

    @Json(name = "events_url")
    val eventsURL: String,

    @Json(name = "assignees_url")
    val assigneesURL: String,

    @Json(name = "branches_url")
    val branchesURL: String,

    @Json(name = "tags_url")
    val tagsURL: String,

    @Json(name = "blobs_url")
    val blobsURL: String,

    @Json(name = "git_tags_url")
    val gitTagsURL: String,

    @Json(name = "git_refs_url")
    val gitRefsURL: String,

    @Json(name = "trees_url")
    val treesURL: String,

    @Json(name = "statuses_url")
    val statusesURL: String,

    @Json(name = "languages_url")
    val languagesURL: String,

    @Json(name = "stargazers_url")
    val stargazersURL: String,

    @Json(name = "contributors_url")
    val contributorsURL: String,

    @Json(name = "subscribers_url")
    val subscribersURL: String,

    @Json(name = "subscription_url")
    val subscriptionURL: String,

    @Json(name = "commits_url")
    val commitsURL: String,

    @Json(name = "git_commits_url")
    val gitCommitsURL: String,

    @Json(name = "comments_url")
    val commentsURL: String,

    @Json(name = "issue_comment_url")
    val issueCommentURL: String,

    @Json(name = "contents_url")
    val contentsURL: String,

    @Json(name = "compare_url")
    val compareURL: String,

    @Json(name = "merges_url")
    val mergesURL: String,

    @Json(name = "archive_url")
    val archiveURL: String,

    @Json(name = "downloads_url")
    val downloadsURL: String,

    @Json(name = "issues_url")
    val issuesURL: String,

    @Json(name = "pulls_url")
    val pullsURL: String,

    @Json(name = "milestones_url")
    val milestonesURL: String,

    @Json(name = "notifications_url")
    val notificationsURL: String,

    @Json(name = "labels_url")
    val labelsURL: String,

    @Json(name = "releases_url")
    val releasesURL: String,

    @Json(name = "deployments_url")
    val deploymentsURL: String,

    @Json(name = "created_at")
    val createdAt: String,

    @Json(name = "updated_at")
    val updatedAt: String,

    @Json(name = "pushed_at")
    val pushedAt: String,

    @Json(name = "git_url")
    val gitURL: String,

    @Json(name = "ssh_url")
    val sshURL: String,

    @Json(name = "clone_url")
    val cloneURL: String,

    @Json(name = "svn_url")
    val svnURL: String,

    val homepage: String? = null,
    val size: Long,

    @Json(name = "stargazers_count")
    val stargazersCount: Long,

    @Json(name = "watchers_count")
    val watchersCount: Long,

    val language: String,

    @Json(name = "has_issues")
    val hasIssues: Boolean,

    @Json(name = "has_projects")
    val hasProjects: Boolean,

    @Json(name = "has_downloads")
    val hasDownloads: Boolean,

    @Json(name = "has_wiki")
    val hasWiki: Boolean,

    @Json(name = "has_pages")
    val hasPages: Boolean,

    @Json(name = "forks_count")
    val forksCount: Long,

    @Json(name = "mirror_url")
    val mirrorURL: Any? = null,

    val archived: Boolean,

    @Json(name = "open_issues_count")
    val openIssuesCount: Long,

    val license: License? = null,
    val forks: Long,

    @Json(name = "open_issues")
    val openIssues: Long,

    val watchers: Long,

    @Json(name = "default_branch")
    val defaultBranch: String
)

data class License (
    val key: String,
    val name: String,

    @Json(name = "spdx_id")
    val spdxID: String? = null,

    val url: String? = null,

    @Json(name = "node_id")
    val nodeID: String
)

data class PullRequestLinks (
    val self: HTML,
    val html: HTML,
    val issue: HTML,
    val comments: HTML,

    @Json(name = "review_comments")
    val reviewComments: HTML,

    @Json(name = "review_comment")
    val reviewComment: HTML,

    val commits: HTML,
    val statuses: HTML
)

data class EventRepo (
    val id: Long,
    val name: String,
    val url: String
)

data class Gist (
    val url: String,

    @Json(name = "forks_url")
    val forksURL: String,

    @Json(name = "commits_url")
    val commitsURL: String,

    val id: String,

    @Json(name = "node_id")
    val nodeID: String,

    @Json(name = "git_pull_url")
    val gitPullURL: String,

    @Json(name = "git_push_url")
    val gitPushURL: String,

    @Json(name = "html_url")
    val htmlURL: String,

    val files: Map<String, File>,
    val public: Boolean,

    @Json(name = "created_at")
    val createdAt: String,

    @Json(name = "updated_at")
    val updatedAt: String,

    val description: String? = null,
    val comments: Long,
    val user: Any? = null,

    @Json(name = "comments_url")
    val commentsURL: String,

    val owner: Owner,
    val truncated: Boolean
)

data class File (
    val filename: String,
    val type: String,
    val language: String? = null,

    @Json(name = "raw_url")
    val rawURL: String,

    val size: Long
)

data class Meta (
    @Json(name = "verifiable_password_authentication")
    val verifiablePasswordAuthentication: Boolean,

    @Json(name = "github_services_sha")
    val githubServicesSHA: String,

    val hooks: List<String>,
    val git: List<String>,
    val pages: List<String>,
    val importer: List<String>
) {
    public fun toJson() = klaxon.toJsonString(this)

    companion object {
        public fun fromJson(json: String) = klaxon.parse<Meta>(json)
    }
}
