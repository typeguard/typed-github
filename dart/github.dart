// To parse this JSON data, do
//
//     final apiData = apiDataFromJson(jsonString);
//     final emojis = emojisFromJson(jsonString);
//     final events = eventsFromJson(jsonString);
//     final gists = gistsFromJson(jsonString);
//     final meta = metaFromJson(jsonString);

import 'dart:convert';

Map<String, String> apiDataFromJson(String str) {
    final jsonData = json.decode(str);
    return new Map.from(jsonData).map((k, v) => new MapEntry<String, String>(k, v));
}

String apiDataToJson(Map<String, String> data) {
    final dyn = new Map.from(data).map((k, v) => new MapEntry<String, dynamic>(k, v));
    return json.encode(dyn);
}

Map<String, String> emojisFromJson(String str) {
    final jsonData = json.decode(str);
    return new Map.from(jsonData).map((k, v) => new MapEntry<String, String>(k, v));
}

String emojisToJson(Map<String, String> data) {
    final dyn = new Map.from(data).map((k, v) => new MapEntry<String, dynamic>(k, v));
    return json.encode(dyn);
}

List<Events> eventsFromJson(String str) {
    final jsonData = json.decode(str);
    return new List<Events>.from(jsonData.map((x) => Events.fromJson(x)));
}

String eventsToJson(List<Events> data) {
    final dyn = new List<dynamic>.from(data.map((x) => x.toJson()));
    return json.encode(dyn);
}

List<Gists> gistsFromJson(String str) {
    final jsonData = json.decode(str);
    return new List<Gists>.from(jsonData.map((x) => Gists.fromJson(x)));
}

String gistsToJson(List<Gists> data) {
    final dyn = new List<dynamic>.from(data.map((x) => x.toJson()));
    return json.encode(dyn);
}

Meta metaFromJson(String str) {
    final jsonData = json.decode(str);
    return Meta.fromJson(jsonData);
}

String metaToJson(Meta data) {
    final dyn = data.toJson();
    return json.encode(dyn);
}

class Events {
    String id;
    String type;
    Actor actor;
    EventRepo repo;
    Payload payload;
    bool public;
    String createdAt;
    Actor org;

    Events({
        this.id,
        this.type,
        this.actor,
        this.repo,
        this.payload,
        this.public,
        this.createdAt,
        this.org,
    });

    factory Events.fromJson(Map<String, dynamic> json) => new Events(
        id: json["id"],
        type: json["type"],
        actor: Actor.fromJson(json["actor"]),
        repo: EventRepo.fromJson(json["repo"]),
        payload: Payload.fromJson(json["payload"]),
        public: json["public"],
        createdAt: json["created_at"],
        org: json["org"] == null ? null : Actor.fromJson(json["org"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "actor": actor.toJson(),
        "repo": repo.toJson(),
        "payload": payload.toJson(),
        "public": public,
        "created_at": createdAt,
        "org": org == null ? null : org.toJson(),
    };
}

class Actor {
    int id;
    String login;
    String displayLogin;
    String gravatarId;
    String url;
    String avatarUrl;

    Actor({
        this.id,
        this.login,
        this.displayLogin,
        this.gravatarId,
        this.url,
        this.avatarUrl,
    });

    factory Actor.fromJson(Map<String, dynamic> json) => new Actor(
        id: json["id"],
        login: json["login"],
        displayLogin: json["display_login"] == null ? null : json["display_login"],
        gravatarId: json["gravatar_id"],
        url: json["url"],
        avatarUrl: json["avatar_url"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "login": login,
        "display_login": displayLogin == null ? null : displayLogin,
        "gravatar_id": gravatarId,
        "url": url,
        "avatar_url": avatarUrl,
    };
}

class Payload {
    int pushId;
    int size;
    int distinctSize;
    String ref;
    String head;
    String before;
    List<Commit> commits;
    String action;
    int number;
    PullRequest pullRequest;
    String refType;
    String masterBranch;
    String description;
    String pusherType;
    Comment comment;

    Payload({
        this.pushId,
        this.size,
        this.distinctSize,
        this.ref,
        this.head,
        this.before,
        this.commits,
        this.action,
        this.number,
        this.pullRequest,
        this.refType,
        this.masterBranch,
        this.description,
        this.pusherType,
        this.comment,
    });

    factory Payload.fromJson(Map<String, dynamic> json) => new Payload(
        pushId: json["push_id"] == null ? null : json["push_id"],
        size: json["size"] == null ? null : json["size"],
        distinctSize: json["distinct_size"] == null ? null : json["distinct_size"],
        ref: json["ref"] == null ? null : json["ref"],
        head: json["head"] == null ? null : json["head"],
        before: json["before"] == null ? null : json["before"],
        commits: json["commits"] == null ? null : new List<Commit>.from(json["commits"].map((x) => Commit.fromJson(x))),
        action: json["action"] == null ? null : json["action"],
        number: json["number"] == null ? null : json["number"],
        pullRequest: json["pull_request"] == null ? null : PullRequest.fromJson(json["pull_request"]),
        refType: json["ref_type"] == null ? null : json["ref_type"],
        masterBranch: json["master_branch"] == null ? null : json["master_branch"],
        description: json["description"] == null ? null : json["description"],
        pusherType: json["pusher_type"] == null ? null : json["pusher_type"],
        comment: json["comment"] == null ? null : Comment.fromJson(json["comment"]),
    );

    Map<String, dynamic> toJson() => {
        "push_id": pushId == null ? null : pushId,
        "size": size == null ? null : size,
        "distinct_size": distinctSize == null ? null : distinctSize,
        "ref": ref == null ? null : ref,
        "head": head == null ? null : head,
        "before": before == null ? null : before,
        "commits": commits == null ? null : new List<dynamic>.from(commits.map((x) => x.toJson())),
        "action": action == null ? null : action,
        "number": number == null ? null : number,
        "pull_request": pullRequest == null ? null : pullRequest.toJson(),
        "ref_type": refType == null ? null : refType,
        "master_branch": masterBranch == null ? null : masterBranch,
        "description": description == null ? null : description,
        "pusher_type": pusherType == null ? null : pusherType,
        "comment": comment == null ? null : comment.toJson(),
    };
}

class Comment {
    String url;
    int pullRequestReviewId;
    int id;
    String nodeId;
    String diffHunk;
    String path;
    int position;
    int originalPosition;
    String commitId;
    String originalCommitId;
    Owner user;
    String body;
    String createdAt;
    String updatedAt;
    String htmlUrl;
    String pullRequestUrl;
    String authorAssociation;
    CommentLinks links;

    Comment({
        this.url,
        this.pullRequestReviewId,
        this.id,
        this.nodeId,
        this.diffHunk,
        this.path,
        this.position,
        this.originalPosition,
        this.commitId,
        this.originalCommitId,
        this.user,
        this.body,
        this.createdAt,
        this.updatedAt,
        this.htmlUrl,
        this.pullRequestUrl,
        this.authorAssociation,
        this.links,
    });

    factory Comment.fromJson(Map<String, dynamic> json) => new Comment(
        url: json["url"],
        pullRequestReviewId: json["pull_request_review_id"],
        id: json["id"],
        nodeId: json["node_id"],
        diffHunk: json["diff_hunk"],
        path: json["path"],
        position: json["position"],
        originalPosition: json["original_position"],
        commitId: json["commit_id"],
        originalCommitId: json["original_commit_id"],
        user: Owner.fromJson(json["user"]),
        body: json["body"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        htmlUrl: json["html_url"],
        pullRequestUrl: json["pull_request_url"],
        authorAssociation: json["author_association"],
        links: CommentLinks.fromJson(json["_links"]),
    );

    Map<String, dynamic> toJson() => {
        "url": url,
        "pull_request_review_id": pullRequestReviewId,
        "id": id,
        "node_id": nodeId,
        "diff_hunk": diffHunk,
        "path": path,
        "position": position,
        "original_position": originalPosition,
        "commit_id": commitId,
        "original_commit_id": originalCommitId,
        "user": user.toJson(),
        "body": body,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "html_url": htmlUrl,
        "pull_request_url": pullRequestUrl,
        "author_association": authorAssociation,
        "_links": links.toJson(),
    };
}

class CommentLinks {
    Html self;
    Html html;
    Html pullRequest;

    CommentLinks({
        this.self,
        this.html,
        this.pullRequest,
    });

    factory CommentLinks.fromJson(Map<String, dynamic> json) => new CommentLinks(
        self: Html.fromJson(json["self"]),
        html: Html.fromJson(json["html"]),
        pullRequest: Html.fromJson(json["pull_request"]),
    );

    Map<String, dynamic> toJson() => {
        "self": self.toJson(),
        "html": html.toJson(),
        "pull_request": pullRequest.toJson(),
    };
}

class Html {
    String href;

    Html({
        this.href,
    });

    factory Html.fromJson(Map<String, dynamic> json) => new Html(
        href: json["href"],
    );

    Map<String, dynamic> toJson() => {
        "href": href,
    };
}

class Owner {
    String login;
    int id;
    String nodeId;
    String avatarUrl;
    String gravatarId;
    String url;
    String htmlUrl;
    String followersUrl;
    String followingUrl;
    String gistsUrl;
    String starredUrl;
    String subscriptionsUrl;
    String organizationsUrl;
    String reposUrl;
    String eventsUrl;
    String receivedEventsUrl;
    Type type;
    bool siteAdmin;

    Owner({
        this.login,
        this.id,
        this.nodeId,
        this.avatarUrl,
        this.gravatarId,
        this.url,
        this.htmlUrl,
        this.followersUrl,
        this.followingUrl,
        this.gistsUrl,
        this.starredUrl,
        this.subscriptionsUrl,
        this.organizationsUrl,
        this.reposUrl,
        this.eventsUrl,
        this.receivedEventsUrl,
        this.type,
        this.siteAdmin,
    });

    factory Owner.fromJson(Map<String, dynamic> json) => new Owner(
        login: json["login"],
        id: json["id"],
        nodeId: json["node_id"],
        avatarUrl: json["avatar_url"],
        gravatarId: json["gravatar_id"],
        url: json["url"],
        htmlUrl: json["html_url"],
        followersUrl: json["followers_url"],
        followingUrl: json["following_url"],
        gistsUrl: json["gists_url"],
        starredUrl: json["starred_url"],
        subscriptionsUrl: json["subscriptions_url"],
        organizationsUrl: json["organizations_url"],
        reposUrl: json["repos_url"],
        eventsUrl: json["events_url"],
        receivedEventsUrl: json["received_events_url"],
        type: typeValues.map[json["type"]],
        siteAdmin: json["site_admin"],
    );

    Map<String, dynamic> toJson() => {
        "login": login,
        "id": id,
        "node_id": nodeId,
        "avatar_url": avatarUrl,
        "gravatar_id": gravatarId,
        "url": url,
        "html_url": htmlUrl,
        "followers_url": followersUrl,
        "following_url": followingUrl,
        "gists_url": gistsUrl,
        "starred_url": starredUrl,
        "subscriptions_url": subscriptionsUrl,
        "organizations_url": organizationsUrl,
        "repos_url": reposUrl,
        "events_url": eventsUrl,
        "received_events_url": receivedEventsUrl,
        "type": typeValues.reverse[type],
        "site_admin": siteAdmin,
    };
}

enum Type { USER, ORGANIZATION }

final typeValues = new EnumValues({
    "Organization": Type.ORGANIZATION,
    "User": Type.USER
});

class Commit {
    String sha;
    Author author;
    String message;
    bool distinct;
    String url;

    Commit({
        this.sha,
        this.author,
        this.message,
        this.distinct,
        this.url,
    });

    factory Commit.fromJson(Map<String, dynamic> json) => new Commit(
        sha: json["sha"],
        author: Author.fromJson(json["author"]),
        message: json["message"],
        distinct: json["distinct"],
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "sha": sha,
        "author": author.toJson(),
        "message": message,
        "distinct": distinct,
        "url": url,
    };
}

class Author {
    String email;
    String name;

    Author({
        this.email,
        this.name,
    });

    factory Author.fromJson(Map<String, dynamic> json) => new Author(
        email: json["email"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "email": email,
        "name": name,
    };
}

class PullRequest {
    String url;
    int id;
    String nodeId;
    String htmlUrl;
    String diffUrl;
    String patchUrl;
    String issueUrl;
    int number;
    String state;
    bool locked;
    String title;
    Owner user;
    String body;
    String createdAt;
    String updatedAt;
    dynamic closedAt;
    dynamic mergedAt;
    String mergeCommitSha;
    dynamic assignee;
    List<dynamic> assignees;
    List<dynamic> requestedReviewers;
    List<dynamic> requestedTeams;
    List<dynamic> labels;
    dynamic milestone;
    String commitsUrl;
    String reviewCommentsUrl;
    String reviewCommentUrl;
    String commentsUrl;
    String statusesUrl;
    Base head;
    Base base;
    PullRequestLinks links;
    String authorAssociation;
    bool merged;
    dynamic mergeable;
    dynamic rebaseable;
    String mergeableState;
    dynamic mergedBy;
    int comments;
    int reviewComments;
    bool maintainerCanModify;
    int commits;
    int additions;
    int deletions;
    int changedFiles;

    PullRequest({
        this.url,
        this.id,
        this.nodeId,
        this.htmlUrl,
        this.diffUrl,
        this.patchUrl,
        this.issueUrl,
        this.number,
        this.state,
        this.locked,
        this.title,
        this.user,
        this.body,
        this.createdAt,
        this.updatedAt,
        this.closedAt,
        this.mergedAt,
        this.mergeCommitSha,
        this.assignee,
        this.assignees,
        this.requestedReviewers,
        this.requestedTeams,
        this.labels,
        this.milestone,
        this.commitsUrl,
        this.reviewCommentsUrl,
        this.reviewCommentUrl,
        this.commentsUrl,
        this.statusesUrl,
        this.head,
        this.base,
        this.links,
        this.authorAssociation,
        this.merged,
        this.mergeable,
        this.rebaseable,
        this.mergeableState,
        this.mergedBy,
        this.comments,
        this.reviewComments,
        this.maintainerCanModify,
        this.commits,
        this.additions,
        this.deletions,
        this.changedFiles,
    });

    factory PullRequest.fromJson(Map<String, dynamic> json) => new PullRequest(
        url: json["url"],
        id: json["id"],
        nodeId: json["node_id"],
        htmlUrl: json["html_url"],
        diffUrl: json["diff_url"],
        patchUrl: json["patch_url"],
        issueUrl: json["issue_url"],
        number: json["number"],
        state: json["state"],
        locked: json["locked"],
        title: json["title"],
        user: Owner.fromJson(json["user"]),
        body: json["body"] == null ? null : json["body"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        closedAt: json["closed_at"],
        mergedAt: json["merged_at"],
        mergeCommitSha: json["merge_commit_sha"] == null ? null : json["merge_commit_sha"],
        assignee: json["assignee"],
        assignees: new List<dynamic>.from(json["assignees"].map((x) => x)),
        requestedReviewers: new List<dynamic>.from(json["requested_reviewers"].map((x) => x)),
        requestedTeams: new List<dynamic>.from(json["requested_teams"].map((x) => x)),
        labels: new List<dynamic>.from(json["labels"].map((x) => x)),
        milestone: json["milestone"],
        commitsUrl: json["commits_url"],
        reviewCommentsUrl: json["review_comments_url"],
        reviewCommentUrl: json["review_comment_url"],
        commentsUrl: json["comments_url"],
        statusesUrl: json["statuses_url"],
        head: Base.fromJson(json["head"]),
        base: Base.fromJson(json["base"]),
        links: PullRequestLinks.fromJson(json["_links"]),
        authorAssociation: json["author_association"],
        merged: json["merged"] == null ? null : json["merged"],
        mergeable: json["mergeable"],
        rebaseable: json["rebaseable"],
        mergeableState: json["mergeable_state"] == null ? null : json["mergeable_state"],
        mergedBy: json["merged_by"],
        comments: json["comments"] == null ? null : json["comments"],
        reviewComments: json["review_comments"] == null ? null : json["review_comments"],
        maintainerCanModify: json["maintainer_can_modify"] == null ? null : json["maintainer_can_modify"],
        commits: json["commits"] == null ? null : json["commits"],
        additions: json["additions"] == null ? null : json["additions"],
        deletions: json["deletions"] == null ? null : json["deletions"],
        changedFiles: json["changed_files"] == null ? null : json["changed_files"],
    );

    Map<String, dynamic> toJson() => {
        "url": url,
        "id": id,
        "node_id": nodeId,
        "html_url": htmlUrl,
        "diff_url": diffUrl,
        "patch_url": patchUrl,
        "issue_url": issueUrl,
        "number": number,
        "state": state,
        "locked": locked,
        "title": title,
        "user": user.toJson(),
        "body": body == null ? null : body,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "closed_at": closedAt,
        "merged_at": mergedAt,
        "merge_commit_sha": mergeCommitSha == null ? null : mergeCommitSha,
        "assignee": assignee,
        "assignees": new List<dynamic>.from(assignees.map((x) => x)),
        "requested_reviewers": new List<dynamic>.from(requestedReviewers.map((x) => x)),
        "requested_teams": new List<dynamic>.from(requestedTeams.map((x) => x)),
        "labels": new List<dynamic>.from(labels.map((x) => x)),
        "milestone": milestone,
        "commits_url": commitsUrl,
        "review_comments_url": reviewCommentsUrl,
        "review_comment_url": reviewCommentUrl,
        "comments_url": commentsUrl,
        "statuses_url": statusesUrl,
        "head": head.toJson(),
        "base": base.toJson(),
        "_links": links.toJson(),
        "author_association": authorAssociation,
        "merged": merged == null ? null : merged,
        "mergeable": mergeable,
        "rebaseable": rebaseable,
        "mergeable_state": mergeableState == null ? null : mergeableState,
        "merged_by": mergedBy,
        "comments": comments == null ? null : comments,
        "review_comments": reviewComments == null ? null : reviewComments,
        "maintainer_can_modify": maintainerCanModify == null ? null : maintainerCanModify,
        "commits": commits == null ? null : commits,
        "additions": additions == null ? null : additions,
        "deletions": deletions == null ? null : deletions,
        "changed_files": changedFiles == null ? null : changedFiles,
    };
}

class Base {
    String label;
    String ref;
    String sha;
    Owner user;
    BaseRepo repo;

    Base({
        this.label,
        this.ref,
        this.sha,
        this.user,
        this.repo,
    });

    factory Base.fromJson(Map<String, dynamic> json) => new Base(
        label: json["label"],
        ref: json["ref"],
        sha: json["sha"],
        user: Owner.fromJson(json["user"]),
        repo: BaseRepo.fromJson(json["repo"]),
    );

    Map<String, dynamic> toJson() => {
        "label": label,
        "ref": ref,
        "sha": sha,
        "user": user.toJson(),
        "repo": repo.toJson(),
    };
}

class BaseRepo {
    int id;
    String nodeId;
    String name;
    String fullName;
    Owner owner;
    bool private;
    String htmlUrl;
    String description;
    bool fork;
    String url;
    String forksUrl;
    String keysUrl;
    String collaboratorsUrl;
    String teamsUrl;
    String hooksUrl;
    String issueEventsUrl;
    String eventsUrl;
    String assigneesUrl;
    String branchesUrl;
    String tagsUrl;
    String blobsUrl;
    String gitTagsUrl;
    String gitRefsUrl;
    String treesUrl;
    String statusesUrl;
    String languagesUrl;
    String stargazersUrl;
    String contributorsUrl;
    String subscribersUrl;
    String subscriptionUrl;
    String commitsUrl;
    String gitCommitsUrl;
    String commentsUrl;
    String issueCommentUrl;
    String contentsUrl;
    String compareUrl;
    String mergesUrl;
    String archiveUrl;
    String downloadsUrl;
    String issuesUrl;
    String pullsUrl;
    String milestonesUrl;
    String notificationsUrl;
    String labelsUrl;
    String releasesUrl;
    String deploymentsUrl;
    String createdAt;
    String updatedAt;
    String pushedAt;
    String gitUrl;
    String sshUrl;
    String cloneUrl;
    String svnUrl;
    String homepage;
    int size;
    int stargazersCount;
    int watchersCount;
    String language;
    bool hasIssues;
    bool hasProjects;
    bool hasDownloads;
    bool hasWiki;
    bool hasPages;
    int forksCount;
    dynamic mirrorUrl;
    bool archived;
    int openIssuesCount;
    License license;
    int forks;
    int openIssues;
    int watchers;
    String defaultBranch;

    BaseRepo({
        this.id,
        this.nodeId,
        this.name,
        this.fullName,
        this.owner,
        this.private,
        this.htmlUrl,
        this.description,
        this.fork,
        this.url,
        this.forksUrl,
        this.keysUrl,
        this.collaboratorsUrl,
        this.teamsUrl,
        this.hooksUrl,
        this.issueEventsUrl,
        this.eventsUrl,
        this.assigneesUrl,
        this.branchesUrl,
        this.tagsUrl,
        this.blobsUrl,
        this.gitTagsUrl,
        this.gitRefsUrl,
        this.treesUrl,
        this.statusesUrl,
        this.languagesUrl,
        this.stargazersUrl,
        this.contributorsUrl,
        this.subscribersUrl,
        this.subscriptionUrl,
        this.commitsUrl,
        this.gitCommitsUrl,
        this.commentsUrl,
        this.issueCommentUrl,
        this.contentsUrl,
        this.compareUrl,
        this.mergesUrl,
        this.archiveUrl,
        this.downloadsUrl,
        this.issuesUrl,
        this.pullsUrl,
        this.milestonesUrl,
        this.notificationsUrl,
        this.labelsUrl,
        this.releasesUrl,
        this.deploymentsUrl,
        this.createdAt,
        this.updatedAt,
        this.pushedAt,
        this.gitUrl,
        this.sshUrl,
        this.cloneUrl,
        this.svnUrl,
        this.homepage,
        this.size,
        this.stargazersCount,
        this.watchersCount,
        this.language,
        this.hasIssues,
        this.hasProjects,
        this.hasDownloads,
        this.hasWiki,
        this.hasPages,
        this.forksCount,
        this.mirrorUrl,
        this.archived,
        this.openIssuesCount,
        this.license,
        this.forks,
        this.openIssues,
        this.watchers,
        this.defaultBranch,
    });

    factory BaseRepo.fromJson(Map<String, dynamic> json) => new BaseRepo(
        id: json["id"],
        nodeId: json["node_id"],
        name: json["name"],
        fullName: json["full_name"],
        owner: Owner.fromJson(json["owner"]),
        private: json["private"],
        htmlUrl: json["html_url"],
        description: json["description"] == null ? null : json["description"],
        fork: json["fork"],
        url: json["url"],
        forksUrl: json["forks_url"],
        keysUrl: json["keys_url"],
        collaboratorsUrl: json["collaborators_url"],
        teamsUrl: json["teams_url"],
        hooksUrl: json["hooks_url"],
        issueEventsUrl: json["issue_events_url"],
        eventsUrl: json["events_url"],
        assigneesUrl: json["assignees_url"],
        branchesUrl: json["branches_url"],
        tagsUrl: json["tags_url"],
        blobsUrl: json["blobs_url"],
        gitTagsUrl: json["git_tags_url"],
        gitRefsUrl: json["git_refs_url"],
        treesUrl: json["trees_url"],
        statusesUrl: json["statuses_url"],
        languagesUrl: json["languages_url"],
        stargazersUrl: json["stargazers_url"],
        contributorsUrl: json["contributors_url"],
        subscribersUrl: json["subscribers_url"],
        subscriptionUrl: json["subscription_url"],
        commitsUrl: json["commits_url"],
        gitCommitsUrl: json["git_commits_url"],
        commentsUrl: json["comments_url"],
        issueCommentUrl: json["issue_comment_url"],
        contentsUrl: json["contents_url"],
        compareUrl: json["compare_url"],
        mergesUrl: json["merges_url"],
        archiveUrl: json["archive_url"],
        downloadsUrl: json["downloads_url"],
        issuesUrl: json["issues_url"],
        pullsUrl: json["pulls_url"],
        milestonesUrl: json["milestones_url"],
        notificationsUrl: json["notifications_url"],
        labelsUrl: json["labels_url"],
        releasesUrl: json["releases_url"],
        deploymentsUrl: json["deployments_url"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        pushedAt: json["pushed_at"],
        gitUrl: json["git_url"],
        sshUrl: json["ssh_url"],
        cloneUrl: json["clone_url"],
        svnUrl: json["svn_url"],
        homepage: json["homepage"] == null ? null : json["homepage"],
        size: json["size"],
        stargazersCount: json["stargazers_count"],
        watchersCount: json["watchers_count"],
        language: json["language"],
        hasIssues: json["has_issues"],
        hasProjects: json["has_projects"],
        hasDownloads: json["has_downloads"],
        hasWiki: json["has_wiki"],
        hasPages: json["has_pages"],
        forksCount: json["forks_count"],
        mirrorUrl: json["mirror_url"],
        archived: json["archived"],
        openIssuesCount: json["open_issues_count"],
        license: json["license"] == null ? null : License.fromJson(json["license"]),
        forks: json["forks"],
        openIssues: json["open_issues"],
        watchers: json["watchers"],
        defaultBranch: json["default_branch"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "node_id": nodeId,
        "name": name,
        "full_name": fullName,
        "owner": owner.toJson(),
        "private": private,
        "html_url": htmlUrl,
        "description": description == null ? null : description,
        "fork": fork,
        "url": url,
        "forks_url": forksUrl,
        "keys_url": keysUrl,
        "collaborators_url": collaboratorsUrl,
        "teams_url": teamsUrl,
        "hooks_url": hooksUrl,
        "issue_events_url": issueEventsUrl,
        "events_url": eventsUrl,
        "assignees_url": assigneesUrl,
        "branches_url": branchesUrl,
        "tags_url": tagsUrl,
        "blobs_url": blobsUrl,
        "git_tags_url": gitTagsUrl,
        "git_refs_url": gitRefsUrl,
        "trees_url": treesUrl,
        "statuses_url": statusesUrl,
        "languages_url": languagesUrl,
        "stargazers_url": stargazersUrl,
        "contributors_url": contributorsUrl,
        "subscribers_url": subscribersUrl,
        "subscription_url": subscriptionUrl,
        "commits_url": commitsUrl,
        "git_commits_url": gitCommitsUrl,
        "comments_url": commentsUrl,
        "issue_comment_url": issueCommentUrl,
        "contents_url": contentsUrl,
        "compare_url": compareUrl,
        "merges_url": mergesUrl,
        "archive_url": archiveUrl,
        "downloads_url": downloadsUrl,
        "issues_url": issuesUrl,
        "pulls_url": pullsUrl,
        "milestones_url": milestonesUrl,
        "notifications_url": notificationsUrl,
        "labels_url": labelsUrl,
        "releases_url": releasesUrl,
        "deployments_url": deploymentsUrl,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "pushed_at": pushedAt,
        "git_url": gitUrl,
        "ssh_url": sshUrl,
        "clone_url": cloneUrl,
        "svn_url": svnUrl,
        "homepage": homepage == null ? null : homepage,
        "size": size,
        "stargazers_count": stargazersCount,
        "watchers_count": watchersCount,
        "language": language,
        "has_issues": hasIssues,
        "has_projects": hasProjects,
        "has_downloads": hasDownloads,
        "has_wiki": hasWiki,
        "has_pages": hasPages,
        "forks_count": forksCount,
        "mirror_url": mirrorUrl,
        "archived": archived,
        "open_issues_count": openIssuesCount,
        "license": license == null ? null : license.toJson(),
        "forks": forks,
        "open_issues": openIssues,
        "watchers": watchers,
        "default_branch": defaultBranch,
    };
}

class License {
    String key;
    String name;
    String spdxId;
    String url;
    String nodeId;

    License({
        this.key,
        this.name,
        this.spdxId,
        this.url,
        this.nodeId,
    });

    factory License.fromJson(Map<String, dynamic> json) => new License(
        key: json["key"],
        name: json["name"],
        spdxId: json["spdx_id"] == null ? null : json["spdx_id"],
        url: json["url"] == null ? null : json["url"],
        nodeId: json["node_id"],
    );

    Map<String, dynamic> toJson() => {
        "key": key,
        "name": name,
        "spdx_id": spdxId == null ? null : spdxId,
        "url": url == null ? null : url,
        "node_id": nodeId,
    };
}

class PullRequestLinks {
    Html self;
    Html html;
    Html issue;
    Html comments;
    Html reviewComments;
    Html reviewComment;
    Html commits;
    Html statuses;

    PullRequestLinks({
        this.self,
        this.html,
        this.issue,
        this.comments,
        this.reviewComments,
        this.reviewComment,
        this.commits,
        this.statuses,
    });

    factory PullRequestLinks.fromJson(Map<String, dynamic> json) => new PullRequestLinks(
        self: Html.fromJson(json["self"]),
        html: Html.fromJson(json["html"]),
        issue: Html.fromJson(json["issue"]),
        comments: Html.fromJson(json["comments"]),
        reviewComments: Html.fromJson(json["review_comments"]),
        reviewComment: Html.fromJson(json["review_comment"]),
        commits: Html.fromJson(json["commits"]),
        statuses: Html.fromJson(json["statuses"]),
    );

    Map<String, dynamic> toJson() => {
        "self": self.toJson(),
        "html": html.toJson(),
        "issue": issue.toJson(),
        "comments": comments.toJson(),
        "review_comments": reviewComments.toJson(),
        "review_comment": reviewComment.toJson(),
        "commits": commits.toJson(),
        "statuses": statuses.toJson(),
    };
}

class EventRepo {
    int id;
    String name;
    String url;

    EventRepo({
        this.id,
        this.name,
        this.url,
    });

    factory EventRepo.fromJson(Map<String, dynamic> json) => new EventRepo(
        id: json["id"],
        name: json["name"],
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "url": url,
    };
}

class Gists {
    String url;
    String forksUrl;
    String commitsUrl;
    String id;
    String nodeId;
    String gitPullUrl;
    String gitPushUrl;
    String htmlUrl;
    Map<String, FileValue> files;
    bool public;
    String createdAt;
    String updatedAt;
    String description;
    int comments;
    dynamic user;
    String commentsUrl;
    Owner owner;
    bool truncated;

    Gists({
        this.url,
        this.forksUrl,
        this.commitsUrl,
        this.id,
        this.nodeId,
        this.gitPullUrl,
        this.gitPushUrl,
        this.htmlUrl,
        this.files,
        this.public,
        this.createdAt,
        this.updatedAt,
        this.description,
        this.comments,
        this.user,
        this.commentsUrl,
        this.owner,
        this.truncated,
    });

    factory Gists.fromJson(Map<String, dynamic> json) => new Gists(
        url: json["url"],
        forksUrl: json["forks_url"],
        commitsUrl: json["commits_url"],
        id: json["id"],
        nodeId: json["node_id"],
        gitPullUrl: json["git_pull_url"],
        gitPushUrl: json["git_push_url"],
        htmlUrl: json["html_url"],
        files: new Map.from(json["files"]).map((k, v) => new MapEntry<String, FileValue>(k, FileValue.fromJson(v))),
        public: json["public"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        description: json["description"] == null ? null : json["description"],
        comments: json["comments"],
        user: json["user"],
        commentsUrl: json["comments_url"],
        owner: Owner.fromJson(json["owner"]),
        truncated: json["truncated"],
    );

    Map<String, dynamic> toJson() => {
        "url": url,
        "forks_url": forksUrl,
        "commits_url": commitsUrl,
        "id": id,
        "node_id": nodeId,
        "git_pull_url": gitPullUrl,
        "git_push_url": gitPushUrl,
        "html_url": htmlUrl,
        "files": new Map.from(files).map((k, v) => new MapEntry<String, dynamic>(k, v.toJson())),
        "public": public,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "description": description == null ? null : description,
        "comments": comments,
        "user": user,
        "comments_url": commentsUrl,
        "owner": owner.toJson(),
        "truncated": truncated,
    };
}

class FileValue {
    String filename;
    String type;
    String language;
    String rawUrl;
    int size;

    FileValue({
        this.filename,
        this.type,
        this.language,
        this.rawUrl,
        this.size,
    });

    factory FileValue.fromJson(Map<String, dynamic> json) => new FileValue(
        filename: json["filename"],
        type: json["type"],
        language: json["language"] == null ? null : json["language"],
        rawUrl: json["raw_url"],
        size: json["size"],
    );

    Map<String, dynamic> toJson() => {
        "filename": filename,
        "type": type,
        "language": language == null ? null : language,
        "raw_url": rawUrl,
        "size": size,
    };
}

class Meta {
    bool verifiablePasswordAuthentication;
    String githubServicesSha;
    List<String> hooks;
    List<String> git;
    List<String> pages;
    List<String> importer;

    Meta({
        this.verifiablePasswordAuthentication,
        this.githubServicesSha,
        this.hooks,
        this.git,
        this.pages,
        this.importer,
    });

    factory Meta.fromJson(Map<String, dynamic> json) => new Meta(
        verifiablePasswordAuthentication: json["verifiable_password_authentication"],
        githubServicesSha: json["github_services_sha"],
        hooks: new List<String>.from(json["hooks"].map((x) => x)),
        git: new List<String>.from(json["git"].map((x) => x)),
        pages: new List<String>.from(json["pages"].map((x) => x)),
        importer: new List<String>.from(json["importer"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "verifiable_password_authentication": verifiablePasswordAuthentication,
        "github_services_sha": githubServicesSha,
        "hooks": new List<dynamic>.from(hooks.map((x) => x)),
        "git": new List<dynamic>.from(git.map((x) => x)),
        "pages": new List<dynamic>.from(pages.map((x) => x)),
        "importer": new List<dynamic>.from(importer.map((x) => x)),
    };
}

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
