// Example code that deserializes and serializes the model.
// extern crate serde;
// #[macro_use]
// extern crate serde_derive;
// extern crate serde_json;
//
// use generated_module::[object Object];
//
// fn main() {
//     let json = r#"{"answer": 42}"#;
//     let model: [object Object] = serde_json::from_str(&json).unwrap();
// }

extern crate serde_json;
use std::collections::HashMap;

pub type ApiData = HashMap<String, String>;
pub type Emojis = HashMap<String, String>;
pub type Events = Vec<Event>;
pub type Gists = Vec<Gist>;

#[derive(Serialize, Deserialize)]
pub struct Event {
    #[serde(rename = "id")]
    id: String,

    #[serde(rename = "type")]
    event_type: String,

    #[serde(rename = "actor")]
    actor: Actor,

    #[serde(rename = "repo")]
    repo: EventRepo,

    #[serde(rename = "payload")]
    payload: Payload,

    #[serde(rename = "public")]
    public: bool,

    #[serde(rename = "created_at")]
    created_at: String,

    #[serde(rename = "org")]
    org: Option<Actor>,
}

#[derive(Serialize, Deserialize)]
pub struct Actor {
    #[serde(rename = "id")]
    id: i64,

    #[serde(rename = "login")]
    login: String,

    #[serde(rename = "display_login")]
    display_login: Option<String>,

    #[serde(rename = "gravatar_id")]
    gravatar_id: String,

    #[serde(rename = "url")]
    url: String,

    #[serde(rename = "avatar_url")]
    avatar_url: String,
}

#[derive(Serialize, Deserialize)]
pub struct Payload {
    #[serde(rename = "push_id")]
    push_id: Option<i64>,

    #[serde(rename = "size")]
    size: Option<i64>,

    #[serde(rename = "distinct_size")]
    distinct_size: Option<i64>,

    #[serde(rename = "ref")]
    payload_ref: Option<String>,

    #[serde(rename = "head")]
    head: Option<String>,

    #[serde(rename = "before")]
    before: Option<String>,

    #[serde(rename = "commits")]
    commits: Option<Vec<Commit>>,

    #[serde(rename = "action")]
    action: Option<String>,

    #[serde(rename = "number")]
    number: Option<i64>,

    #[serde(rename = "pull_request")]
    pull_request: Option<PullRequest>,

    #[serde(rename = "ref_type")]
    ref_type: Option<String>,

    #[serde(rename = "master_branch")]
    master_branch: Option<String>,

    #[serde(rename = "description")]
    description: Option<String>,

    #[serde(rename = "pusher_type")]
    pusher_type: Option<String>,

    #[serde(rename = "comment")]
    comment: Option<Comment>,
}

#[derive(Serialize, Deserialize)]
pub struct Comment {
    #[serde(rename = "url")]
    url: String,

    #[serde(rename = "pull_request_review_id")]
    pull_request_review_id: i64,

    #[serde(rename = "id")]
    id: i64,

    #[serde(rename = "node_id")]
    node_id: String,

    #[serde(rename = "diff_hunk")]
    diff_hunk: String,

    #[serde(rename = "path")]
    path: String,

    #[serde(rename = "position")]
    position: i64,

    #[serde(rename = "original_position")]
    original_position: i64,

    #[serde(rename = "commit_id")]
    commit_id: String,

    #[serde(rename = "original_commit_id")]
    original_commit_id: String,

    #[serde(rename = "user")]
    user: Owner,

    #[serde(rename = "body")]
    body: String,

    #[serde(rename = "created_at")]
    created_at: String,

    #[serde(rename = "updated_at")]
    updated_at: String,

    #[serde(rename = "html_url")]
    html_url: String,

    #[serde(rename = "pull_request_url")]
    pull_request_url: String,

    #[serde(rename = "author_association")]
    author_association: String,

    #[serde(rename = "_links")]
    links: CommentLinks,
}

#[derive(Serialize, Deserialize)]
pub struct CommentLinks {
    #[serde(rename = "self")]
    links_self: Html,

    #[serde(rename = "html")]
    html: Html,

    #[serde(rename = "pull_request")]
    pull_request: Html,
}

#[derive(Serialize, Deserialize)]
pub struct Html {
    #[serde(rename = "href")]
    href: String,
}

#[derive(Serialize, Deserialize)]
pub struct Owner {
    #[serde(rename = "login")]
    login: String,

    #[serde(rename = "id")]
    id: i64,

    #[serde(rename = "node_id")]
    node_id: String,

    #[serde(rename = "avatar_url")]
    avatar_url: String,

    #[serde(rename = "gravatar_id")]
    gravatar_id: String,

    #[serde(rename = "url")]
    url: String,

    #[serde(rename = "html_url")]
    html_url: String,

    #[serde(rename = "followers_url")]
    followers_url: String,

    #[serde(rename = "following_url")]
    following_url: String,

    #[serde(rename = "gists_url")]
    gists_url: String,

    #[serde(rename = "starred_url")]
    starred_url: String,

    #[serde(rename = "subscriptions_url")]
    subscriptions_url: String,

    #[serde(rename = "organizations_url")]
    organizations_url: String,

    #[serde(rename = "repos_url")]
    repos_url: String,

    #[serde(rename = "events_url")]
    events_url: String,

    #[serde(rename = "received_events_url")]
    received_events_url: String,

    #[serde(rename = "type")]
    owner_type: Type,

    #[serde(rename = "site_admin")]
    site_admin: bool,
}

#[derive(Serialize, Deserialize)]
pub struct Commit {
    #[serde(rename = "sha")]
    sha: String,

    #[serde(rename = "author")]
    author: Author,

    #[serde(rename = "message")]
    message: String,

    #[serde(rename = "distinct")]
    distinct: bool,

    #[serde(rename = "url")]
    url: String,
}

#[derive(Serialize, Deserialize)]
pub struct Author {
    #[serde(rename = "email")]
    email: String,

    #[serde(rename = "name")]
    name: String,
}

#[derive(Serialize, Deserialize)]
pub struct PullRequest {
    #[serde(rename = "url")]
    url: String,

    #[serde(rename = "id")]
    id: i64,

    #[serde(rename = "node_id")]
    node_id: String,

    #[serde(rename = "html_url")]
    html_url: String,

    #[serde(rename = "diff_url")]
    diff_url: String,

    #[serde(rename = "patch_url")]
    patch_url: String,

    #[serde(rename = "issue_url")]
    issue_url: String,

    #[serde(rename = "number")]
    number: i64,

    #[serde(rename = "state")]
    state: String,

    #[serde(rename = "locked")]
    locked: bool,

    #[serde(rename = "title")]
    title: String,

    #[serde(rename = "user")]
    user: Owner,

    #[serde(rename = "body")]
    body: Option<String>,

    #[serde(rename = "created_at")]
    created_at: String,

    #[serde(rename = "updated_at")]
    updated_at: String,

    #[serde(rename = "closed_at")]
    closed_at: Option<serde_json::Value>,

    #[serde(rename = "merged_at")]
    merged_at: Option<serde_json::Value>,

    #[serde(rename = "merge_commit_sha")]
    merge_commit_sha: Option<String>,

    #[serde(rename = "assignee")]
    assignee: Option<serde_json::Value>,

    #[serde(rename = "assignees")]
    assignees: Vec<Option<serde_json::Value>>,

    #[serde(rename = "requested_reviewers")]
    requested_reviewers: Vec<Option<serde_json::Value>>,

    #[serde(rename = "requested_teams")]
    requested_teams: Vec<Option<serde_json::Value>>,

    #[serde(rename = "labels")]
    labels: Vec<Option<serde_json::Value>>,

    #[serde(rename = "milestone")]
    milestone: Option<serde_json::Value>,

    #[serde(rename = "commits_url")]
    commits_url: String,

    #[serde(rename = "review_comments_url")]
    review_comments_url: String,

    #[serde(rename = "review_comment_url")]
    review_comment_url: String,

    #[serde(rename = "comments_url")]
    comments_url: String,

    #[serde(rename = "statuses_url")]
    statuses_url: String,

    #[serde(rename = "head")]
    head: Base,

    #[serde(rename = "base")]
    base: Base,

    #[serde(rename = "_links")]
    links: PullRequestLinks,

    #[serde(rename = "author_association")]
    author_association: String,

    #[serde(rename = "merged")]
    merged: Option<bool>,

    #[serde(rename = "mergeable")]
    mergeable: Option<serde_json::Value>,

    #[serde(rename = "rebaseable")]
    rebaseable: Option<serde_json::Value>,

    #[serde(rename = "mergeable_state")]
    mergeable_state: Option<String>,

    #[serde(rename = "merged_by")]
    merged_by: Option<serde_json::Value>,

    #[serde(rename = "comments")]
    comments: Option<i64>,

    #[serde(rename = "review_comments")]
    review_comments: Option<i64>,

    #[serde(rename = "maintainer_can_modify")]
    maintainer_can_modify: Option<bool>,

    #[serde(rename = "commits")]
    commits: Option<i64>,

    #[serde(rename = "additions")]
    additions: Option<i64>,

    #[serde(rename = "deletions")]
    deletions: Option<i64>,

    #[serde(rename = "changed_files")]
    changed_files: Option<i64>,
}

#[derive(Serialize, Deserialize)]
pub struct Base {
    #[serde(rename = "label")]
    label: String,

    #[serde(rename = "ref")]
    base_ref: String,

    #[serde(rename = "sha")]
    sha: String,

    #[serde(rename = "user")]
    user: Owner,

    #[serde(rename = "repo")]
    repo: BaseRepo,
}

#[derive(Serialize, Deserialize)]
pub struct BaseRepo {
    #[serde(rename = "id")]
    id: i64,

    #[serde(rename = "node_id")]
    node_id: String,

    #[serde(rename = "name")]
    name: String,

    #[serde(rename = "full_name")]
    full_name: String,

    #[serde(rename = "owner")]
    owner: Owner,

    #[serde(rename = "private")]
    private: bool,

    #[serde(rename = "html_url")]
    html_url: String,

    #[serde(rename = "description")]
    description: Option<String>,

    #[serde(rename = "fork")]
    fork: bool,

    #[serde(rename = "url")]
    url: String,

    #[serde(rename = "forks_url")]
    forks_url: String,

    #[serde(rename = "keys_url")]
    keys_url: String,

    #[serde(rename = "collaborators_url")]
    collaborators_url: String,

    #[serde(rename = "teams_url")]
    teams_url: String,

    #[serde(rename = "hooks_url")]
    hooks_url: String,

    #[serde(rename = "issue_events_url")]
    issue_events_url: String,

    #[serde(rename = "events_url")]
    events_url: String,

    #[serde(rename = "assignees_url")]
    assignees_url: String,

    #[serde(rename = "branches_url")]
    branches_url: String,

    #[serde(rename = "tags_url")]
    tags_url: String,

    #[serde(rename = "blobs_url")]
    blobs_url: String,

    #[serde(rename = "git_tags_url")]
    git_tags_url: String,

    #[serde(rename = "git_refs_url")]
    git_refs_url: String,

    #[serde(rename = "trees_url")]
    trees_url: String,

    #[serde(rename = "statuses_url")]
    statuses_url: String,

    #[serde(rename = "languages_url")]
    languages_url: String,

    #[serde(rename = "stargazers_url")]
    stargazers_url: String,

    #[serde(rename = "contributors_url")]
    contributors_url: String,

    #[serde(rename = "subscribers_url")]
    subscribers_url: String,

    #[serde(rename = "subscription_url")]
    subscription_url: String,

    #[serde(rename = "commits_url")]
    commits_url: String,

    #[serde(rename = "git_commits_url")]
    git_commits_url: String,

    #[serde(rename = "comments_url")]
    comments_url: String,

    #[serde(rename = "issue_comment_url")]
    issue_comment_url: String,

    #[serde(rename = "contents_url")]
    contents_url: String,

    #[serde(rename = "compare_url")]
    compare_url: String,

    #[serde(rename = "merges_url")]
    merges_url: String,

    #[serde(rename = "archive_url")]
    archive_url: String,

    #[serde(rename = "downloads_url")]
    downloads_url: String,

    #[serde(rename = "issues_url")]
    issues_url: String,

    #[serde(rename = "pulls_url")]
    pulls_url: String,

    #[serde(rename = "milestones_url")]
    milestones_url: String,

    #[serde(rename = "notifications_url")]
    notifications_url: String,

    #[serde(rename = "labels_url")]
    labels_url: String,

    #[serde(rename = "releases_url")]
    releases_url: String,

    #[serde(rename = "deployments_url")]
    deployments_url: String,

    #[serde(rename = "created_at")]
    created_at: String,

    #[serde(rename = "updated_at")]
    updated_at: String,

    #[serde(rename = "pushed_at")]
    pushed_at: String,

    #[serde(rename = "git_url")]
    git_url: String,

    #[serde(rename = "ssh_url")]
    ssh_url: String,

    #[serde(rename = "clone_url")]
    clone_url: String,

    #[serde(rename = "svn_url")]
    svn_url: String,

    #[serde(rename = "homepage")]
    homepage: Option<String>,

    #[serde(rename = "size")]
    size: i64,

    #[serde(rename = "stargazers_count")]
    stargazers_count: i64,

    #[serde(rename = "watchers_count")]
    watchers_count: i64,

    #[serde(rename = "language")]
    language: String,

    #[serde(rename = "has_issues")]
    has_issues: bool,

    #[serde(rename = "has_projects")]
    has_projects: bool,

    #[serde(rename = "has_downloads")]
    has_downloads: bool,

    #[serde(rename = "has_wiki")]
    has_wiki: bool,

    #[serde(rename = "has_pages")]
    has_pages: bool,

    #[serde(rename = "forks_count")]
    forks_count: i64,

    #[serde(rename = "mirror_url")]
    mirror_url: Option<serde_json::Value>,

    #[serde(rename = "archived")]
    archived: bool,

    #[serde(rename = "open_issues_count")]
    open_issues_count: i64,

    #[serde(rename = "license")]
    license: Option<License>,

    #[serde(rename = "forks")]
    forks: i64,

    #[serde(rename = "open_issues")]
    open_issues: i64,

    #[serde(rename = "watchers")]
    watchers: i64,

    #[serde(rename = "default_branch")]
    default_branch: String,
}

#[derive(Serialize, Deserialize)]
pub struct License {
    #[serde(rename = "key")]
    key: String,

    #[serde(rename = "name")]
    name: String,

    #[serde(rename = "spdx_id")]
    spdx_id: Option<String>,

    #[serde(rename = "url")]
    url: Option<String>,

    #[serde(rename = "node_id")]
    node_id: String,
}

#[derive(Serialize, Deserialize)]
pub struct PullRequestLinks {
    #[serde(rename = "self")]
    links_self: Html,

    #[serde(rename = "html")]
    html: Html,

    #[serde(rename = "issue")]
    issue: Html,

    #[serde(rename = "comments")]
    comments: Html,

    #[serde(rename = "review_comments")]
    review_comments: Html,

    #[serde(rename = "review_comment")]
    review_comment: Html,

    #[serde(rename = "commits")]
    commits: Html,

    #[serde(rename = "statuses")]
    statuses: Html,
}

#[derive(Serialize, Deserialize)]
pub struct EventRepo {
    #[serde(rename = "id")]
    id: i64,

    #[serde(rename = "name")]
    name: String,

    #[serde(rename = "url")]
    url: String,
}

#[derive(Serialize, Deserialize)]
pub struct Gist {
    #[serde(rename = "url")]
    url: String,

    #[serde(rename = "forks_url")]
    forks_url: String,

    #[serde(rename = "commits_url")]
    commits_url: String,

    #[serde(rename = "id")]
    id: String,

    #[serde(rename = "node_id")]
    node_id: String,

    #[serde(rename = "git_pull_url")]
    git_pull_url: String,

    #[serde(rename = "git_push_url")]
    git_push_url: String,

    #[serde(rename = "html_url")]
    html_url: String,

    #[serde(rename = "files")]
    files: HashMap<String, File>,

    #[serde(rename = "public")]
    public: bool,

    #[serde(rename = "created_at")]
    created_at: String,

    #[serde(rename = "updated_at")]
    updated_at: String,

    #[serde(rename = "description")]
    description: Option<String>,

    #[serde(rename = "comments")]
    comments: i64,

    #[serde(rename = "user")]
    user: Option<serde_json::Value>,

    #[serde(rename = "comments_url")]
    comments_url: String,

    #[serde(rename = "owner")]
    owner: Owner,

    #[serde(rename = "truncated")]
    truncated: bool,
}

#[derive(Serialize, Deserialize)]
pub struct File {
    #[serde(rename = "filename")]
    filename: String,

    #[serde(rename = "type")]
    file_type: String,

    #[serde(rename = "language")]
    language: Option<String>,

    #[serde(rename = "raw_url")]
    raw_url: String,

    #[serde(rename = "size")]
    size: i64,
}

#[derive(Serialize, Deserialize)]
pub struct Meta {
    #[serde(rename = "verifiable_password_authentication")]
    verifiable_password_authentication: bool,

    #[serde(rename = "github_services_sha")]
    github_services_sha: String,

    #[serde(rename = "hooks")]
    hooks: Vec<String>,

    #[serde(rename = "git")]
    git: Vec<String>,

    #[serde(rename = "pages")]
    pages: Vec<String>,

    #[serde(rename = "importer")]
    importer: Vec<String>,
}

#[derive(Serialize, Deserialize)]
pub enum Type {
    #[serde(rename = "Organization")]
    Organization,

    #[serde(rename = "User")]
    User,
}
