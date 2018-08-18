// To parse the JSON, add this file to your project and do:
//
//   let aPIData = try APIData(json)
//   let emojis = try Emojis(json)
//   let events = try Events(json)
//   let gists = try Gists(json)
//   let meta = try Meta(json)

import Foundation

typealias APIData = [String: String]
typealias Emojis = [String: String]
typealias Events = [Event]
typealias Gists = [Gist]

struct Event: Codable {
    let id, type: String
    let actor: Actor
    let repo: EventRepo
    let payload: Payload
    let eventPublic: Bool
    let createdAt: Date
    let org: Actor?

    enum CodingKeys: String, CodingKey {
        case id, type, actor, repo, payload
        case eventPublic = "public"
        case createdAt = "created_at"
        case org
    }
}

struct Actor: Codable {
    let id: Int
    let login: String
    let displayLogin: String?
    let gravatarID, url, avatarURL: String

    enum CodingKeys: String, CodingKey {
        case id, login
        case displayLogin = "display_login"
        case gravatarID = "gravatar_id"
        case url
        case avatarURL = "avatar_url"
    }
}

struct Payload: Codable {
    let pushID, size, distinctSize: Int?
    let ref: String?
    let head, before: String?
    let commits: [Commit]?
    let action: String?
    let number: Int?
    let pullRequest: PullRequest?
    let refType, masterBranch: String?
    let description: String?
    let pusherType: String?
    let comment: Comment?

    enum CodingKeys: String, CodingKey {
        case pushID = "push_id"
        case size
        case distinctSize = "distinct_size"
        case ref, head, before, commits, action, number
        case pullRequest = "pull_request"
        case refType = "ref_type"
        case masterBranch = "master_branch"
        case description
        case pusherType = "pusher_type"
        case comment
    }
}

struct Comment: Codable {
    let url: String
    let pullRequestReviewID, id: Int
    let nodeID, diffHunk, path: String
    let position, originalPosition: Int
    let commitID, originalCommitID: String
    let user: Owner
    let body: String
    let createdAt, updatedAt: Date
    let htmlURL, pullRequestURL, authorAssociation: String
    let links: CommentLinks

    enum CodingKeys: String, CodingKey {
        case url
        case pullRequestReviewID = "pull_request_review_id"
        case id
        case nodeID = "node_id"
        case diffHunk = "diff_hunk"
        case path, position
        case originalPosition = "original_position"
        case commitID = "commit_id"
        case originalCommitID = "original_commit_id"
        case user, body
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case htmlURL = "html_url"
        case pullRequestURL = "pull_request_url"
        case authorAssociation = "author_association"
        case links = "_links"
    }
}

struct CommentLinks: Codable {
    let linksSelf, html, pullRequest: HTML

    enum CodingKeys: String, CodingKey {
        case linksSelf = "self"
        case html
        case pullRequest = "pull_request"
    }
}

struct HTML: Codable {
    let href: String
}

struct Owner: Codable {
    let login: String
    let id: Int
    let nodeID, avatarURL, gravatarID, url: String
    let htmlURL, followersURL, followingURL, gistsURL: String
    let starredURL, subscriptionsURL, organizationsURL, reposURL: String
    let eventsURL, receivedEventsURL: String
    let type: TypeEnum
    let siteAdmin: Bool

    enum CodingKeys: String, CodingKey {
        case login, id
        case nodeID = "node_id"
        case avatarURL = "avatar_url"
        case gravatarID = "gravatar_id"
        case url
        case htmlURL = "html_url"
        case followersURL = "followers_url"
        case followingURL = "following_url"
        case gistsURL = "gists_url"
        case starredURL = "starred_url"
        case subscriptionsURL = "subscriptions_url"
        case organizationsURL = "organizations_url"
        case reposURL = "repos_url"
        case eventsURL = "events_url"
        case receivedEventsURL = "received_events_url"
        case type
        case siteAdmin = "site_admin"
    }
}

enum TypeEnum: String, Codable {
    case organization = "Organization"
    case user = "User"
}

struct Commit: Codable {
    let sha: String
    let author: Author
    let message: String
    let distinct: Bool
    let url: String
}

struct Author: Codable {
    let email, name: String
}

struct PullRequest: Codable {
    let url: String
    let id: Int
    let nodeID, htmlURL, diffURL, patchURL: String
    let issueURL: String
    let number: Int
    let state: String
    let locked: Bool
    let title: String
    let user: Owner
    let body: String?
    let createdAt, updatedAt: Date
    let closedAt, mergedAt: JSONNull?
    let mergeCommitSHA: String?
    let assignee: JSONNull?
    let assignees, requestedReviewers, requestedTeams, labels: [JSONAny]
    let milestone: JSONNull?
    let commitsURL, reviewCommentsURL, reviewCommentURL, commentsURL: String
    let statusesURL: String
    let head, base: Base
    let links: PullRequestLinks
    let authorAssociation: String
    let merged: Bool?
    let mergeable, rebaseable: JSONNull?
    let mergeableState: String?
    let mergedBy: JSONNull?
    let comments, reviewComments: Int?
    let maintainerCanModify: Bool?
    let commits, additions, deletions, changedFiles: Int?

    enum CodingKeys: String, CodingKey {
        case url, id
        case nodeID = "node_id"
        case htmlURL = "html_url"
        case diffURL = "diff_url"
        case patchURL = "patch_url"
        case issueURL = "issue_url"
        case number, state, locked, title, user, body
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case closedAt = "closed_at"
        case mergedAt = "merged_at"
        case mergeCommitSHA = "merge_commit_sha"
        case assignee, assignees
        case requestedReviewers = "requested_reviewers"
        case requestedTeams = "requested_teams"
        case labels, milestone
        case commitsURL = "commits_url"
        case reviewCommentsURL = "review_comments_url"
        case reviewCommentURL = "review_comment_url"
        case commentsURL = "comments_url"
        case statusesURL = "statuses_url"
        case head, base
        case links = "_links"
        case authorAssociation = "author_association"
        case merged, mergeable, rebaseable
        case mergeableState = "mergeable_state"
        case mergedBy = "merged_by"
        case comments
        case reviewComments = "review_comments"
        case maintainerCanModify = "maintainer_can_modify"
        case commits, additions, deletions
        case changedFiles = "changed_files"
    }
}

struct Base: Codable {
    let label, ref, sha: String
    let user: Owner
    let repo: BaseRepo
}

struct BaseRepo: Codable {
    let id: Int
    let nodeID, name, fullName: String
    let owner: Owner
    let repoPrivate: Bool
    let htmlURL: String
    let description: String?
    let fork: Bool
    let url, forksURL, keysURL, collaboratorsURL: String
    let teamsURL, hooksURL, issueEventsURL, eventsURL: String
    let assigneesURL, branchesURL, tagsURL, blobsURL: String
    let gitTagsURL, gitRefsURL, treesURL, statusesURL: String
    let languagesURL, stargazersURL, contributorsURL, subscribersURL: String
    let subscriptionURL, commitsURL, gitCommitsURL, commentsURL: String
    let issueCommentURL, contentsURL, compareURL, mergesURL: String
    let archiveURL, downloadsURL, issuesURL, pullsURL: String
    let milestonesURL, notificationsURL, labelsURL, releasesURL: String
    let deploymentsURL: String
    let createdAt, updatedAt, pushedAt: Date
    let gitURL, sshURL, cloneURL, svnURL: String
    let homepage: String?
    let size, stargazersCount, watchersCount: Int
    let language: String
    let hasIssues, hasProjects, hasDownloads, hasWiki: Bool
    let hasPages: Bool
    let forksCount: Int
    let mirrorURL: JSONNull?
    let archived: Bool
    let openIssuesCount: Int
    let license: License?
    let forks, openIssues, watchers: Int
    let defaultBranch: String

    enum CodingKeys: String, CodingKey {
        case id
        case nodeID = "node_id"
        case name
        case fullName = "full_name"
        case owner
        case repoPrivate = "private"
        case htmlURL = "html_url"
        case description, fork, url
        case forksURL = "forks_url"
        case keysURL = "keys_url"
        case collaboratorsURL = "collaborators_url"
        case teamsURL = "teams_url"
        case hooksURL = "hooks_url"
        case issueEventsURL = "issue_events_url"
        case eventsURL = "events_url"
        case assigneesURL = "assignees_url"
        case branchesURL = "branches_url"
        case tagsURL = "tags_url"
        case blobsURL = "blobs_url"
        case gitTagsURL = "git_tags_url"
        case gitRefsURL = "git_refs_url"
        case treesURL = "trees_url"
        case statusesURL = "statuses_url"
        case languagesURL = "languages_url"
        case stargazersURL = "stargazers_url"
        case contributorsURL = "contributors_url"
        case subscribersURL = "subscribers_url"
        case subscriptionURL = "subscription_url"
        case commitsURL = "commits_url"
        case gitCommitsURL = "git_commits_url"
        case commentsURL = "comments_url"
        case issueCommentURL = "issue_comment_url"
        case contentsURL = "contents_url"
        case compareURL = "compare_url"
        case mergesURL = "merges_url"
        case archiveURL = "archive_url"
        case downloadsURL = "downloads_url"
        case issuesURL = "issues_url"
        case pullsURL = "pulls_url"
        case milestonesURL = "milestones_url"
        case notificationsURL = "notifications_url"
        case labelsURL = "labels_url"
        case releasesURL = "releases_url"
        case deploymentsURL = "deployments_url"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case pushedAt = "pushed_at"
        case gitURL = "git_url"
        case sshURL = "ssh_url"
        case cloneURL = "clone_url"
        case svnURL = "svn_url"
        case homepage, size
        case stargazersCount = "stargazers_count"
        case watchersCount = "watchers_count"
        case language
        case hasIssues = "has_issues"
        case hasProjects = "has_projects"
        case hasDownloads = "has_downloads"
        case hasWiki = "has_wiki"
        case hasPages = "has_pages"
        case forksCount = "forks_count"
        case mirrorURL = "mirror_url"
        case archived
        case openIssuesCount = "open_issues_count"
        case license, forks
        case openIssues = "open_issues"
        case watchers
        case defaultBranch = "default_branch"
    }
}

struct License: Codable {
    let key, name: String
    let spdxID, url: String?
    let nodeID: String

    enum CodingKeys: String, CodingKey {
        case key, name
        case spdxID = "spdx_id"
        case url
        case nodeID = "node_id"
    }
}

struct PullRequestLinks: Codable {
    let linksSelf, html, issue, comments: HTML
    let reviewComments, reviewComment, commits, statuses: HTML

    enum CodingKeys: String, CodingKey {
        case linksSelf = "self"
        case html, issue, comments
        case reviewComments = "review_comments"
        case reviewComment = "review_comment"
        case commits, statuses
    }
}

struct EventRepo: Codable {
    let id: Int
    let name, url: String
}

struct Gist: Codable {
    let url, forksURL, commitsURL, id: String
    let nodeID, gitPullURL, gitPushURL, htmlURL: String
    let files: [String: File]
    let gistPublic: Bool
    let createdAt, updatedAt: Date
    let description: String?
    let comments: Int
    let user: JSONNull?
    let commentsURL: String
    let owner: Owner
    let truncated: Bool

    enum CodingKeys: String, CodingKey {
        case url
        case forksURL = "forks_url"
        case commitsURL = "commits_url"
        case id
        case nodeID = "node_id"
        case gitPullURL = "git_pull_url"
        case gitPushURL = "git_push_url"
        case htmlURL = "html_url"
        case files
        case gistPublic = "public"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case description, comments, user
        case commentsURL = "comments_url"
        case owner, truncated
    }
}

struct File: Codable {
    let filename, type: String
    let language: String?
    let rawURL: String
    let size: Int

    enum CodingKeys: String, CodingKey {
        case filename, type, language
        case rawURL = "raw_url"
        case size
    }
}

struct Meta: Codable {
    let verifiablePasswordAuthentication: Bool
    let githubServicesSHA: String
    let hooks, git, pages, importer: [String]

    enum CodingKeys: String, CodingKey {
        case verifiablePasswordAuthentication = "verifiable_password_authentication"
        case githubServicesSHA = "github_services_sha"
        case hooks, git, pages, importer
    }
}

// MARK: Convenience initializers and mutators

extension Event {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Event.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        id: String? = nil,
        type: String? = nil,
        actor: Actor? = nil,
        repo: EventRepo? = nil,
        payload: Payload? = nil,
        eventPublic: Bool? = nil,
        createdAt: Date? = nil,
        org: Actor?? = nil
    ) -> Event {
        return Event(
            id: id ?? self.id,
            type: type ?? self.type,
            actor: actor ?? self.actor,
            repo: repo ?? self.repo,
            payload: payload ?? self.payload,
            eventPublic: eventPublic ?? self.eventPublic,
            createdAt: createdAt ?? self.createdAt,
            org: org ?? self.org
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension Actor {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Actor.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        id: Int? = nil,
        login: String? = nil,
        displayLogin: String?? = nil,
        gravatarID: String? = nil,
        url: String? = nil,
        avatarURL: String? = nil
    ) -> Actor {
        return Actor(
            id: id ?? self.id,
            login: login ?? self.login,
            displayLogin: displayLogin ?? self.displayLogin,
            gravatarID: gravatarID ?? self.gravatarID,
            url: url ?? self.url,
            avatarURL: avatarURL ?? self.avatarURL
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension Payload {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Payload.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        pushID: Int?? = nil,
        size: Int?? = nil,
        distinctSize: Int?? = nil,
        ref: String?? = nil,
        head: String?? = nil,
        before: String?? = nil,
        commits: [Commit]?? = nil,
        action: String?? = nil,
        number: Int?? = nil,
        pullRequest: PullRequest?? = nil,
        refType: String?? = nil,
        masterBranch: String?? = nil,
        description: String?? = nil,
        pusherType: String?? = nil,
        comment: Comment?? = nil
    ) -> Payload {
        return Payload(
            pushID: pushID ?? self.pushID,
            size: size ?? self.size,
            distinctSize: distinctSize ?? self.distinctSize,
            ref: ref ?? self.ref,
            head: head ?? self.head,
            before: before ?? self.before,
            commits: commits ?? self.commits,
            action: action ?? self.action,
            number: number ?? self.number,
            pullRequest: pullRequest ?? self.pullRequest,
            refType: refType ?? self.refType,
            masterBranch: masterBranch ?? self.masterBranch,
            description: description ?? self.description,
            pusherType: pusherType ?? self.pusherType,
            comment: comment ?? self.comment
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension Comment {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Comment.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        url: String? = nil,
        pullRequestReviewID: Int? = nil,
        id: Int? = nil,
        nodeID: String? = nil,
        diffHunk: String? = nil,
        path: String? = nil,
        position: Int? = nil,
        originalPosition: Int? = nil,
        commitID: String? = nil,
        originalCommitID: String? = nil,
        user: Owner? = nil,
        body: String? = nil,
        createdAt: Date? = nil,
        updatedAt: Date? = nil,
        htmlURL: String? = nil,
        pullRequestURL: String? = nil,
        authorAssociation: String? = nil,
        links: CommentLinks? = nil
    ) -> Comment {
        return Comment(
            url: url ?? self.url,
            pullRequestReviewID: pullRequestReviewID ?? self.pullRequestReviewID,
            id: id ?? self.id,
            nodeID: nodeID ?? self.nodeID,
            diffHunk: diffHunk ?? self.diffHunk,
            path: path ?? self.path,
            position: position ?? self.position,
            originalPosition: originalPosition ?? self.originalPosition,
            commitID: commitID ?? self.commitID,
            originalCommitID: originalCommitID ?? self.originalCommitID,
            user: user ?? self.user,
            body: body ?? self.body,
            createdAt: createdAt ?? self.createdAt,
            updatedAt: updatedAt ?? self.updatedAt,
            htmlURL: htmlURL ?? self.htmlURL,
            pullRequestURL: pullRequestURL ?? self.pullRequestURL,
            authorAssociation: authorAssociation ?? self.authorAssociation,
            links: links ?? self.links
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension CommentLinks {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(CommentLinks.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        linksSelf: HTML? = nil,
        html: HTML? = nil,
        pullRequest: HTML? = nil
    ) -> CommentLinks {
        return CommentLinks(
            linksSelf: linksSelf ?? self.linksSelf,
            html: html ?? self.html,
            pullRequest: pullRequest ?? self.pullRequest
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension HTML {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(HTML.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        href: String? = nil
    ) -> HTML {
        return HTML(
            href: href ?? self.href
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension Owner {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Owner.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        login: String? = nil,
        id: Int? = nil,
        nodeID: String? = nil,
        avatarURL: String? = nil,
        gravatarID: String? = nil,
        url: String? = nil,
        htmlURL: String? = nil,
        followersURL: String? = nil,
        followingURL: String? = nil,
        gistsURL: String? = nil,
        starredURL: String? = nil,
        subscriptionsURL: String? = nil,
        organizationsURL: String? = nil,
        reposURL: String? = nil,
        eventsURL: String? = nil,
        receivedEventsURL: String? = nil,
        type: TypeEnum? = nil,
        siteAdmin: Bool? = nil
    ) -> Owner {
        return Owner(
            login: login ?? self.login,
            id: id ?? self.id,
            nodeID: nodeID ?? self.nodeID,
            avatarURL: avatarURL ?? self.avatarURL,
            gravatarID: gravatarID ?? self.gravatarID,
            url: url ?? self.url,
            htmlURL: htmlURL ?? self.htmlURL,
            followersURL: followersURL ?? self.followersURL,
            followingURL: followingURL ?? self.followingURL,
            gistsURL: gistsURL ?? self.gistsURL,
            starredURL: starredURL ?? self.starredURL,
            subscriptionsURL: subscriptionsURL ?? self.subscriptionsURL,
            organizationsURL: organizationsURL ?? self.organizationsURL,
            reposURL: reposURL ?? self.reposURL,
            eventsURL: eventsURL ?? self.eventsURL,
            receivedEventsURL: receivedEventsURL ?? self.receivedEventsURL,
            type: type ?? self.type,
            siteAdmin: siteAdmin ?? self.siteAdmin
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension Commit {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Commit.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        sha: String? = nil,
        author: Author? = nil,
        message: String? = nil,
        distinct: Bool? = nil,
        url: String? = nil
    ) -> Commit {
        return Commit(
            sha: sha ?? self.sha,
            author: author ?? self.author,
            message: message ?? self.message,
            distinct: distinct ?? self.distinct,
            url: url ?? self.url
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension Author {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Author.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        email: String? = nil,
        name: String? = nil
    ) -> Author {
        return Author(
            email: email ?? self.email,
            name: name ?? self.name
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension PullRequest {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(PullRequest.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        url: String? = nil,
        id: Int? = nil,
        nodeID: String? = nil,
        htmlURL: String? = nil,
        diffURL: String? = nil,
        patchURL: String? = nil,
        issueURL: String? = nil,
        number: Int? = nil,
        state: String? = nil,
        locked: Bool? = nil,
        title: String? = nil,
        user: Owner? = nil,
        body: String?? = nil,
        createdAt: Date? = nil,
        updatedAt: Date? = nil,
        closedAt: JSONNull?? = nil,
        mergedAt: JSONNull?? = nil,
        mergeCommitSHA: String?? = nil,
        assignee: JSONNull?? = nil,
        assignees: [JSONAny]? = nil,
        requestedReviewers: [JSONAny]? = nil,
        requestedTeams: [JSONAny]? = nil,
        labels: [JSONAny]? = nil,
        milestone: JSONNull?? = nil,
        commitsURL: String? = nil,
        reviewCommentsURL: String? = nil,
        reviewCommentURL: String? = nil,
        commentsURL: String? = nil,
        statusesURL: String? = nil,
        head: Base? = nil,
        base: Base? = nil,
        links: PullRequestLinks? = nil,
        authorAssociation: String? = nil,
        merged: Bool?? = nil,
        mergeable: JSONNull?? = nil,
        rebaseable: JSONNull?? = nil,
        mergeableState: String?? = nil,
        mergedBy: JSONNull?? = nil,
        comments: Int?? = nil,
        reviewComments: Int?? = nil,
        maintainerCanModify: Bool?? = nil,
        commits: Int?? = nil,
        additions: Int?? = nil,
        deletions: Int?? = nil,
        changedFiles: Int?? = nil
    ) -> PullRequest {
        return PullRequest(
            url: url ?? self.url,
            id: id ?? self.id,
            nodeID: nodeID ?? self.nodeID,
            htmlURL: htmlURL ?? self.htmlURL,
            diffURL: diffURL ?? self.diffURL,
            patchURL: patchURL ?? self.patchURL,
            issueURL: issueURL ?? self.issueURL,
            number: number ?? self.number,
            state: state ?? self.state,
            locked: locked ?? self.locked,
            title: title ?? self.title,
            user: user ?? self.user,
            body: body ?? self.body,
            createdAt: createdAt ?? self.createdAt,
            updatedAt: updatedAt ?? self.updatedAt,
            closedAt: closedAt ?? self.closedAt,
            mergedAt: mergedAt ?? self.mergedAt,
            mergeCommitSHA: mergeCommitSHA ?? self.mergeCommitSHA,
            assignee: assignee ?? self.assignee,
            assignees: assignees ?? self.assignees,
            requestedReviewers: requestedReviewers ?? self.requestedReviewers,
            requestedTeams: requestedTeams ?? self.requestedTeams,
            labels: labels ?? self.labels,
            milestone: milestone ?? self.milestone,
            commitsURL: commitsURL ?? self.commitsURL,
            reviewCommentsURL: reviewCommentsURL ?? self.reviewCommentsURL,
            reviewCommentURL: reviewCommentURL ?? self.reviewCommentURL,
            commentsURL: commentsURL ?? self.commentsURL,
            statusesURL: statusesURL ?? self.statusesURL,
            head: head ?? self.head,
            base: base ?? self.base,
            links: links ?? self.links,
            authorAssociation: authorAssociation ?? self.authorAssociation,
            merged: merged ?? self.merged,
            mergeable: mergeable ?? self.mergeable,
            rebaseable: rebaseable ?? self.rebaseable,
            mergeableState: mergeableState ?? self.mergeableState,
            mergedBy: mergedBy ?? self.mergedBy,
            comments: comments ?? self.comments,
            reviewComments: reviewComments ?? self.reviewComments,
            maintainerCanModify: maintainerCanModify ?? self.maintainerCanModify,
            commits: commits ?? self.commits,
            additions: additions ?? self.additions,
            deletions: deletions ?? self.deletions,
            changedFiles: changedFiles ?? self.changedFiles
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension Base {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Base.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        label: String? = nil,
        ref: String? = nil,
        sha: String? = nil,
        user: Owner? = nil,
        repo: BaseRepo? = nil
    ) -> Base {
        return Base(
            label: label ?? self.label,
            ref: ref ?? self.ref,
            sha: sha ?? self.sha,
            user: user ?? self.user,
            repo: repo ?? self.repo
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension BaseRepo {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(BaseRepo.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        id: Int? = nil,
        nodeID: String? = nil,
        name: String? = nil,
        fullName: String? = nil,
        owner: Owner? = nil,
        repoPrivate: Bool? = nil,
        htmlURL: String? = nil,
        description: String?? = nil,
        fork: Bool? = nil,
        url: String? = nil,
        forksURL: String? = nil,
        keysURL: String? = nil,
        collaboratorsURL: String? = nil,
        teamsURL: String? = nil,
        hooksURL: String? = nil,
        issueEventsURL: String? = nil,
        eventsURL: String? = nil,
        assigneesURL: String? = nil,
        branchesURL: String? = nil,
        tagsURL: String? = nil,
        blobsURL: String? = nil,
        gitTagsURL: String? = nil,
        gitRefsURL: String? = nil,
        treesURL: String? = nil,
        statusesURL: String? = nil,
        languagesURL: String? = nil,
        stargazersURL: String? = nil,
        contributorsURL: String? = nil,
        subscribersURL: String? = nil,
        subscriptionURL: String? = nil,
        commitsURL: String? = nil,
        gitCommitsURL: String? = nil,
        commentsURL: String? = nil,
        issueCommentURL: String? = nil,
        contentsURL: String? = nil,
        compareURL: String? = nil,
        mergesURL: String? = nil,
        archiveURL: String? = nil,
        downloadsURL: String? = nil,
        issuesURL: String? = nil,
        pullsURL: String? = nil,
        milestonesURL: String? = nil,
        notificationsURL: String? = nil,
        labelsURL: String? = nil,
        releasesURL: String? = nil,
        deploymentsURL: String? = nil,
        createdAt: Date? = nil,
        updatedAt: Date? = nil,
        pushedAt: Date? = nil,
        gitURL: String? = nil,
        sshURL: String? = nil,
        cloneURL: String? = nil,
        svnURL: String? = nil,
        homepage: String?? = nil,
        size: Int? = nil,
        stargazersCount: Int? = nil,
        watchersCount: Int? = nil,
        language: String? = nil,
        hasIssues: Bool? = nil,
        hasProjects: Bool? = nil,
        hasDownloads: Bool? = nil,
        hasWiki: Bool? = nil,
        hasPages: Bool? = nil,
        forksCount: Int? = nil,
        mirrorURL: JSONNull?? = nil,
        archived: Bool? = nil,
        openIssuesCount: Int? = nil,
        license: License?? = nil,
        forks: Int? = nil,
        openIssues: Int? = nil,
        watchers: Int? = nil,
        defaultBranch: String? = nil
    ) -> BaseRepo {
        return BaseRepo(
            id: id ?? self.id,
            nodeID: nodeID ?? self.nodeID,
            name: name ?? self.name,
            fullName: fullName ?? self.fullName,
            owner: owner ?? self.owner,
            repoPrivate: repoPrivate ?? self.repoPrivate,
            htmlURL: htmlURL ?? self.htmlURL,
            description: description ?? self.description,
            fork: fork ?? self.fork,
            url: url ?? self.url,
            forksURL: forksURL ?? self.forksURL,
            keysURL: keysURL ?? self.keysURL,
            collaboratorsURL: collaboratorsURL ?? self.collaboratorsURL,
            teamsURL: teamsURL ?? self.teamsURL,
            hooksURL: hooksURL ?? self.hooksURL,
            issueEventsURL: issueEventsURL ?? self.issueEventsURL,
            eventsURL: eventsURL ?? self.eventsURL,
            assigneesURL: assigneesURL ?? self.assigneesURL,
            branchesURL: branchesURL ?? self.branchesURL,
            tagsURL: tagsURL ?? self.tagsURL,
            blobsURL: blobsURL ?? self.blobsURL,
            gitTagsURL: gitTagsURL ?? self.gitTagsURL,
            gitRefsURL: gitRefsURL ?? self.gitRefsURL,
            treesURL: treesURL ?? self.treesURL,
            statusesURL: statusesURL ?? self.statusesURL,
            languagesURL: languagesURL ?? self.languagesURL,
            stargazersURL: stargazersURL ?? self.stargazersURL,
            contributorsURL: contributorsURL ?? self.contributorsURL,
            subscribersURL: subscribersURL ?? self.subscribersURL,
            subscriptionURL: subscriptionURL ?? self.subscriptionURL,
            commitsURL: commitsURL ?? self.commitsURL,
            gitCommitsURL: gitCommitsURL ?? self.gitCommitsURL,
            commentsURL: commentsURL ?? self.commentsURL,
            issueCommentURL: issueCommentURL ?? self.issueCommentURL,
            contentsURL: contentsURL ?? self.contentsURL,
            compareURL: compareURL ?? self.compareURL,
            mergesURL: mergesURL ?? self.mergesURL,
            archiveURL: archiveURL ?? self.archiveURL,
            downloadsURL: downloadsURL ?? self.downloadsURL,
            issuesURL: issuesURL ?? self.issuesURL,
            pullsURL: pullsURL ?? self.pullsURL,
            milestonesURL: milestonesURL ?? self.milestonesURL,
            notificationsURL: notificationsURL ?? self.notificationsURL,
            labelsURL: labelsURL ?? self.labelsURL,
            releasesURL: releasesURL ?? self.releasesURL,
            deploymentsURL: deploymentsURL ?? self.deploymentsURL,
            createdAt: createdAt ?? self.createdAt,
            updatedAt: updatedAt ?? self.updatedAt,
            pushedAt: pushedAt ?? self.pushedAt,
            gitURL: gitURL ?? self.gitURL,
            sshURL: sshURL ?? self.sshURL,
            cloneURL: cloneURL ?? self.cloneURL,
            svnURL: svnURL ?? self.svnURL,
            homepage: homepage ?? self.homepage,
            size: size ?? self.size,
            stargazersCount: stargazersCount ?? self.stargazersCount,
            watchersCount: watchersCount ?? self.watchersCount,
            language: language ?? self.language,
            hasIssues: hasIssues ?? self.hasIssues,
            hasProjects: hasProjects ?? self.hasProjects,
            hasDownloads: hasDownloads ?? self.hasDownloads,
            hasWiki: hasWiki ?? self.hasWiki,
            hasPages: hasPages ?? self.hasPages,
            forksCount: forksCount ?? self.forksCount,
            mirrorURL: mirrorURL ?? self.mirrorURL,
            archived: archived ?? self.archived,
            openIssuesCount: openIssuesCount ?? self.openIssuesCount,
            license: license ?? self.license,
            forks: forks ?? self.forks,
            openIssues: openIssues ?? self.openIssues,
            watchers: watchers ?? self.watchers,
            defaultBranch: defaultBranch ?? self.defaultBranch
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension License {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(License.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        key: String? = nil,
        name: String? = nil,
        spdxID: String?? = nil,
        url: String?? = nil,
        nodeID: String? = nil
    ) -> License {
        return License(
            key: key ?? self.key,
            name: name ?? self.name,
            spdxID: spdxID ?? self.spdxID,
            url: url ?? self.url,
            nodeID: nodeID ?? self.nodeID
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension PullRequestLinks {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(PullRequestLinks.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        linksSelf: HTML? = nil,
        html: HTML? = nil,
        issue: HTML? = nil,
        comments: HTML? = nil,
        reviewComments: HTML? = nil,
        reviewComment: HTML? = nil,
        commits: HTML? = nil,
        statuses: HTML? = nil
    ) -> PullRequestLinks {
        return PullRequestLinks(
            linksSelf: linksSelf ?? self.linksSelf,
            html: html ?? self.html,
            issue: issue ?? self.issue,
            comments: comments ?? self.comments,
            reviewComments: reviewComments ?? self.reviewComments,
            reviewComment: reviewComment ?? self.reviewComment,
            commits: commits ?? self.commits,
            statuses: statuses ?? self.statuses
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension EventRepo {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(EventRepo.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        id: Int? = nil,
        name: String? = nil,
        url: String? = nil
    ) -> EventRepo {
        return EventRepo(
            id: id ?? self.id,
            name: name ?? self.name,
            url: url ?? self.url
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension Gist {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Gist.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        url: String? = nil,
        forksURL: String? = nil,
        commitsURL: String? = nil,
        id: String? = nil,
        nodeID: String? = nil,
        gitPullURL: String? = nil,
        gitPushURL: String? = nil,
        htmlURL: String? = nil,
        files: [String: File]? = nil,
        gistPublic: Bool? = nil,
        createdAt: Date? = nil,
        updatedAt: Date? = nil,
        description: String?? = nil,
        comments: Int? = nil,
        user: JSONNull?? = nil,
        commentsURL: String? = nil,
        owner: Owner? = nil,
        truncated: Bool? = nil
    ) -> Gist {
        return Gist(
            url: url ?? self.url,
            forksURL: forksURL ?? self.forksURL,
            commitsURL: commitsURL ?? self.commitsURL,
            id: id ?? self.id,
            nodeID: nodeID ?? self.nodeID,
            gitPullURL: gitPullURL ?? self.gitPullURL,
            gitPushURL: gitPushURL ?? self.gitPushURL,
            htmlURL: htmlURL ?? self.htmlURL,
            files: files ?? self.files,
            gistPublic: gistPublic ?? self.gistPublic,
            createdAt: createdAt ?? self.createdAt,
            updatedAt: updatedAt ?? self.updatedAt,
            description: description ?? self.description,
            comments: comments ?? self.comments,
            user: user ?? self.user,
            commentsURL: commentsURL ?? self.commentsURL,
            owner: owner ?? self.owner,
            truncated: truncated ?? self.truncated
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension File {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(File.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        filename: String? = nil,
        type: String? = nil,
        language: String?? = nil,
        rawURL: String? = nil,
        size: Int? = nil
    ) -> File {
        return File(
            filename: filename ?? self.filename,
            type: type ?? self.type,
            language: language ?? self.language,
            rawURL: rawURL ?? self.rawURL,
            size: size ?? self.size
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension Meta {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Meta.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        verifiablePasswordAuthentication: Bool? = nil,
        githubServicesSHA: String? = nil,
        hooks: [String]? = nil,
        git: [String]? = nil,
        pages: [String]? = nil,
        importer: [String]? = nil
    ) -> Meta {
        return Meta(
            verifiablePasswordAuthentication: verifiablePasswordAuthentication ?? self.verifiablePasswordAuthentication,
            githubServicesSHA: githubServicesSHA ?? self.githubServicesSHA,
            hooks: hooks ?? self.hooks,
            git: git ?? self.git,
            pages: pages ?? self.pages,
            importer: importer ?? self.importer
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension Dictionary where Key == String, Value == String {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(APIData.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension Dictionary where Key == String, Value == String {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Emojis.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension Array where Element == Events.Element {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Events.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension Array where Element == Gists.Element {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Gists.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: Encode/decode helpers

class JSONNull: Codable {
    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

class JSONCodingKey: CodingKey {
    let key: String

    required init?(intValue: Int) {
        return nil
    }

    required init?(stringValue: String) {
        key = stringValue
    }

    var intValue: Int? {
        return nil
    }

    var stringValue: String {
        return key
    }
}

class JSONAny: Codable {
    let value: Any

    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }

    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }

    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }

    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }

    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }

    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            self.value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny.decode(from: container)
        }
    }

    public func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: self.value)
        }
    }
}

func newJSONDecoder() -> JSONDecoder {
    let decoder = JSONDecoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        decoder.dateDecodingStrategy = .iso8601
    }
    return decoder
}

func newJSONEncoder() -> JSONEncoder {
    let encoder = JSONEncoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        encoder.dateEncodingStrategy = .iso8601
    }
    return encoder
}
