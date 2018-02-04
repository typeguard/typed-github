// To parse the JSON, add this file to your project and do:
//
//   guard let aPIData = try APIData(json) else { ... }
//   guard let emojis = try Emojis(json) else { ... }
//   guard let events = try Events(json) else { ... }
//   guard let gists = try Gists(json) else { ... }
//   guard let meta = try Meta(json) else { ... }

import Foundation

typealias APIData = [String: String]
typealias Emojis = [String: String]
typealias Events = [Event]
typealias Gists = [Gist]

struct Event: Codable {
    let id, type: String
    let actor: Actor
    let repo: Repo
    let payload: Payload
    let purplePublic: Bool
    let createdAt: String
    let org: Actor?

    enum CodingKeys: String, CodingKey {
        case id, type, actor, repo, payload
        case purplePublic = "public"
        case createdAt = "created_at"
        case org
    }
}

struct Actor: Codable {
    let id: Int
    let login: String
    let displayLogin: String?
    let gravatarID: GravatarID
    let url, avatarURL: String

    enum CodingKeys: String, CodingKey {
        case id, login
        case displayLogin = "display_login"
        case gravatarID = "gravatar_id"
        case url
        case avatarURL = "avatar_url"
    }
}

enum GravatarID: String, Codable {
    case empty = ""
}

struct Payload: Codable {
    let ref: String?
    let refType, masterBranch: String?
    let description: String?
    let pusherType: String?
    let pushID, size, distinctSize: Int?
    let head, before: String?
    let commits: [Commit]?
    let forkee: Forkee?
    let action: String?
    let issue: Issue?
    let number: Int?
    let pullRequest: PullRequest?
    let comment: Comment?

    enum CodingKeys: String, CodingKey {
        case ref
        case refType = "ref_type"
        case masterBranch = "master_branch"
        case description
        case pusherType = "pusher_type"
        case pushID = "push_id"
        case size
        case distinctSize = "distinct_size"
        case head, before, commits, forkee, action, issue, number
        case pullRequest = "pull_request"
        case comment
    }
}

struct Comment: Codable {
    let url: String
    let pullRequestReviewID, id: Int
    let diffHunk, path: String
    let position, originalPosition: Int
    let commitID, originalCommitID: String
    let user: User
    let body, createdAt, updatedAt, htmlURL: String
    let pullRequestURL, authorAssociation: String
    let links: CommentLinks

    enum CodingKeys: String, CodingKey {
        case url
        case pullRequestReviewID = "pull_request_review_id"
        case id
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
    let purpleSelf, html, pullRequest: HTML

    enum CodingKeys: String, CodingKey {
        case purpleSelf = "self"
        case html
        case pullRequest = "pull_request"
    }
}

struct HTML: Codable {
    let href: String
}

struct User: Codable {
    let login: String
    let id: Int
    let avatarURL: String
    let gravatarID: GravatarID
    let url, htmlURL, followersURL, followingURL: String
    let gistsURL, starredURL, subscriptionsURL, organizationsURL: String
    let reposURL, eventsURL, receivedEventsURL: String
    let type: UserType
    let siteAdmin: Bool

    enum CodingKeys: String, CodingKey {
        case login, id
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

enum UserType: String, Codable {
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

struct Forkee: Codable {
    let id: Int
    let name, fullName: String
    let owner: User
    let purplePrivate: Bool
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
    let deploymentsURL, createdAt, updatedAt, pushedAt: String
    let gitURL, sshURL, cloneURL, svnURL: String
    let homepage: String?
    let size, stargazersCount, watchersCount: Int
    let language: String?
    let hasIssues, hasProjects, hasDownloads, hasWiki: Bool
    let hasPages: Bool
    let forksCount: Int
    let mirrorURL: JSONNull?
    let archived: Bool
    let openIssuesCount: Int
    let license: License?
    let forks, openIssues, watchers: Int
    let defaultBranch: String
    let purplePublic: Bool?

    enum CodingKeys: String, CodingKey {
        case id, name
        case fullName = "full_name"
        case owner
        case purplePrivate = "private"
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
        case purplePublic = "public"
    }
}

struct License: Codable {
    let key, name: String
    let spdxID, url: String?

    enum CodingKeys: String, CodingKey {
        case key, name
        case spdxID = "spdx_id"
        case url
    }
}

struct Issue: Codable {
    let url, repositoryURL, labelsURL, commentsURL: String
    let eventsURL, htmlURL: String
    let id, number: Int
    let title: String
    let user: User
    let labels: [Label]
    let state: String
    let locked: Bool
    let assignee: User?
    let assignees: [User]
    let milestone: JSONNull?
    let comments: Int
    let createdAt, updatedAt: String
    let closedAt: String?
    let authorAssociation, body: String

    enum CodingKeys: String, CodingKey {
        case url
        case repositoryURL = "repository_url"
        case labelsURL = "labels_url"
        case commentsURL = "comments_url"
        case eventsURL = "events_url"
        case htmlURL = "html_url"
        case id, number, title, user, labels, state, locked, assignee, assignees, milestone, comments
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case closedAt = "closed_at"
        case authorAssociation = "author_association"
        case body
    }
}

struct Label: Codable {
    let id: Int
    let url, name, color: String
    let purpleDefault: Bool

    enum CodingKeys: String, CodingKey {
        case id, url, name, color
        case purpleDefault = "default"
    }
}

struct PullRequest: Codable {
    let url: String
    let id: Int
    let htmlURL, diffURL, patchURL, issueURL: String
    let number: Int
    let state: String
    let locked: Bool
    let title: String
    let user: User
    let body, createdAt, updatedAt: String
    let closedAt, mergedAt: JSONNull?
    let mergeCommitSHA: String?
    let assignee: JSONNull?
    let assignees, requestedReviewers, requestedTeams: [JSONAny]
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
        case milestone
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
    let user: User
    let repo: Forkee
}

struct PullRequestLinks: Codable {
    let purpleSelf, html, issue, comments: HTML
    let reviewComments, reviewComment, commits, statuses: HTML

    enum CodingKeys: String, CodingKey {
        case purpleSelf = "self"
        case html, issue, comments
        case reviewComments = "review_comments"
        case reviewComment = "review_comment"
        case commits, statuses
    }
}

struct Repo: Codable {
    let id: Int
    let name, url: String
}

struct Gist: Codable {
    let url, forksURL, commitsURL, id: String
    let gitPullURL, gitPushURL, htmlURL: String
    let files: Files
    let purplePublic: Bool
    let createdAt, updatedAt: String
    let description: String?
    let comments: Int
    let user: JSONNull?
    let commentsURL: String
    let truncated: Bool
    let owner: User?

    enum CodingKeys: String, CodingKey {
        case url
        case forksURL = "forks_url"
        case commitsURL = "commits_url"
        case id
        case gitPullURL = "git_pull_url"
        case gitPushURL = "git_push_url"
        case htmlURL = "html_url"
        case files
        case purplePublic = "public"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case description, comments, user
        case commentsURL = "comments_url"
        case truncated, owner
    }
}

struct Files: Codable {
    let gistfile1Txt, ruwikiruscorporaUposSkipgram300_2_2018_B2B090A678A3D66B62Ddf890Eefe5F26ConfigJSON, ruwikiruscorporaUposSkipgram300_2_2018_B2B090A678A3D66B62Ddf890Eefe5F26MetadataTsv, ruwikiruscorporaUposSkipgram300_2_2018_B2B090A678A3D66B62Ddf890Eefe5F26TensorTsv: Empty?
    let configJSON, empty, the6MnUZy7Z, leDbreatheIno: Empty?
    let i3BlocksSpotify, readmeMd, decryptFileSh, encryptFileSh: Empty?
    let limitedNoOfRecordsJava, clientApp, serverAp, ruwikiruscorporaUposSkipgram300_2_2018_Fafdb1F6D6866Fb229E806Fc354B7458ConfigJSON: Empty?

    enum CodingKeys: String, CodingKey {
        case gistfile1Txt = "gistfile1.txt"
        case ruwikiruscorporaUposSkipgram300_2_2018_B2B090A678A3D66B62Ddf890Eefe5F26ConfigJSON = "ruwikiruscorpora_upos_skipgram_300_2_2018_b2b090a678a3d66b62ddf890eefe5f26_config.json"
        case ruwikiruscorporaUposSkipgram300_2_2018_B2B090A678A3D66B62Ddf890Eefe5F26MetadataTsv = "ruwikiruscorpora_upos_skipgram_300_2_2018_b2b090a678a3d66b62ddf890eefe5f26_metadata.tsv"
        case ruwikiruscorporaUposSkipgram300_2_2018_B2B090A678A3D66B62Ddf890Eefe5F26TensorTsv = "ruwikiruscorpora_upos_skipgram_300_2_2018_b2b090a678a3d66b62ddf890eefe5f26_tensor.tsv"
        case configJSON = "config.json"
        case empty = "-"
        case the6MnUZy7Z = "6mnUZy7z"
        case leDbreatheIno = "LEDbreathe.ino"
        case i3BlocksSpotify = "i3blocks-spotify"
        case readmeMd = "_README.md"
        case decryptFileSh = "decryptFile.sh"
        case encryptFileSh = "encryptFile.sh"
        case limitedNoOfRecordsJava = "limitedNoOfRecords.java"
        case clientApp = "CLIENT APP"
        case serverAp = "SERVER AP"
        case ruwikiruscorporaUposSkipgram300_2_2018_Fafdb1F6D6866Fb229E806Fc354B7458ConfigJSON = "ruwikiruscorpora_upos_skipgram_300_2_2018_fafdb1f6d6866fb229e806fc354b7458_config.json"
    }
}

struct Empty: Codable {
    let filename: String
    let type: PurpleType
    let language: String?
    let rawURL: String
    let size: Int

    enum CodingKeys: String, CodingKey {
        case filename, type, language
        case rawURL = "raw_url"
        case size
    }
}

enum PurpleType: String, Codable {
    case applicationJSON = "application/json"
    case applicationXSh = "application/x-sh"
    case textPlain = "text/plain"
    case textTabSeparatedValues = "text/tab-separated-values"
}

struct User: Codable {
    let login: String
    let id: Int
    let avatarURL: String
    let gravatarID: GravatarID
    let url, htmlURL, followersURL, followingURL: String
    let gistsURL, starredURL, subscriptionsURL, organizationsURL: String
    let reposURL, eventsURL, receivedEventsURL: String
    let type: UserType
    let siteAdmin: Bool

    enum CodingKeys: String, CodingKey {
        case login, id
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

enum GravatarID: String, Codable {
    case empty = ""
}

enum UserType: String, Codable {
    case organization = "Organization"
    case user = "User"
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

// MARK: Convenience initializers

extension Event {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Event.self, from: data)
    }

    init?(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else { return nil }
        try self.init(data: data)
    }

    init?(fromURL url: String) throws {
        guard let url = URL(string: url) else { return nil }
        let data = try Data(contentsOf: url)
        try self.init(data: data)
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString() throws -> String? {
        return String(data: try self.jsonData(), encoding: .utf8)
    }
}

extension Actor {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Actor.self, from: data)
    }

    init?(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else { return nil }
        try self.init(data: data)
    }

    init?(fromURL url: String) throws {
        guard let url = URL(string: url) else { return nil }
        let data = try Data(contentsOf: url)
        try self.init(data: data)
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString() throws -> String? {
        return String(data: try self.jsonData(), encoding: .utf8)
    }
}

extension Payload {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Payload.self, from: data)
    }

    init?(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else { return nil }
        try self.init(data: data)
    }

    init?(fromURL url: String) throws {
        guard let url = URL(string: url) else { return nil }
        let data = try Data(contentsOf: url)
        try self.init(data: data)
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString() throws -> String? {
        return String(data: try self.jsonData(), encoding: .utf8)
    }
}

extension Comment {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Comment.self, from: data)
    }

    init?(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else { return nil }
        try self.init(data: data)
    }

    init?(fromURL url: String) throws {
        guard let url = URL(string: url) else { return nil }
        let data = try Data(contentsOf: url)
        try self.init(data: data)
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString() throws -> String? {
        return String(data: try self.jsonData(), encoding: .utf8)
    }
}

extension CommentLinks {
    init(data: Data) throws {
        self = try JSONDecoder().decode(CommentLinks.self, from: data)
    }

    init?(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else { return nil }
        try self.init(data: data)
    }

    init?(fromURL url: String) throws {
        guard let url = URL(string: url) else { return nil }
        let data = try Data(contentsOf: url)
        try self.init(data: data)
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString() throws -> String? {
        return String(data: try self.jsonData(), encoding: .utf8)
    }
}

extension HTML {
    init(data: Data) throws {
        self = try JSONDecoder().decode(HTML.self, from: data)
    }

    init?(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else { return nil }
        try self.init(data: data)
    }

    init?(fromURL url: String) throws {
        guard let url = URL(string: url) else { return nil }
        let data = try Data(contentsOf: url)
        try self.init(data: data)
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString() throws -> String? {
        return String(data: try self.jsonData(), encoding: .utf8)
    }
}

extension User {
    init(data: Data) throws {
        self = try JSONDecoder().decode(User.self, from: data)
    }

    init?(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else { return nil }
        try self.init(data: data)
    }

    init?(fromURL url: String) throws {
        guard let url = URL(string: url) else { return nil }
        let data = try Data(contentsOf: url)
        try self.init(data: data)
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString() throws -> String? {
        return String(data: try self.jsonData(), encoding: .utf8)
    }
}

extension Commit {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Commit.self, from: data)
    }

    init?(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else { return nil }
        try self.init(data: data)
    }

    init?(fromURL url: String) throws {
        guard let url = URL(string: url) else { return nil }
        let data = try Data(contentsOf: url)
        try self.init(data: data)
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString() throws -> String? {
        return String(data: try self.jsonData(), encoding: .utf8)
    }
}

extension Author {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Author.self, from: data)
    }

    init?(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else { return nil }
        try self.init(data: data)
    }

    init?(fromURL url: String) throws {
        guard let url = URL(string: url) else { return nil }
        let data = try Data(contentsOf: url)
        try self.init(data: data)
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString() throws -> String? {
        return String(data: try self.jsonData(), encoding: .utf8)
    }
}

extension Forkee {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Forkee.self, from: data)
    }

    init?(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else { return nil }
        try self.init(data: data)
    }

    init?(fromURL url: String) throws {
        guard let url = URL(string: url) else { return nil }
        let data = try Data(contentsOf: url)
        try self.init(data: data)
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString() throws -> String? {
        return String(data: try self.jsonData(), encoding: .utf8)
    }
}

extension License {
    init(data: Data) throws {
        self = try JSONDecoder().decode(License.self, from: data)
    }

    init?(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else { return nil }
        try self.init(data: data)
    }

    init?(fromURL url: String) throws {
        guard let url = URL(string: url) else { return nil }
        let data = try Data(contentsOf: url)
        try self.init(data: data)
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString() throws -> String? {
        return String(data: try self.jsonData(), encoding: .utf8)
    }
}

extension Issue {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Issue.self, from: data)
    }

    init?(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else { return nil }
        try self.init(data: data)
    }

    init?(fromURL url: String) throws {
        guard let url = URL(string: url) else { return nil }
        let data = try Data(contentsOf: url)
        try self.init(data: data)
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString() throws -> String? {
        return String(data: try self.jsonData(), encoding: .utf8)
    }
}

extension Label {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Label.self, from: data)
    }

    init?(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else { return nil }
        try self.init(data: data)
    }

    init?(fromURL url: String) throws {
        guard let url = URL(string: url) else { return nil }
        let data = try Data(contentsOf: url)
        try self.init(data: data)
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString() throws -> String? {
        return String(data: try self.jsonData(), encoding: .utf8)
    }
}

extension PullRequest {
    init(data: Data) throws {
        self = try JSONDecoder().decode(PullRequest.self, from: data)
    }

    init?(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else { return nil }
        try self.init(data: data)
    }

    init?(fromURL url: String) throws {
        guard let url = URL(string: url) else { return nil }
        let data = try Data(contentsOf: url)
        try self.init(data: data)
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString() throws -> String? {
        return String(data: try self.jsonData(), encoding: .utf8)
    }
}

extension Base {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Base.self, from: data)
    }

    init?(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else { return nil }
        try self.init(data: data)
    }

    init?(fromURL url: String) throws {
        guard let url = URL(string: url) else { return nil }
        let data = try Data(contentsOf: url)
        try self.init(data: data)
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString() throws -> String? {
        return String(data: try self.jsonData(), encoding: .utf8)
    }
}

extension PullRequestLinks {
    init(data: Data) throws {
        self = try JSONDecoder().decode(PullRequestLinks.self, from: data)
    }

    init?(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else { return nil }
        try self.init(data: data)
    }

    init?(fromURL url: String) throws {
        guard let url = URL(string: url) else { return nil }
        let data = try Data(contentsOf: url)
        try self.init(data: data)
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString() throws -> String? {
        return String(data: try self.jsonData(), encoding: .utf8)
    }
}

extension Repo {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Repo.self, from: data)
    }

    init?(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else { return nil }
        try self.init(data: data)
    }

    init?(fromURL url: String) throws {
        guard let url = URL(string: url) else { return nil }
        let data = try Data(contentsOf: url)
        try self.init(data: data)
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString() throws -> String? {
        return String(data: try self.jsonData(), encoding: .utf8)
    }
}

extension Gist {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Gist.self, from: data)
    }

    init?(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else { return nil }
        try self.init(data: data)
    }

    init?(fromURL url: String) throws {
        guard let url = URL(string: url) else { return nil }
        let data = try Data(contentsOf: url)
        try self.init(data: data)
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString() throws -> String? {
        return String(data: try self.jsonData(), encoding: .utf8)
    }
}

extension Files {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Files.self, from: data)
    }

    init?(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else { return nil }
        try self.init(data: data)
    }

    init?(fromURL url: String) throws {
        guard let url = URL(string: url) else { return nil }
        let data = try Data(contentsOf: url)
        try self.init(data: data)
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString() throws -> String? {
        return String(data: try self.jsonData(), encoding: .utf8)
    }
}

extension Empty {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Empty.self, from: data)
    }

    init?(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else { return nil }
        try self.init(data: data)
    }

    init?(fromURL url: String) throws {
        guard let url = URL(string: url) else { return nil }
        let data = try Data(contentsOf: url)
        try self.init(data: data)
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString() throws -> String? {
        return String(data: try self.jsonData(), encoding: .utf8)
    }
}

extension User {
    init(data: Data) throws {
        self = try JSONDecoder().decode(User.self, from: data)
    }

    init?(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else { return nil }
        try self.init(data: data)
    }

    init?(fromURL url: String) throws {
        guard let url = URL(string: url) else { return nil }
        let data = try Data(contentsOf: url)
        try self.init(data: data)
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString() throws -> String? {
        return String(data: try self.jsonData(), encoding: .utf8)
    }
}

extension Meta {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Meta.self, from: data)
    }

    init?(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else { return nil }
        try self.init(data: data)
    }

    init?(fromURL url: String) throws {
        guard let url = URL(string: url) else { return nil }
        let data = try Data(contentsOf: url)
        try self.init(data: data)
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString() throws -> String? {
        return String(data: try self.jsonData(), encoding: .utf8)
    }
}

extension Dictionary where Key == String, Value == String {
    init(data: Data) throws {
        self = try JSONDecoder().decode(APIData.self, from: data)
    }

    init?(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else { return nil }
        try self.init(data: data)
    }

    init?(fromURL url: String) throws {
        guard let url = URL(string: url) else { return nil }
        let data = try Data(contentsOf: url)
        try self.init(data: data)
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString() throws -> String? {
        return String(data: try self.jsonData(), encoding: .utf8)
    }
}

extension Dictionary where Key == String, Value == String {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Emojis.self, from: data)
    }

    init?(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else { return nil }
        try self.init(data: data)
    }

    init?(fromURL url: String) throws {
        guard let url = URL(string: url) else { return nil }
        let data = try Data(contentsOf: url)
        try self.init(data: data)
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString() throws -> String? {
        return String(data: try self.jsonData(), encoding: .utf8)
    }
}

extension Array where Element == Events.Element {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Events.self, from: data)
    }

    init?(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else { return nil }
        try self.init(data: data)
    }

    init?(fromURL url: String) throws {
        guard let url = URL(string: url) else { return nil }
        let data = try Data(contentsOf: url)
        try self.init(data: data)
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString() throws -> String? {
        return String(data: try self.jsonData(), encoding: .utf8)
    }
}

extension Array where Element == Gists.Element {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Gists.self, from: data)
    }

    init?(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else { return nil }
        try self.init(data: data)
    }

    init?(fromURL url: String) throws {
        guard let url = URL(string: url) else { return nil }
        let data = try Data(contentsOf: url)
        try self.init(data: data)
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString() throws -> String? {
        return String(data: try self.jsonData(), encoding: .utf8)
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
    public let value: Any

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
