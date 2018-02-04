//  To parse this JSON data, first install
//
//      Boost     http://www.boost.org
//      json.hpp  https://github.com/nlohmann/json
//
//  Then include this file, and then do
//
//     ApiData data = nlohmann::json::parse(jsonString);
//     Emojis data = nlohmann::json::parse(jsonString);
//     Events data = nlohmann::json::parse(jsonString);
//     Gists data = nlohmann::json::parse(jsonString);
//     Meta data = nlohmann::json::parse(jsonString);

#include "json.hpp"

namespace quicktype {
    using nlohmann::json;

    enum class GravatarID { EMPTY };

    struct Actor {
        int64_t id;
        std::string login;
        std::unique_ptr<std::string> display_login;
        GravatarID gravatar_id;
        std::string url;
        std::string avatar_url;
    };

    struct Html {
        std::string href;
    };

    struct CommentLinks {
        struct Html self;
        struct Html html;
        struct Html pull_request;
    };

    enum class UserType { ORGANIZATION, USER };

    struct User {
        std::string login;
        int64_t id;
        std::string avatar_url;
        GravatarID gravatar_id;
        std::string url;
        std::string html_url;
        std::string followers_url;
        std::string following_url;
        std::string gists_url;
        std::string starred_url;
        std::string subscriptions_url;
        std::string organizations_url;
        std::string repos_url;
        std::string events_url;
        std::string received_events_url;
        UserType type;
        bool site_admin;
    };

    struct Comment {
        std::string url;
        std::string html_url;
        std::unique_ptr<std::string> issue_url;
        int64_t id;
        struct User user;
        std::string created_at;
        std::string updated_at;
        std::string author_association;
        std::string body;
        std::unique_ptr<int64_t> pull_request_review_id;
        std::unique_ptr<std::string> diff_hunk;
        std::unique_ptr<std::string> path;
        std::unique_ptr<int64_t> position;
        std::unique_ptr<int64_t> original_position;
        std::unique_ptr<std::string> commit_id;
        std::unique_ptr<std::string> original_commit_id;
        std::unique_ptr<std::string> pull_request_url;
        std::unique_ptr<struct CommentLinks> links;
    };

    struct Author {
        std::string email;
        std::string name;
    };

    struct Commit {
        std::string sha;
        struct Author author;
        std::string message;
        bool distinct;
        std::string url;
    };

    enum class DefaultBranch { MASTER };

    enum class Homepage { EMPTY, HTTPS_VALLORIC_GITHUB_IO_YCMD };

    struct License {
        std::string key;
        std::string name;
        std::string spdx_id;
        std::string url;
    };

    struct Forkee {
        int64_t id;
        std::string name;
        std::string full_name;
        struct User owner;
        bool purple_private;
        std::string html_url;
        std::unique_ptr<std::string> description;
        bool fork;
        std::string url;
        std::string forks_url;
        std::string keys_url;
        std::string collaborators_url;
        std::string teams_url;
        std::string hooks_url;
        std::string issue_events_url;
        std::string events_url;
        std::string assignees_url;
        std::string branches_url;
        std::string tags_url;
        std::string blobs_url;
        std::string git_tags_url;
        std::string git_refs_url;
        std::string trees_url;
        std::string statuses_url;
        std::string languages_url;
        std::string stargazers_url;
        std::string contributors_url;
        std::string subscribers_url;
        std::string subscription_url;
        std::string commits_url;
        std::string git_commits_url;
        std::string comments_url;
        std::string issue_comment_url;
        std::string contents_url;
        std::string compare_url;
        std::string merges_url;
        std::string archive_url;
        std::string downloads_url;
        std::string issues_url;
        std::string pulls_url;
        std::string milestones_url;
        std::string notifications_url;
        std::string labels_url;
        std::string releases_url;
        std::string deployments_url;
        std::string created_at;
        std::string updated_at;
        std::string pushed_at;
        std::string git_url;
        std::string ssh_url;
        std::string clone_url;
        std::string svn_url;
        std::unique_ptr<Homepage> homepage;
        int64_t size;
        int64_t stargazers_count;
        int64_t watchers_count;
        std::unique_ptr<std::string> language;
        bool has_issues;
        bool has_projects;
        bool has_downloads;
        bool has_wiki;
        bool has_pages;
        int64_t forks_count;
        nlohmann::json mirror_url;
        bool archived;
        int64_t open_issues_count;
        std::unique_ptr<struct License> license;
        int64_t forks;
        int64_t open_issues;
        int64_t watchers;
        DefaultBranch default_branch;
        std::unique_ptr<bool> purple_public;
    };

    struct Label {
        int64_t id;
        std::string url;
        std::string name;
        std::string color;
        bool purple_default;
    };

    struct Milestone {
        std::string url;
        std::string html_url;
        std::string labels_url;
        int64_t id;
        int64_t number;
        std::string title;
        nlohmann::json description;
        struct User creator;
        int64_t open_issues;
        int64_t closed_issues;
        std::string state;
        std::string created_at;
        std::string updated_at;
        nlohmann::json due_on;
        nlohmann::json closed_at;
    };

    struct IssuePullRequest {
        std::string url;
        std::string html_url;
        std::string diff_url;
        std::string patch_url;
    };

    struct Issue {
        std::string url;
        std::string repository_url;
        std::string labels_url;
        std::string comments_url;
        std::string events_url;
        std::string html_url;
        int64_t id;
        int64_t number;
        std::string title;
        struct User user;
        std::vector<struct Label> labels;
        std::string state;
        bool locked;
        nlohmann::json assignee;
        std::vector<nlohmann::json> assignees;
        std::unique_ptr<struct Milestone> milestone;
        int64_t comments;
        std::string created_at;
        std::string updated_at;
        std::unique_ptr<std::string> closed_at;
        std::string author_association;
        std::string body;
        std::unique_ptr<struct IssuePullRequest> pull_request;
    };

    struct Base {
        std::string label;
        std::string ref;
        std::string sha;
        struct User user;
        struct Forkee repo;
    };

    struct PullRequestLinks {
        struct Html self;
        struct Html html;
        struct Html issue;
        struct Html comments;
        struct Html review_comments;
        struct Html review_comment;
        struct Html commits;
        struct Html statuses;
    };

    struct PayloadPullRequest {
        std::string url;
        int64_t id;
        std::string html_url;
        std::string diff_url;
        std::string patch_url;
        std::string issue_url;
        int64_t number;
        std::string state;
        bool locked;
        std::string title;
        struct User user;
        std::string body;
        std::string created_at;
        std::string updated_at;
        std::unique_ptr<std::string> closed_at;
        nlohmann::json merged_at;
        std::unique_ptr<std::string> merge_commit_sha;
        nlohmann::json assignee;
        std::vector<nlohmann::json> assignees;
        std::vector<nlohmann::json> requested_reviewers;
        std::vector<nlohmann::json> requested_teams;
        nlohmann::json milestone;
        std::string commits_url;
        std::string review_comments_url;
        std::string review_comment_url;
        std::string comments_url;
        std::string statuses_url;
        struct Base head;
        struct Base base;
        struct PullRequestLinks links;
        std::string author_association;
        std::unique_ptr<bool> merged;
        std::unique_ptr<bool> mergeable;
        std::unique_ptr<bool> rebaseable;
        std::unique_ptr<std::string> mergeable_state;
        nlohmann::json merged_by;
        std::unique_ptr<int64_t> comments;
        std::unique_ptr<int64_t> review_comments;
        std::unique_ptr<bool> maintainer_can_modify;
        std::unique_ptr<int64_t> commits;
        std::unique_ptr<int64_t> additions;
        std::unique_ptr<int64_t> deletions;
        std::unique_ptr<int64_t> changed_files;
    };

    struct Payload {
        std::unique_ptr<std::string> action;
        std::unique_ptr<int64_t> number;
        std::unique_ptr<struct PayloadPullRequest> pull_request;
        std::unique_ptr<struct Forkee> forkee;
        std::unique_ptr<std::string> ref;
        std::unique_ptr<std::string> ref_type;
        std::unique_ptr<std::string> pusher_type;
        std::unique_ptr<int64_t> push_id;
        std::unique_ptr<int64_t> size;
        std::unique_ptr<int64_t> distinct_size;
        std::unique_ptr<std::string> head;
        std::unique_ptr<std::string> before;
        std::unique_ptr<std::vector<struct Commit>> commits;
        std::unique_ptr<struct Issue> issue;
        std::unique_ptr<std::string> master_branch;
        std::unique_ptr<std::string> description;
        std::unique_ptr<struct Comment> comment;
    };

    struct Repo {
        int64_t id;
        std::string name;
        std::string url;
    };

    struct Event {
        std::string id;
        std::string type;
        struct Actor actor;
        struct Repo repo;
        struct Payload payload;
        bool purple_public;
        std::string created_at;
        std::unique_ptr<struct Actor> org;
    };

    enum class FileType { APPLICATION_JAVASCRIPT, APPLICATION_JSON, TEXT_CSS, TEXT_HTML, TEXT_PLAIN };

    struct File {
        std::string filename;
        FileType type;
        std::unique_ptr<std::string> language;
        std::string raw_url;
        int64_t size;
    };

    enum class GravatarID { EMPTY };

    enum class UserType { ORGANIZATION, USER };

    struct User {
        std::string login;
        int64_t id;
        std::string avatar_url;
        GravatarID gravatar_id;
        std::string url;
        std::string html_url;
        std::string followers_url;
        std::string following_url;
        std::string gists_url;
        std::string starred_url;
        std::string subscriptions_url;
        std::string organizations_url;
        std::string repos_url;
        std::string events_url;
        std::string received_events_url;
        UserType type;
        bool site_admin;
    };

    struct Gist {
        std::string url;
        std::string forks_url;
        std::string commits_url;
        std::string id;
        std::string git_pull_url;
        std::string git_push_url;
        std::string html_url;
        std::map<std::string, struct File> files;
        bool purple_public;
        std::string created_at;
        std::string updated_at;
        std::unique_ptr<std::string> description;
        int64_t comments;
        nlohmann::json user;
        std::string comments_url;
        bool truncated;
        std::unique_ptr<struct User> owner;
    };

    struct Meta {
        bool verifiable_password_authentication;
        std::string github_services_sha;
        std::vector<std::string> hooks;
        std::vector<std::string> git;
        std::vector<std::string> pages;
        std::vector<std::string> importer;
    };

    typedef std::map<std::string, std::string> ApiData;
    typedef std::map<std::string, std::string> Emojis;
    typedef std::vector<struct Event> Events;
    typedef std::vector<struct Gist> Gists;
    
    inline json get_untyped(const json &j, const char *property) {
        if (j.find(property) != j.end()) {
            return j.at(property).get<json>();
        }
        return json();
    }
    
    template <typename T>
    inline std::unique_ptr<T> get_optional(const json &j, const char *property) {
        if (j.find(property) != j.end())
            return j.at(property).get<std::unique_ptr<T>>();
        return std::unique_ptr<T>();
    }
}

namespace nlohmann {
    template <typename T>
    struct adl_serializer<std::unique_ptr<T>> {
        static void to_json(json& j, const std::unique_ptr<T>& opt) {
            if (!opt)
                j = nullptr;
            else
                j = *opt;
        }

        static std::unique_ptr<T> from_json(const json& j) {
            if (j.is_null())
                return std::unique_ptr<T>();
            else
                return std::unique_ptr<T>(new T(j.get<T>()));
        }
    };

    inline void from_json(const json& _j, struct quicktype::Actor& _x) {
        _x.id = _j.at("id").get<int64_t>();
        _x.login = _j.at("login").get<std::string>();
        _x.display_login = quicktype::get_optional<std::string>(_j, "display_login");
        _x.gravatar_id = _j.at("gravatar_id").get<quicktype::GravatarID>();
        _x.url = _j.at("url").get<std::string>();
        _x.avatar_url = _j.at("avatar_url").get<std::string>();
    }

    inline void to_json(json& _j, const struct quicktype::Actor& _x) {
        _j = json::object();
        _j["id"] = _x.id;
        _j["login"] = _x.login;
        _j["display_login"] = _x.display_login;
        _j["gravatar_id"] = _x.gravatar_id;
        _j["url"] = _x.url;
        _j["avatar_url"] = _x.avatar_url;
    }

    inline void from_json(const json& _j, struct quicktype::Html& _x) {
        _x.href = _j.at("href").get<std::string>();
    }

    inline void to_json(json& _j, const struct quicktype::Html& _x) {
        _j = json::object();
        _j["href"] = _x.href;
    }

    inline void from_json(const json& _j, struct quicktype::CommentLinks& _x) {
        _x.self = _j.at("self").get<struct quicktype::Html>();
        _x.html = _j.at("html").get<struct quicktype::Html>();
        _x.pull_request = _j.at("pull_request").get<struct quicktype::Html>();
    }

    inline void to_json(json& _j, const struct quicktype::CommentLinks& _x) {
        _j = json::object();
        _j["self"] = _x.self;
        _j["html"] = _x.html;
        _j["pull_request"] = _x.pull_request;
    }

    inline void from_json(const json& _j, struct quicktype::User& _x) {
        _x.login = _j.at("login").get<std::string>();
        _x.id = _j.at("id").get<int64_t>();
        _x.avatar_url = _j.at("avatar_url").get<std::string>();
        _x.gravatar_id = _j.at("gravatar_id").get<quicktype::GravatarID>();
        _x.url = _j.at("url").get<std::string>();
        _x.html_url = _j.at("html_url").get<std::string>();
        _x.followers_url = _j.at("followers_url").get<std::string>();
        _x.following_url = _j.at("following_url").get<std::string>();
        _x.gists_url = _j.at("gists_url").get<std::string>();
        _x.starred_url = _j.at("starred_url").get<std::string>();
        _x.subscriptions_url = _j.at("subscriptions_url").get<std::string>();
        _x.organizations_url = _j.at("organizations_url").get<std::string>();
        _x.repos_url = _j.at("repos_url").get<std::string>();
        _x.events_url = _j.at("events_url").get<std::string>();
        _x.received_events_url = _j.at("received_events_url").get<std::string>();
        _x.type = _j.at("type").get<quicktype::UserType>();
        _x.site_admin = _j.at("site_admin").get<bool>();
    }

    inline void to_json(json& _j, const struct quicktype::User& _x) {
        _j = json::object();
        _j["login"] = _x.login;
        _j["id"] = _x.id;
        _j["avatar_url"] = _x.avatar_url;
        _j["gravatar_id"] = _x.gravatar_id;
        _j["url"] = _x.url;
        _j["html_url"] = _x.html_url;
        _j["followers_url"] = _x.followers_url;
        _j["following_url"] = _x.following_url;
        _j["gists_url"] = _x.gists_url;
        _j["starred_url"] = _x.starred_url;
        _j["subscriptions_url"] = _x.subscriptions_url;
        _j["organizations_url"] = _x.organizations_url;
        _j["repos_url"] = _x.repos_url;
        _j["events_url"] = _x.events_url;
        _j["received_events_url"] = _x.received_events_url;
        _j["type"] = _x.type;
        _j["site_admin"] = _x.site_admin;
    }

    inline void from_json(const json& _j, struct quicktype::Comment& _x) {
        _x.url = _j.at("url").get<std::string>();
        _x.html_url = _j.at("html_url").get<std::string>();
        _x.issue_url = quicktype::get_optional<std::string>(_j, "issue_url");
        _x.id = _j.at("id").get<int64_t>();
        _x.user = _j.at("user").get<struct quicktype::User>();
        _x.created_at = _j.at("created_at").get<std::string>();
        _x.updated_at = _j.at("updated_at").get<std::string>();
        _x.author_association = _j.at("author_association").get<std::string>();
        _x.body = _j.at("body").get<std::string>();
        _x.pull_request_review_id = quicktype::get_optional<int64_t>(_j, "pull_request_review_id");
        _x.diff_hunk = quicktype::get_optional<std::string>(_j, "diff_hunk");
        _x.path = quicktype::get_optional<std::string>(_j, "path");
        _x.position = quicktype::get_optional<int64_t>(_j, "position");
        _x.original_position = quicktype::get_optional<int64_t>(_j, "original_position");
        _x.commit_id = quicktype::get_optional<std::string>(_j, "commit_id");
        _x.original_commit_id = quicktype::get_optional<std::string>(_j, "original_commit_id");
        _x.pull_request_url = quicktype::get_optional<std::string>(_j, "pull_request_url");
        _x.links = quicktype::get_optional<struct quicktype::CommentLinks>(_j, "_links");
    }

    inline void to_json(json& _j, const struct quicktype::Comment& _x) {
        _j = json::object();
        _j["url"] = _x.url;
        _j["html_url"] = _x.html_url;
        _j["issue_url"] = _x.issue_url;
        _j["id"] = _x.id;
        _j["user"] = _x.user;
        _j["created_at"] = _x.created_at;
        _j["updated_at"] = _x.updated_at;
        _j["author_association"] = _x.author_association;
        _j["body"] = _x.body;
        _j["pull_request_review_id"] = _x.pull_request_review_id;
        _j["diff_hunk"] = _x.diff_hunk;
        _j["path"] = _x.path;
        _j["position"] = _x.position;
        _j["original_position"] = _x.original_position;
        _j["commit_id"] = _x.commit_id;
        _j["original_commit_id"] = _x.original_commit_id;
        _j["pull_request_url"] = _x.pull_request_url;
        _j["_links"] = _x.links;
    }

    inline void from_json(const json& _j, struct quicktype::Author& _x) {
        _x.email = _j.at("email").get<std::string>();
        _x.name = _j.at("name").get<std::string>();
    }

    inline void to_json(json& _j, const struct quicktype::Author& _x) {
        _j = json::object();
        _j["email"] = _x.email;
        _j["name"] = _x.name;
    }

    inline void from_json(const json& _j, struct quicktype::Commit& _x) {
        _x.sha = _j.at("sha").get<std::string>();
        _x.author = _j.at("author").get<struct quicktype::Author>();
        _x.message = _j.at("message").get<std::string>();
        _x.distinct = _j.at("distinct").get<bool>();
        _x.url = _j.at("url").get<std::string>();
    }

    inline void to_json(json& _j, const struct quicktype::Commit& _x) {
        _j = json::object();
        _j["sha"] = _x.sha;
        _j["author"] = _x.author;
        _j["message"] = _x.message;
        _j["distinct"] = _x.distinct;
        _j["url"] = _x.url;
    }

    inline void from_json(const json& _j, struct quicktype::License& _x) {
        _x.key = _j.at("key").get<std::string>();
        _x.name = _j.at("name").get<std::string>();
        _x.spdx_id = _j.at("spdx_id").get<std::string>();
        _x.url = _j.at("url").get<std::string>();
    }

    inline void to_json(json& _j, const struct quicktype::License& _x) {
        _j = json::object();
        _j["key"] = _x.key;
        _j["name"] = _x.name;
        _j["spdx_id"] = _x.spdx_id;
        _j["url"] = _x.url;
    }

    inline void from_json(const json& _j, struct quicktype::Forkee& _x) {
        _x.id = _j.at("id").get<int64_t>();
        _x.name = _j.at("name").get<std::string>();
        _x.full_name = _j.at("full_name").get<std::string>();
        _x.owner = _j.at("owner").get<struct quicktype::User>();
        _x.purple_private = _j.at("private").get<bool>();
        _x.html_url = _j.at("html_url").get<std::string>();
        _x.description = quicktype::get_optional<std::string>(_j, "description");
        _x.fork = _j.at("fork").get<bool>();
        _x.url = _j.at("url").get<std::string>();
        _x.forks_url = _j.at("forks_url").get<std::string>();
        _x.keys_url = _j.at("keys_url").get<std::string>();
        _x.collaborators_url = _j.at("collaborators_url").get<std::string>();
        _x.teams_url = _j.at("teams_url").get<std::string>();
        _x.hooks_url = _j.at("hooks_url").get<std::string>();
        _x.issue_events_url = _j.at("issue_events_url").get<std::string>();
        _x.events_url = _j.at("events_url").get<std::string>();
        _x.assignees_url = _j.at("assignees_url").get<std::string>();
        _x.branches_url = _j.at("branches_url").get<std::string>();
        _x.tags_url = _j.at("tags_url").get<std::string>();
        _x.blobs_url = _j.at("blobs_url").get<std::string>();
        _x.git_tags_url = _j.at("git_tags_url").get<std::string>();
        _x.git_refs_url = _j.at("git_refs_url").get<std::string>();
        _x.trees_url = _j.at("trees_url").get<std::string>();
        _x.statuses_url = _j.at("statuses_url").get<std::string>();
        _x.languages_url = _j.at("languages_url").get<std::string>();
        _x.stargazers_url = _j.at("stargazers_url").get<std::string>();
        _x.contributors_url = _j.at("contributors_url").get<std::string>();
        _x.subscribers_url = _j.at("subscribers_url").get<std::string>();
        _x.subscription_url = _j.at("subscription_url").get<std::string>();
        _x.commits_url = _j.at("commits_url").get<std::string>();
        _x.git_commits_url = _j.at("git_commits_url").get<std::string>();
        _x.comments_url = _j.at("comments_url").get<std::string>();
        _x.issue_comment_url = _j.at("issue_comment_url").get<std::string>();
        _x.contents_url = _j.at("contents_url").get<std::string>();
        _x.compare_url = _j.at("compare_url").get<std::string>();
        _x.merges_url = _j.at("merges_url").get<std::string>();
        _x.archive_url = _j.at("archive_url").get<std::string>();
        _x.downloads_url = _j.at("downloads_url").get<std::string>();
        _x.issues_url = _j.at("issues_url").get<std::string>();
        _x.pulls_url = _j.at("pulls_url").get<std::string>();
        _x.milestones_url = _j.at("milestones_url").get<std::string>();
        _x.notifications_url = _j.at("notifications_url").get<std::string>();
        _x.labels_url = _j.at("labels_url").get<std::string>();
        _x.releases_url = _j.at("releases_url").get<std::string>();
        _x.deployments_url = _j.at("deployments_url").get<std::string>();
        _x.created_at = _j.at("created_at").get<std::string>();
        _x.updated_at = _j.at("updated_at").get<std::string>();
        _x.pushed_at = _j.at("pushed_at").get<std::string>();
        _x.git_url = _j.at("git_url").get<std::string>();
        _x.ssh_url = _j.at("ssh_url").get<std::string>();
        _x.clone_url = _j.at("clone_url").get<std::string>();
        _x.svn_url = _j.at("svn_url").get<std::string>();
        _x.homepage = quicktype::get_optional<quicktype::Homepage>(_j, "homepage");
        _x.size = _j.at("size").get<int64_t>();
        _x.stargazers_count = _j.at("stargazers_count").get<int64_t>();
        _x.watchers_count = _j.at("watchers_count").get<int64_t>();
        _x.language = quicktype::get_optional<std::string>(_j, "language");
        _x.has_issues = _j.at("has_issues").get<bool>();
        _x.has_projects = _j.at("has_projects").get<bool>();
        _x.has_downloads = _j.at("has_downloads").get<bool>();
        _x.has_wiki = _j.at("has_wiki").get<bool>();
        _x.has_pages = _j.at("has_pages").get<bool>();
        _x.forks_count = _j.at("forks_count").get<int64_t>();
        _x.mirror_url = quicktype::get_untyped(_j, "mirror_url");
        _x.archived = _j.at("archived").get<bool>();
        _x.open_issues_count = _j.at("open_issues_count").get<int64_t>();
        _x.license = quicktype::get_optional<struct quicktype::License>(_j, "license");
        _x.forks = _j.at("forks").get<int64_t>();
        _x.open_issues = _j.at("open_issues").get<int64_t>();
        _x.watchers = _j.at("watchers").get<int64_t>();
        _x.default_branch = _j.at("default_branch").get<quicktype::DefaultBranch>();
        _x.purple_public = quicktype::get_optional<bool>(_j, "public");
    }

    inline void to_json(json& _j, const struct quicktype::Forkee& _x) {
        _j = json::object();
        _j["id"] = _x.id;
        _j["name"] = _x.name;
        _j["full_name"] = _x.full_name;
        _j["owner"] = _x.owner;
        _j["private"] = _x.purple_private;
        _j["html_url"] = _x.html_url;
        _j["description"] = _x.description;
        _j["fork"] = _x.fork;
        _j["url"] = _x.url;
        _j["forks_url"] = _x.forks_url;
        _j["keys_url"] = _x.keys_url;
        _j["collaborators_url"] = _x.collaborators_url;
        _j["teams_url"] = _x.teams_url;
        _j["hooks_url"] = _x.hooks_url;
        _j["issue_events_url"] = _x.issue_events_url;
        _j["events_url"] = _x.events_url;
        _j["assignees_url"] = _x.assignees_url;
        _j["branches_url"] = _x.branches_url;
        _j["tags_url"] = _x.tags_url;
        _j["blobs_url"] = _x.blobs_url;
        _j["git_tags_url"] = _x.git_tags_url;
        _j["git_refs_url"] = _x.git_refs_url;
        _j["trees_url"] = _x.trees_url;
        _j["statuses_url"] = _x.statuses_url;
        _j["languages_url"] = _x.languages_url;
        _j["stargazers_url"] = _x.stargazers_url;
        _j["contributors_url"] = _x.contributors_url;
        _j["subscribers_url"] = _x.subscribers_url;
        _j["subscription_url"] = _x.subscription_url;
        _j["commits_url"] = _x.commits_url;
        _j["git_commits_url"] = _x.git_commits_url;
        _j["comments_url"] = _x.comments_url;
        _j["issue_comment_url"] = _x.issue_comment_url;
        _j["contents_url"] = _x.contents_url;
        _j["compare_url"] = _x.compare_url;
        _j["merges_url"] = _x.merges_url;
        _j["archive_url"] = _x.archive_url;
        _j["downloads_url"] = _x.downloads_url;
        _j["issues_url"] = _x.issues_url;
        _j["pulls_url"] = _x.pulls_url;
        _j["milestones_url"] = _x.milestones_url;
        _j["notifications_url"] = _x.notifications_url;
        _j["labels_url"] = _x.labels_url;
        _j["releases_url"] = _x.releases_url;
        _j["deployments_url"] = _x.deployments_url;
        _j["created_at"] = _x.created_at;
        _j["updated_at"] = _x.updated_at;
        _j["pushed_at"] = _x.pushed_at;
        _j["git_url"] = _x.git_url;
        _j["ssh_url"] = _x.ssh_url;
        _j["clone_url"] = _x.clone_url;
        _j["svn_url"] = _x.svn_url;
        _j["homepage"] = _x.homepage;
        _j["size"] = _x.size;
        _j["stargazers_count"] = _x.stargazers_count;
        _j["watchers_count"] = _x.watchers_count;
        _j["language"] = _x.language;
        _j["has_issues"] = _x.has_issues;
        _j["has_projects"] = _x.has_projects;
        _j["has_downloads"] = _x.has_downloads;
        _j["has_wiki"] = _x.has_wiki;
        _j["has_pages"] = _x.has_pages;
        _j["forks_count"] = _x.forks_count;
        _j["mirror_url"] = _x.mirror_url;
        _j["archived"] = _x.archived;
        _j["open_issues_count"] = _x.open_issues_count;
        _j["license"] = _x.license;
        _j["forks"] = _x.forks;
        _j["open_issues"] = _x.open_issues;
        _j["watchers"] = _x.watchers;
        _j["default_branch"] = _x.default_branch;
        _j["public"] = _x.purple_public;
    }

    inline void from_json(const json& _j, struct quicktype::Label& _x) {
        _x.id = _j.at("id").get<int64_t>();
        _x.url = _j.at("url").get<std::string>();
        _x.name = _j.at("name").get<std::string>();
        _x.color = _j.at("color").get<std::string>();
        _x.purple_default = _j.at("default").get<bool>();
    }

    inline void to_json(json& _j, const struct quicktype::Label& _x) {
        _j = json::object();
        _j["id"] = _x.id;
        _j["url"] = _x.url;
        _j["name"] = _x.name;
        _j["color"] = _x.color;
        _j["default"] = _x.purple_default;
    }

    inline void from_json(const json& _j, struct quicktype::Milestone& _x) {
        _x.url = _j.at("url").get<std::string>();
        _x.html_url = _j.at("html_url").get<std::string>();
        _x.labels_url = _j.at("labels_url").get<std::string>();
        _x.id = _j.at("id").get<int64_t>();
        _x.number = _j.at("number").get<int64_t>();
        _x.title = _j.at("title").get<std::string>();
        _x.description = quicktype::get_untyped(_j, "description");
        _x.creator = _j.at("creator").get<struct quicktype::User>();
        _x.open_issues = _j.at("open_issues").get<int64_t>();
        _x.closed_issues = _j.at("closed_issues").get<int64_t>();
        _x.state = _j.at("state").get<std::string>();
        _x.created_at = _j.at("created_at").get<std::string>();
        _x.updated_at = _j.at("updated_at").get<std::string>();
        _x.due_on = quicktype::get_untyped(_j, "due_on");
        _x.closed_at = quicktype::get_untyped(_j, "closed_at");
    }

    inline void to_json(json& _j, const struct quicktype::Milestone& _x) {
        _j = json::object();
        _j["url"] = _x.url;
        _j["html_url"] = _x.html_url;
        _j["labels_url"] = _x.labels_url;
        _j["id"] = _x.id;
        _j["number"] = _x.number;
        _j["title"] = _x.title;
        _j["description"] = _x.description;
        _j["creator"] = _x.creator;
        _j["open_issues"] = _x.open_issues;
        _j["closed_issues"] = _x.closed_issues;
        _j["state"] = _x.state;
        _j["created_at"] = _x.created_at;
        _j["updated_at"] = _x.updated_at;
        _j["due_on"] = _x.due_on;
        _j["closed_at"] = _x.closed_at;
    }

    inline void from_json(const json& _j, struct quicktype::IssuePullRequest& _x) {
        _x.url = _j.at("url").get<std::string>();
        _x.html_url = _j.at("html_url").get<std::string>();
        _x.diff_url = _j.at("diff_url").get<std::string>();
        _x.patch_url = _j.at("patch_url").get<std::string>();
    }

    inline void to_json(json& _j, const struct quicktype::IssuePullRequest& _x) {
        _j = json::object();
        _j["url"] = _x.url;
        _j["html_url"] = _x.html_url;
        _j["diff_url"] = _x.diff_url;
        _j["patch_url"] = _x.patch_url;
    }

    inline void from_json(const json& _j, struct quicktype::Issue& _x) {
        _x.url = _j.at("url").get<std::string>();
        _x.repository_url = _j.at("repository_url").get<std::string>();
        _x.labels_url = _j.at("labels_url").get<std::string>();
        _x.comments_url = _j.at("comments_url").get<std::string>();
        _x.events_url = _j.at("events_url").get<std::string>();
        _x.html_url = _j.at("html_url").get<std::string>();
        _x.id = _j.at("id").get<int64_t>();
        _x.number = _j.at("number").get<int64_t>();
        _x.title = _j.at("title").get<std::string>();
        _x.user = _j.at("user").get<struct quicktype::User>();
        _x.labels = _j.at("labels").get<std::vector<struct quicktype::Label>>();
        _x.state = _j.at("state").get<std::string>();
        _x.locked = _j.at("locked").get<bool>();
        _x.assignee = quicktype::get_untyped(_j, "assignee");
        _x.assignees = _j.at("assignees").get<std::vector<json>>();
        _x.milestone = quicktype::get_optional<struct quicktype::Milestone>(_j, "milestone");
        _x.comments = _j.at("comments").get<int64_t>();
        _x.created_at = _j.at("created_at").get<std::string>();
        _x.updated_at = _j.at("updated_at").get<std::string>();
        _x.closed_at = quicktype::get_optional<std::string>(_j, "closed_at");
        _x.author_association = _j.at("author_association").get<std::string>();
        _x.body = _j.at("body").get<std::string>();
        _x.pull_request = quicktype::get_optional<struct quicktype::IssuePullRequest>(_j, "pull_request");
    }

    inline void to_json(json& _j, const struct quicktype::Issue& _x) {
        _j = json::object();
        _j["url"] = _x.url;
        _j["repository_url"] = _x.repository_url;
        _j["labels_url"] = _x.labels_url;
        _j["comments_url"] = _x.comments_url;
        _j["events_url"] = _x.events_url;
        _j["html_url"] = _x.html_url;
        _j["id"] = _x.id;
        _j["number"] = _x.number;
        _j["title"] = _x.title;
        _j["user"] = _x.user;
        _j["labels"] = _x.labels;
        _j["state"] = _x.state;
        _j["locked"] = _x.locked;
        _j["assignee"] = _x.assignee;
        _j["assignees"] = _x.assignees;
        _j["milestone"] = _x.milestone;
        _j["comments"] = _x.comments;
        _j["created_at"] = _x.created_at;
        _j["updated_at"] = _x.updated_at;
        _j["closed_at"] = _x.closed_at;
        _j["author_association"] = _x.author_association;
        _j["body"] = _x.body;
        _j["pull_request"] = _x.pull_request;
    }

    inline void from_json(const json& _j, struct quicktype::Base& _x) {
        _x.label = _j.at("label").get<std::string>();
        _x.ref = _j.at("ref").get<std::string>();
        _x.sha = _j.at("sha").get<std::string>();
        _x.user = _j.at("user").get<struct quicktype::User>();
        _x.repo = _j.at("repo").get<struct quicktype::Forkee>();
    }

    inline void to_json(json& _j, const struct quicktype::Base& _x) {
        _j = json::object();
        _j["label"] = _x.label;
        _j["ref"] = _x.ref;
        _j["sha"] = _x.sha;
        _j["user"] = _x.user;
        _j["repo"] = _x.repo;
    }

    inline void from_json(const json& _j, struct quicktype::PullRequestLinks& _x) {
        _x.self = _j.at("self").get<struct quicktype::Html>();
        _x.html = _j.at("html").get<struct quicktype::Html>();
        _x.issue = _j.at("issue").get<struct quicktype::Html>();
        _x.comments = _j.at("comments").get<struct quicktype::Html>();
        _x.review_comments = _j.at("review_comments").get<struct quicktype::Html>();
        _x.review_comment = _j.at("review_comment").get<struct quicktype::Html>();
        _x.commits = _j.at("commits").get<struct quicktype::Html>();
        _x.statuses = _j.at("statuses").get<struct quicktype::Html>();
    }

    inline void to_json(json& _j, const struct quicktype::PullRequestLinks& _x) {
        _j = json::object();
        _j["self"] = _x.self;
        _j["html"] = _x.html;
        _j["issue"] = _x.issue;
        _j["comments"] = _x.comments;
        _j["review_comments"] = _x.review_comments;
        _j["review_comment"] = _x.review_comment;
        _j["commits"] = _x.commits;
        _j["statuses"] = _x.statuses;
    }

    inline void from_json(const json& _j, struct quicktype::PayloadPullRequest& _x) {
        _x.url = _j.at("url").get<std::string>();
        _x.id = _j.at("id").get<int64_t>();
        _x.html_url = _j.at("html_url").get<std::string>();
        _x.diff_url = _j.at("diff_url").get<std::string>();
        _x.patch_url = _j.at("patch_url").get<std::string>();
        _x.issue_url = _j.at("issue_url").get<std::string>();
        _x.number = _j.at("number").get<int64_t>();
        _x.state = _j.at("state").get<std::string>();
        _x.locked = _j.at("locked").get<bool>();
        _x.title = _j.at("title").get<std::string>();
        _x.user = _j.at("user").get<struct quicktype::User>();
        _x.body = _j.at("body").get<std::string>();
        _x.created_at = _j.at("created_at").get<std::string>();
        _x.updated_at = _j.at("updated_at").get<std::string>();
        _x.closed_at = quicktype::get_optional<std::string>(_j, "closed_at");
        _x.merged_at = quicktype::get_untyped(_j, "merged_at");
        _x.merge_commit_sha = quicktype::get_optional<std::string>(_j, "merge_commit_sha");
        _x.assignee = quicktype::get_untyped(_j, "assignee");
        _x.assignees = _j.at("assignees").get<std::vector<json>>();
        _x.requested_reviewers = _j.at("requested_reviewers").get<std::vector<json>>();
        _x.requested_teams = _j.at("requested_teams").get<std::vector<json>>();
        _x.milestone = quicktype::get_untyped(_j, "milestone");
        _x.commits_url = _j.at("commits_url").get<std::string>();
        _x.review_comments_url = _j.at("review_comments_url").get<std::string>();
        _x.review_comment_url = _j.at("review_comment_url").get<std::string>();
        _x.comments_url = _j.at("comments_url").get<std::string>();
        _x.statuses_url = _j.at("statuses_url").get<std::string>();
        _x.head = _j.at("head").get<struct quicktype::Base>();
        _x.base = _j.at("base").get<struct quicktype::Base>();
        _x.links = _j.at("_links").get<struct quicktype::PullRequestLinks>();
        _x.author_association = _j.at("author_association").get<std::string>();
        _x.merged = quicktype::get_optional<bool>(_j, "merged");
        _x.mergeable = quicktype::get_optional<bool>(_j, "mergeable");
        _x.rebaseable = quicktype::get_optional<bool>(_j, "rebaseable");
        _x.mergeable_state = quicktype::get_optional<std::string>(_j, "mergeable_state");
        _x.merged_by = quicktype::get_untyped(_j, "merged_by");
        _x.comments = quicktype::get_optional<int64_t>(_j, "comments");
        _x.review_comments = quicktype::get_optional<int64_t>(_j, "review_comments");
        _x.maintainer_can_modify = quicktype::get_optional<bool>(_j, "maintainer_can_modify");
        _x.commits = quicktype::get_optional<int64_t>(_j, "commits");
        _x.additions = quicktype::get_optional<int64_t>(_j, "additions");
        _x.deletions = quicktype::get_optional<int64_t>(_j, "deletions");
        _x.changed_files = quicktype::get_optional<int64_t>(_j, "changed_files");
    }

    inline void to_json(json& _j, const struct quicktype::PayloadPullRequest& _x) {
        _j = json::object();
        _j["url"] = _x.url;
        _j["id"] = _x.id;
        _j["html_url"] = _x.html_url;
        _j["diff_url"] = _x.diff_url;
        _j["patch_url"] = _x.patch_url;
        _j["issue_url"] = _x.issue_url;
        _j["number"] = _x.number;
        _j["state"] = _x.state;
        _j["locked"] = _x.locked;
        _j["title"] = _x.title;
        _j["user"] = _x.user;
        _j["body"] = _x.body;
        _j["created_at"] = _x.created_at;
        _j["updated_at"] = _x.updated_at;
        _j["closed_at"] = _x.closed_at;
        _j["merged_at"] = _x.merged_at;
        _j["merge_commit_sha"] = _x.merge_commit_sha;
        _j["assignee"] = _x.assignee;
        _j["assignees"] = _x.assignees;
        _j["requested_reviewers"] = _x.requested_reviewers;
        _j["requested_teams"] = _x.requested_teams;
        _j["milestone"] = _x.milestone;
        _j["commits_url"] = _x.commits_url;
        _j["review_comments_url"] = _x.review_comments_url;
        _j["review_comment_url"] = _x.review_comment_url;
        _j["comments_url"] = _x.comments_url;
        _j["statuses_url"] = _x.statuses_url;
        _j["head"] = _x.head;
        _j["base"] = _x.base;
        _j["_links"] = _x.links;
        _j["author_association"] = _x.author_association;
        _j["merged"] = _x.merged;
        _j["mergeable"] = _x.mergeable;
        _j["rebaseable"] = _x.rebaseable;
        _j["mergeable_state"] = _x.mergeable_state;
        _j["merged_by"] = _x.merged_by;
        _j["comments"] = _x.comments;
        _j["review_comments"] = _x.review_comments;
        _j["maintainer_can_modify"] = _x.maintainer_can_modify;
        _j["commits"] = _x.commits;
        _j["additions"] = _x.additions;
        _j["deletions"] = _x.deletions;
        _j["changed_files"] = _x.changed_files;
    }

    inline void from_json(const json& _j, struct quicktype::Payload& _x) {
        _x.action = quicktype::get_optional<std::string>(_j, "action");
        _x.number = quicktype::get_optional<int64_t>(_j, "number");
        _x.pull_request = quicktype::get_optional<struct quicktype::PayloadPullRequest>(_j, "pull_request");
        _x.forkee = quicktype::get_optional<struct quicktype::Forkee>(_j, "forkee");
        _x.ref = quicktype::get_optional<std::string>(_j, "ref");
        _x.ref_type = quicktype::get_optional<std::string>(_j, "ref_type");
        _x.pusher_type = quicktype::get_optional<std::string>(_j, "pusher_type");
        _x.push_id = quicktype::get_optional<int64_t>(_j, "push_id");
        _x.size = quicktype::get_optional<int64_t>(_j, "size");
        _x.distinct_size = quicktype::get_optional<int64_t>(_j, "distinct_size");
        _x.head = quicktype::get_optional<std::string>(_j, "head");
        _x.before = quicktype::get_optional<std::string>(_j, "before");
        _x.commits = quicktype::get_optional<std::vector<struct quicktype::Commit>>(_j, "commits");
        _x.issue = quicktype::get_optional<struct quicktype::Issue>(_j, "issue");
        _x.master_branch = quicktype::get_optional<std::string>(_j, "master_branch");
        _x.description = quicktype::get_optional<std::string>(_j, "description");
        _x.comment = quicktype::get_optional<struct quicktype::Comment>(_j, "comment");
    }

    inline void to_json(json& _j, const struct quicktype::Payload& _x) {
        _j = json::object();
        _j["action"] = _x.action;
        _j["number"] = _x.number;
        _j["pull_request"] = _x.pull_request;
        _j["forkee"] = _x.forkee;
        _j["ref"] = _x.ref;
        _j["ref_type"] = _x.ref_type;
        _j["pusher_type"] = _x.pusher_type;
        _j["push_id"] = _x.push_id;
        _j["size"] = _x.size;
        _j["distinct_size"] = _x.distinct_size;
        _j["head"] = _x.head;
        _j["before"] = _x.before;
        _j["commits"] = _x.commits;
        _j["issue"] = _x.issue;
        _j["master_branch"] = _x.master_branch;
        _j["description"] = _x.description;
        _j["comment"] = _x.comment;
    }

    inline void from_json(const json& _j, struct quicktype::Repo& _x) {
        _x.id = _j.at("id").get<int64_t>();
        _x.name = _j.at("name").get<std::string>();
        _x.url = _j.at("url").get<std::string>();
    }

    inline void to_json(json& _j, const struct quicktype::Repo& _x) {
        _j = json::object();
        _j["id"] = _x.id;
        _j["name"] = _x.name;
        _j["url"] = _x.url;
    }

    inline void from_json(const json& _j, struct quicktype::Event& _x) {
        _x.id = _j.at("id").get<std::string>();
        _x.type = _j.at("type").get<std::string>();
        _x.actor = _j.at("actor").get<struct quicktype::Actor>();
        _x.repo = _j.at("repo").get<struct quicktype::Repo>();
        _x.payload = _j.at("payload").get<struct quicktype::Payload>();
        _x.purple_public = _j.at("public").get<bool>();
        _x.created_at = _j.at("created_at").get<std::string>();
        _x.org = quicktype::get_optional<struct quicktype::Actor>(_j, "org");
    }

    inline void to_json(json& _j, const struct quicktype::Event& _x) {
        _j = json::object();
        _j["id"] = _x.id;
        _j["type"] = _x.type;
        _j["actor"] = _x.actor;
        _j["repo"] = _x.repo;
        _j["payload"] = _x.payload;
        _j["public"] = _x.purple_public;
        _j["created_at"] = _x.created_at;
        _j["org"] = _x.org;
    }

    inline void from_json(const json& _j, struct quicktype::File& _x) {
        _x.filename = _j.at("filename").get<std::string>();
        _x.type = _j.at("type").get<quicktype::FileType>();
        _x.language = quicktype::get_optional<std::string>(_j, "language");
        _x.raw_url = _j.at("raw_url").get<std::string>();
        _x.size = _j.at("size").get<int64_t>();
    }

    inline void to_json(json& _j, const struct quicktype::File& _x) {
        _j = json::object();
        _j["filename"] = _x.filename;
        _j["type"] = _x.type;
        _j["language"] = _x.language;
        _j["raw_url"] = _x.raw_url;
        _j["size"] = _x.size;
    }

    inline void from_json(const json& _j, struct quicktype::Gist& _x) {
        _x.url = _j.at("url").get<std::string>();
        _x.forks_url = _j.at("forks_url").get<std::string>();
        _x.commits_url = _j.at("commits_url").get<std::string>();
        _x.id = _j.at("id").get<std::string>();
        _x.git_pull_url = _j.at("git_pull_url").get<std::string>();
        _x.git_push_url = _j.at("git_push_url").get<std::string>();
        _x.html_url = _j.at("html_url").get<std::string>();
        _x.files = _j.at("files").get<std::map<std::string, struct quicktype::File>>();
        _x.purple_public = _j.at("public").get<bool>();
        _x.created_at = _j.at("created_at").get<std::string>();
        _x.updated_at = _j.at("updated_at").get<std::string>();
        _x.description = quicktype::get_optional<std::string>(_j, "description");
        _x.comments = _j.at("comments").get<int64_t>();
        _x.user = quicktype::get_untyped(_j, "user");
        _x.comments_url = _j.at("comments_url").get<std::string>();
        _x.truncated = _j.at("truncated").get<bool>();
        _x.owner = quicktype::get_optional<struct quicktype::User>(_j, "owner");
    }

    inline void to_json(json& _j, const struct quicktype::Gist& _x) {
        _j = json::object();
        _j["url"] = _x.url;
        _j["forks_url"] = _x.forks_url;
        _j["commits_url"] = _x.commits_url;
        _j["id"] = _x.id;
        _j["git_pull_url"] = _x.git_pull_url;
        _j["git_push_url"] = _x.git_push_url;
        _j["html_url"] = _x.html_url;
        _j["files"] = _x.files;
        _j["public"] = _x.purple_public;
        _j["created_at"] = _x.created_at;
        _j["updated_at"] = _x.updated_at;
        _j["description"] = _x.description;
        _j["comments"] = _x.comments;
        _j["user"] = _x.user;
        _j["comments_url"] = _x.comments_url;
        _j["truncated"] = _x.truncated;
        _j["owner"] = _x.owner;
    }

    inline void from_json(const json& _j, struct quicktype::Meta& _x) {
        _x.verifiable_password_authentication = _j.at("verifiable_password_authentication").get<bool>();
        _x.github_services_sha = _j.at("github_services_sha").get<std::string>();
        _x.hooks = _j.at("hooks").get<std::vector<std::string>>();
        _x.git = _j.at("git").get<std::vector<std::string>>();
        _x.pages = _j.at("pages").get<std::vector<std::string>>();
        _x.importer = _j.at("importer").get<std::vector<std::string>>();
    }

    inline void to_json(json& _j, const struct quicktype::Meta& _x) {
        _j = json::object();
        _j["verifiable_password_authentication"] = _x.verifiable_password_authentication;
        _j["github_services_sha"] = _x.github_services_sha;
        _j["hooks"] = _x.hooks;
        _j["git"] = _x.git;
        _j["pages"] = _x.pages;
        _j["importer"] = _x.importer;
    }

    inline void from_json(const json& _j, quicktype::GravatarID& _x) {
        if (_j == "") _x = quicktype::GravatarID::EMPTY;
        else throw "Input JSON does not conform to schema";
    }

    inline void to_json(json& _j, const quicktype::GravatarID& _x) {
        switch (_x) {
            case quicktype::GravatarID::EMPTY: _j = ""; break;
            default: throw "This should not happen";
        }
    }

    inline void from_json(const json& _j, quicktype::UserType& _x) {
        if (_j == "Organization") _x = quicktype::UserType::ORGANIZATION;
        else if (_j == "User") _x = quicktype::UserType::USER;
        else throw "Input JSON does not conform to schema";
    }

    inline void to_json(json& _j, const quicktype::UserType& _x) {
        switch (_x) {
            case quicktype::UserType::ORGANIZATION: _j = "Organization"; break;
            case quicktype::UserType::USER: _j = "User"; break;
            default: throw "This should not happen";
        }
    }

    inline void from_json(const json& _j, quicktype::DefaultBranch& _x) {
        if (_j == "master") _x = quicktype::DefaultBranch::MASTER;
        else throw "Input JSON does not conform to schema";
    }

    inline void to_json(json& _j, const quicktype::DefaultBranch& _x) {
        switch (_x) {
            case quicktype::DefaultBranch::MASTER: _j = "master"; break;
            default: throw "This should not happen";
        }
    }

    inline void from_json(const json& _j, quicktype::Homepage& _x) {
        if (_j == "") _x = quicktype::Homepage::EMPTY;
        else if (_j == "https://valloric.github.io/ycmd/") _x = quicktype::Homepage::HTTPS_VALLORIC_GITHUB_IO_YCMD;
        else throw "Input JSON does not conform to schema";
    }

    inline void to_json(json& _j, const quicktype::Homepage& _x) {
        switch (_x) {
            case quicktype::Homepage::EMPTY: _j = ""; break;
            case quicktype::Homepage::HTTPS_VALLORIC_GITHUB_IO_YCMD: _j = "https://valloric.github.io/ycmd/"; break;
            default: throw "This should not happen";
        }
    }

    inline void from_json(const json& _j, quicktype::FileType& _x) {
        if (_j == "application/javascript") _x = quicktype::FileType::APPLICATION_JAVASCRIPT;
        else if (_j == "application/json") _x = quicktype::FileType::APPLICATION_JSON;
        else if (_j == "text/css") _x = quicktype::FileType::TEXT_CSS;
        else if (_j == "text/html") _x = quicktype::FileType::TEXT_HTML;
        else if (_j == "text/plain") _x = quicktype::FileType::TEXT_PLAIN;
        else throw "Input JSON does not conform to schema";
    }

    inline void to_json(json& _j, const quicktype::FileType& _x) {
        switch (_x) {
            case quicktype::FileType::APPLICATION_JAVASCRIPT: _j = "application/javascript"; break;
            case quicktype::FileType::APPLICATION_JSON: _j = "application/json"; break;
            case quicktype::FileType::TEXT_CSS: _j = "text/css"; break;
            case quicktype::FileType::TEXT_HTML: _j = "text/html"; break;
            case quicktype::FileType::TEXT_PLAIN: _j = "text/plain"; break;
            default: throw "This should not happen";
        }
    }

}
