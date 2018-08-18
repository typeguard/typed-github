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

#pragma once

#include "json.hpp"

#include <boost/optional.hpp>
#include <stdexcept>
#include <regex>
namespace nlohmann {
    template <typename T>
    struct adl_serializer<std::shared_ptr<T>> {
        static void to_json(json& j, const std::shared_ptr<T>& opt) {
            if (!opt) j = nullptr; else j = *opt;
        }

        static std::shared_ptr<T> from_json(const json& j) {
            if (j.is_null()) return std::unique_ptr<T>(); else return std::unique_ptr<T>(new T(j.get<T>()));
        }
    };
}

namespace quicktype {
    using nlohmann::json;

    inline json get_untyped(const json &j, const char *property) {
        if (j.find(property) != j.end()) {
            return j.at(property).get<json>();
        }
        return json();
    }

    template <typename T>
    inline std::shared_ptr<T> get_optional(const json &j, const char *property) {
        if (j.find(property) != j.end()) {
            return j.at(property).get<std::shared_ptr<T>>();
        }
        return std::shared_ptr<T>();
    }

    class Actor {
        public:
        Actor() = default;
        virtual ~Actor() = default;

        private:
        int64_t id;
        std::string login;
        std::shared_ptr<std::string> display_login;
        std::string gravatar_id;
        std::string url;
        std::string avatar_url;

        public:
        const int64_t & get_id() const { return id; }
        int64_t & get_mutable_id() { return id; }
        void set_id(const int64_t& value) { this->id = value; }

        const std::string & get_login() const { return login; }
        std::string & get_mutable_login() { return login; }
        void set_login(const std::string& value) { this->login = value; }

        std::shared_ptr<std::string> get_display_login() const { return display_login; }
        void set_display_login(std::shared_ptr<std::string> value) { this->display_login = value; }

        const std::string & get_gravatar_id() const { return gravatar_id; }
        std::string & get_mutable_gravatar_id() { return gravatar_id; }
        void set_gravatar_id(const std::string& value) { this->gravatar_id = value; }

        const std::string & get_url() const { return url; }
        std::string & get_mutable_url() { return url; }
        void set_url(const std::string& value) { this->url = value; }

        const std::string & get_avatar_url() const { return avatar_url; }
        std::string & get_mutable_avatar_url() { return avatar_url; }
        void set_avatar_url(const std::string& value) { this->avatar_url = value; }
    };

    class Html {
        public:
        Html() = default;
        virtual ~Html() = default;

        private:
        std::string href;

        public:
        const std::string & get_href() const { return href; }
        std::string & get_mutable_href() { return href; }
        void set_href(const std::string& value) { this->href = value; }
    };

    class CommentLinks {
        public:
        CommentLinks() = default;
        virtual ~CommentLinks() = default;

        private:
        Html self;
        Html html;
        Html pull_request;

        public:
        const Html & get_self() const { return self; }
        Html & get_mutable_self() { return self; }
        void set_self(const Html& value) { this->self = value; }

        const Html & get_html() const { return html; }
        Html & get_mutable_html() { return html; }
        void set_html(const Html& value) { this->html = value; }

        const Html & get_pull_request() const { return pull_request; }
        Html & get_mutable_pull_request() { return pull_request; }
        void set_pull_request(const Html& value) { this->pull_request = value; }
    };

    enum class Type : int { ORGANIZATION, USER };

    class Owner {
        public:
        Owner() = default;
        virtual ~Owner() = default;

        private:
        std::string login;
        int64_t id;
        std::string node_id;
        std::string avatar_url;
        std::string gravatar_id;
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
        Type type;
        bool site_admin;

        public:
        const std::string & get_login() const { return login; }
        std::string & get_mutable_login() { return login; }
        void set_login(const std::string& value) { this->login = value; }

        const int64_t & get_id() const { return id; }
        int64_t & get_mutable_id() { return id; }
        void set_id(const int64_t& value) { this->id = value; }

        const std::string & get_node_id() const { return node_id; }
        std::string & get_mutable_node_id() { return node_id; }
        void set_node_id(const std::string& value) { this->node_id = value; }

        const std::string & get_avatar_url() const { return avatar_url; }
        std::string & get_mutable_avatar_url() { return avatar_url; }
        void set_avatar_url(const std::string& value) { this->avatar_url = value; }

        const std::string & get_gravatar_id() const { return gravatar_id; }
        std::string & get_mutable_gravatar_id() { return gravatar_id; }
        void set_gravatar_id(const std::string& value) { this->gravatar_id = value; }

        const std::string & get_url() const { return url; }
        std::string & get_mutable_url() { return url; }
        void set_url(const std::string& value) { this->url = value; }

        const std::string & get_html_url() const { return html_url; }
        std::string & get_mutable_html_url() { return html_url; }
        void set_html_url(const std::string& value) { this->html_url = value; }

        const std::string & get_followers_url() const { return followers_url; }
        std::string & get_mutable_followers_url() { return followers_url; }
        void set_followers_url(const std::string& value) { this->followers_url = value; }

        const std::string & get_following_url() const { return following_url; }
        std::string & get_mutable_following_url() { return following_url; }
        void set_following_url(const std::string& value) { this->following_url = value; }

        const std::string & get_gists_url() const { return gists_url; }
        std::string & get_mutable_gists_url() { return gists_url; }
        void set_gists_url(const std::string& value) { this->gists_url = value; }

        const std::string & get_starred_url() const { return starred_url; }
        std::string & get_mutable_starred_url() { return starred_url; }
        void set_starred_url(const std::string& value) { this->starred_url = value; }

        const std::string & get_subscriptions_url() const { return subscriptions_url; }
        std::string & get_mutable_subscriptions_url() { return subscriptions_url; }
        void set_subscriptions_url(const std::string& value) { this->subscriptions_url = value; }

        const std::string & get_organizations_url() const { return organizations_url; }
        std::string & get_mutable_organizations_url() { return organizations_url; }
        void set_organizations_url(const std::string& value) { this->organizations_url = value; }

        const std::string & get_repos_url() const { return repos_url; }
        std::string & get_mutable_repos_url() { return repos_url; }
        void set_repos_url(const std::string& value) { this->repos_url = value; }

        const std::string & get_events_url() const { return events_url; }
        std::string & get_mutable_events_url() { return events_url; }
        void set_events_url(const std::string& value) { this->events_url = value; }

        const std::string & get_received_events_url() const { return received_events_url; }
        std::string & get_mutable_received_events_url() { return received_events_url; }
        void set_received_events_url(const std::string& value) { this->received_events_url = value; }

        const Type & get_type() const { return type; }
        Type & get_mutable_type() { return type; }
        void set_type(const Type& value) { this->type = value; }

        const bool & get_site_admin() const { return site_admin; }
        bool & get_mutable_site_admin() { return site_admin; }
        void set_site_admin(const bool& value) { this->site_admin = value; }
    };

    class Comment {
        public:
        Comment() = default;
        virtual ~Comment() = default;

        private:
        std::string url;
        int64_t pull_request_review_id;
        int64_t id;
        std::string node_id;
        std::string diff_hunk;
        std::string path;
        int64_t position;
        int64_t original_position;
        std::string commit_id;
        std::string original_commit_id;
        Owner user;
        std::string body;
        std::string created_at;
        std::string updated_at;
        std::string html_url;
        std::string pull_request_url;
        std::string author_association;
        CommentLinks links;

        public:
        const std::string & get_url() const { return url; }
        std::string & get_mutable_url() { return url; }
        void set_url(const std::string& value) { this->url = value; }

        const int64_t & get_pull_request_review_id() const { return pull_request_review_id; }
        int64_t & get_mutable_pull_request_review_id() { return pull_request_review_id; }
        void set_pull_request_review_id(const int64_t& value) { this->pull_request_review_id = value; }

        const int64_t & get_id() const { return id; }
        int64_t & get_mutable_id() { return id; }
        void set_id(const int64_t& value) { this->id = value; }

        const std::string & get_node_id() const { return node_id; }
        std::string & get_mutable_node_id() { return node_id; }
        void set_node_id(const std::string& value) { this->node_id = value; }

        const std::string & get_diff_hunk() const { return diff_hunk; }
        std::string & get_mutable_diff_hunk() { return diff_hunk; }
        void set_diff_hunk(const std::string& value) { this->diff_hunk = value; }

        const std::string & get_path() const { return path; }
        std::string & get_mutable_path() { return path; }
        void set_path(const std::string& value) { this->path = value; }

        const int64_t & get_position() const { return position; }
        int64_t & get_mutable_position() { return position; }
        void set_position(const int64_t& value) { this->position = value; }

        const int64_t & get_original_position() const { return original_position; }
        int64_t & get_mutable_original_position() { return original_position; }
        void set_original_position(const int64_t& value) { this->original_position = value; }

        const std::string & get_commit_id() const { return commit_id; }
        std::string & get_mutable_commit_id() { return commit_id; }
        void set_commit_id(const std::string& value) { this->commit_id = value; }

        const std::string & get_original_commit_id() const { return original_commit_id; }
        std::string & get_mutable_original_commit_id() { return original_commit_id; }
        void set_original_commit_id(const std::string& value) { this->original_commit_id = value; }

        const Owner & get_user() const { return user; }
        Owner & get_mutable_user() { return user; }
        void set_user(const Owner& value) { this->user = value; }

        const std::string & get_body() const { return body; }
        std::string & get_mutable_body() { return body; }
        void set_body(const std::string& value) { this->body = value; }

        const std::string & get_created_at() const { return created_at; }
        std::string & get_mutable_created_at() { return created_at; }
        void set_created_at(const std::string& value) { this->created_at = value; }

        const std::string & get_updated_at() const { return updated_at; }
        std::string & get_mutable_updated_at() { return updated_at; }
        void set_updated_at(const std::string& value) { this->updated_at = value; }

        const std::string & get_html_url() const { return html_url; }
        std::string & get_mutable_html_url() { return html_url; }
        void set_html_url(const std::string& value) { this->html_url = value; }

        const std::string & get_pull_request_url() const { return pull_request_url; }
        std::string & get_mutable_pull_request_url() { return pull_request_url; }
        void set_pull_request_url(const std::string& value) { this->pull_request_url = value; }

        const std::string & get_author_association() const { return author_association; }
        std::string & get_mutable_author_association() { return author_association; }
        void set_author_association(const std::string& value) { this->author_association = value; }

        const CommentLinks & get_links() const { return links; }
        CommentLinks & get_mutable_links() { return links; }
        void set_links(const CommentLinks& value) { this->links = value; }
    };

    class Author {
        public:
        Author() = default;
        virtual ~Author() = default;

        private:
        std::string email;
        std::string name;

        public:
        const std::string & get_email() const { return email; }
        std::string & get_mutable_email() { return email; }
        void set_email(const std::string& value) { this->email = value; }

        const std::string & get_name() const { return name; }
        std::string & get_mutable_name() { return name; }
        void set_name(const std::string& value) { this->name = value; }
    };

    class Commit {
        public:
        Commit() = default;
        virtual ~Commit() = default;

        private:
        std::string sha;
        Author author;
        std::string message;
        bool distinct;
        std::string url;

        public:
        const std::string & get_sha() const { return sha; }
        std::string & get_mutable_sha() { return sha; }
        void set_sha(const std::string& value) { this->sha = value; }

        const Author & get_author() const { return author; }
        Author & get_mutable_author() { return author; }
        void set_author(const Author& value) { this->author = value; }

        const std::string & get_message() const { return message; }
        std::string & get_mutable_message() { return message; }
        void set_message(const std::string& value) { this->message = value; }

        const bool & get_distinct() const { return distinct; }
        bool & get_mutable_distinct() { return distinct; }
        void set_distinct(const bool& value) { this->distinct = value; }

        const std::string & get_url() const { return url; }
        std::string & get_mutable_url() { return url; }
        void set_url(const std::string& value) { this->url = value; }
    };

    class License {
        public:
        License() = default;
        virtual ~License() = default;

        private:
        std::string key;
        std::string name;
        std::shared_ptr<std::string> spdx_id;
        std::shared_ptr<std::string> url;
        std::string node_id;

        public:
        const std::string & get_key() const { return key; }
        std::string & get_mutable_key() { return key; }
        void set_key(const std::string& value) { this->key = value; }

        const std::string & get_name() const { return name; }
        std::string & get_mutable_name() { return name; }
        void set_name(const std::string& value) { this->name = value; }

        std::shared_ptr<std::string> get_spdx_id() const { return spdx_id; }
        void set_spdx_id(std::shared_ptr<std::string> value) { this->spdx_id = value; }

        std::shared_ptr<std::string> get_url() const { return url; }
        void set_url(std::shared_ptr<std::string> value) { this->url = value; }

        const std::string & get_node_id() const { return node_id; }
        std::string & get_mutable_node_id() { return node_id; }
        void set_node_id(const std::string& value) { this->node_id = value; }
    };

    class BaseRepo {
        public:
        BaseRepo() = default;
        virtual ~BaseRepo() = default;

        private:
        int64_t id;
        std::string node_id;
        std::string name;
        std::string full_name;
        Owner owner;
        bool repo_private;
        std::string html_url;
        std::shared_ptr<std::string> description;
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
        std::shared_ptr<std::string> homepage;
        int64_t size;
        int64_t stargazers_count;
        int64_t watchers_count;
        std::string language;
        bool has_issues;
        bool has_projects;
        bool has_downloads;
        bool has_wiki;
        bool has_pages;
        int64_t forks_count;
        nlohmann::json mirror_url;
        bool archived;
        int64_t open_issues_count;
        std::shared_ptr<License> license;
        int64_t forks;
        int64_t open_issues;
        int64_t watchers;
        std::string default_branch;

        public:
        const int64_t & get_id() const { return id; }
        int64_t & get_mutable_id() { return id; }
        void set_id(const int64_t& value) { this->id = value; }

        const std::string & get_node_id() const { return node_id; }
        std::string & get_mutable_node_id() { return node_id; }
        void set_node_id(const std::string& value) { this->node_id = value; }

        const std::string & get_name() const { return name; }
        std::string & get_mutable_name() { return name; }
        void set_name(const std::string& value) { this->name = value; }

        const std::string & get_full_name() const { return full_name; }
        std::string & get_mutable_full_name() { return full_name; }
        void set_full_name(const std::string& value) { this->full_name = value; }

        const Owner & get_owner() const { return owner; }
        Owner & get_mutable_owner() { return owner; }
        void set_owner(const Owner& value) { this->owner = value; }

        const bool & get_repo_private() const { return repo_private; }
        bool & get_mutable_repo_private() { return repo_private; }
        void set_repo_private(const bool& value) { this->repo_private = value; }

        const std::string & get_html_url() const { return html_url; }
        std::string & get_mutable_html_url() { return html_url; }
        void set_html_url(const std::string& value) { this->html_url = value; }

        std::shared_ptr<std::string> get_description() const { return description; }
        void set_description(std::shared_ptr<std::string> value) { this->description = value; }

        const bool & get_fork() const { return fork; }
        bool & get_mutable_fork() { return fork; }
        void set_fork(const bool& value) { this->fork = value; }

        const std::string & get_url() const { return url; }
        std::string & get_mutable_url() { return url; }
        void set_url(const std::string& value) { this->url = value; }

        const std::string & get_forks_url() const { return forks_url; }
        std::string & get_mutable_forks_url() { return forks_url; }
        void set_forks_url(const std::string& value) { this->forks_url = value; }

        const std::string & get_keys_url() const { return keys_url; }
        std::string & get_mutable_keys_url() { return keys_url; }
        void set_keys_url(const std::string& value) { this->keys_url = value; }

        const std::string & get_collaborators_url() const { return collaborators_url; }
        std::string & get_mutable_collaborators_url() { return collaborators_url; }
        void set_collaborators_url(const std::string& value) { this->collaborators_url = value; }

        const std::string & get_teams_url() const { return teams_url; }
        std::string & get_mutable_teams_url() { return teams_url; }
        void set_teams_url(const std::string& value) { this->teams_url = value; }

        const std::string & get_hooks_url() const { return hooks_url; }
        std::string & get_mutable_hooks_url() { return hooks_url; }
        void set_hooks_url(const std::string& value) { this->hooks_url = value; }

        const std::string & get_issue_events_url() const { return issue_events_url; }
        std::string & get_mutable_issue_events_url() { return issue_events_url; }
        void set_issue_events_url(const std::string& value) { this->issue_events_url = value; }

        const std::string & get_events_url() const { return events_url; }
        std::string & get_mutable_events_url() { return events_url; }
        void set_events_url(const std::string& value) { this->events_url = value; }

        const std::string & get_assignees_url() const { return assignees_url; }
        std::string & get_mutable_assignees_url() { return assignees_url; }
        void set_assignees_url(const std::string& value) { this->assignees_url = value; }

        const std::string & get_branches_url() const { return branches_url; }
        std::string & get_mutable_branches_url() { return branches_url; }
        void set_branches_url(const std::string& value) { this->branches_url = value; }

        const std::string & get_tags_url() const { return tags_url; }
        std::string & get_mutable_tags_url() { return tags_url; }
        void set_tags_url(const std::string& value) { this->tags_url = value; }

        const std::string & get_blobs_url() const { return blobs_url; }
        std::string & get_mutable_blobs_url() { return blobs_url; }
        void set_blobs_url(const std::string& value) { this->blobs_url = value; }

        const std::string & get_git_tags_url() const { return git_tags_url; }
        std::string & get_mutable_git_tags_url() { return git_tags_url; }
        void set_git_tags_url(const std::string& value) { this->git_tags_url = value; }

        const std::string & get_git_refs_url() const { return git_refs_url; }
        std::string & get_mutable_git_refs_url() { return git_refs_url; }
        void set_git_refs_url(const std::string& value) { this->git_refs_url = value; }

        const std::string & get_trees_url() const { return trees_url; }
        std::string & get_mutable_trees_url() { return trees_url; }
        void set_trees_url(const std::string& value) { this->trees_url = value; }

        const std::string & get_statuses_url() const { return statuses_url; }
        std::string & get_mutable_statuses_url() { return statuses_url; }
        void set_statuses_url(const std::string& value) { this->statuses_url = value; }

        const std::string & get_languages_url() const { return languages_url; }
        std::string & get_mutable_languages_url() { return languages_url; }
        void set_languages_url(const std::string& value) { this->languages_url = value; }

        const std::string & get_stargazers_url() const { return stargazers_url; }
        std::string & get_mutable_stargazers_url() { return stargazers_url; }
        void set_stargazers_url(const std::string& value) { this->stargazers_url = value; }

        const std::string & get_contributors_url() const { return contributors_url; }
        std::string & get_mutable_contributors_url() { return contributors_url; }
        void set_contributors_url(const std::string& value) { this->contributors_url = value; }

        const std::string & get_subscribers_url() const { return subscribers_url; }
        std::string & get_mutable_subscribers_url() { return subscribers_url; }
        void set_subscribers_url(const std::string& value) { this->subscribers_url = value; }

        const std::string & get_subscription_url() const { return subscription_url; }
        std::string & get_mutable_subscription_url() { return subscription_url; }
        void set_subscription_url(const std::string& value) { this->subscription_url = value; }

        const std::string & get_commits_url() const { return commits_url; }
        std::string & get_mutable_commits_url() { return commits_url; }
        void set_commits_url(const std::string& value) { this->commits_url = value; }

        const std::string & get_git_commits_url() const { return git_commits_url; }
        std::string & get_mutable_git_commits_url() { return git_commits_url; }
        void set_git_commits_url(const std::string& value) { this->git_commits_url = value; }

        const std::string & get_comments_url() const { return comments_url; }
        std::string & get_mutable_comments_url() { return comments_url; }
        void set_comments_url(const std::string& value) { this->comments_url = value; }

        const std::string & get_issue_comment_url() const { return issue_comment_url; }
        std::string & get_mutable_issue_comment_url() { return issue_comment_url; }
        void set_issue_comment_url(const std::string& value) { this->issue_comment_url = value; }

        const std::string & get_contents_url() const { return contents_url; }
        std::string & get_mutable_contents_url() { return contents_url; }
        void set_contents_url(const std::string& value) { this->contents_url = value; }

        const std::string & get_compare_url() const { return compare_url; }
        std::string & get_mutable_compare_url() { return compare_url; }
        void set_compare_url(const std::string& value) { this->compare_url = value; }

        const std::string & get_merges_url() const { return merges_url; }
        std::string & get_mutable_merges_url() { return merges_url; }
        void set_merges_url(const std::string& value) { this->merges_url = value; }

        const std::string & get_archive_url() const { return archive_url; }
        std::string & get_mutable_archive_url() { return archive_url; }
        void set_archive_url(const std::string& value) { this->archive_url = value; }

        const std::string & get_downloads_url() const { return downloads_url; }
        std::string & get_mutable_downloads_url() { return downloads_url; }
        void set_downloads_url(const std::string& value) { this->downloads_url = value; }

        const std::string & get_issues_url() const { return issues_url; }
        std::string & get_mutable_issues_url() { return issues_url; }
        void set_issues_url(const std::string& value) { this->issues_url = value; }

        const std::string & get_pulls_url() const { return pulls_url; }
        std::string & get_mutable_pulls_url() { return pulls_url; }
        void set_pulls_url(const std::string& value) { this->pulls_url = value; }

        const std::string & get_milestones_url() const { return milestones_url; }
        std::string & get_mutable_milestones_url() { return milestones_url; }
        void set_milestones_url(const std::string& value) { this->milestones_url = value; }

        const std::string & get_notifications_url() const { return notifications_url; }
        std::string & get_mutable_notifications_url() { return notifications_url; }
        void set_notifications_url(const std::string& value) { this->notifications_url = value; }

        const std::string & get_labels_url() const { return labels_url; }
        std::string & get_mutable_labels_url() { return labels_url; }
        void set_labels_url(const std::string& value) { this->labels_url = value; }

        const std::string & get_releases_url() const { return releases_url; }
        std::string & get_mutable_releases_url() { return releases_url; }
        void set_releases_url(const std::string& value) { this->releases_url = value; }

        const std::string & get_deployments_url() const { return deployments_url; }
        std::string & get_mutable_deployments_url() { return deployments_url; }
        void set_deployments_url(const std::string& value) { this->deployments_url = value; }

        const std::string & get_created_at() const { return created_at; }
        std::string & get_mutable_created_at() { return created_at; }
        void set_created_at(const std::string& value) { this->created_at = value; }

        const std::string & get_updated_at() const { return updated_at; }
        std::string & get_mutable_updated_at() { return updated_at; }
        void set_updated_at(const std::string& value) { this->updated_at = value; }

        const std::string & get_pushed_at() const { return pushed_at; }
        std::string & get_mutable_pushed_at() { return pushed_at; }
        void set_pushed_at(const std::string& value) { this->pushed_at = value; }

        const std::string & get_git_url() const { return git_url; }
        std::string & get_mutable_git_url() { return git_url; }
        void set_git_url(const std::string& value) { this->git_url = value; }

        const std::string & get_ssh_url() const { return ssh_url; }
        std::string & get_mutable_ssh_url() { return ssh_url; }
        void set_ssh_url(const std::string& value) { this->ssh_url = value; }

        const std::string & get_clone_url() const { return clone_url; }
        std::string & get_mutable_clone_url() { return clone_url; }
        void set_clone_url(const std::string& value) { this->clone_url = value; }

        const std::string & get_svn_url() const { return svn_url; }
        std::string & get_mutable_svn_url() { return svn_url; }
        void set_svn_url(const std::string& value) { this->svn_url = value; }

        std::shared_ptr<std::string> get_homepage() const { return homepage; }
        void set_homepage(std::shared_ptr<std::string> value) { this->homepage = value; }

        const int64_t & get_size() const { return size; }
        int64_t & get_mutable_size() { return size; }
        void set_size(const int64_t& value) { this->size = value; }

        const int64_t & get_stargazers_count() const { return stargazers_count; }
        int64_t & get_mutable_stargazers_count() { return stargazers_count; }
        void set_stargazers_count(const int64_t& value) { this->stargazers_count = value; }

        const int64_t & get_watchers_count() const { return watchers_count; }
        int64_t & get_mutable_watchers_count() { return watchers_count; }
        void set_watchers_count(const int64_t& value) { this->watchers_count = value; }

        const std::string & get_language() const { return language; }
        std::string & get_mutable_language() { return language; }
        void set_language(const std::string& value) { this->language = value; }

        const bool & get_has_issues() const { return has_issues; }
        bool & get_mutable_has_issues() { return has_issues; }
        void set_has_issues(const bool& value) { this->has_issues = value; }

        const bool & get_has_projects() const { return has_projects; }
        bool & get_mutable_has_projects() { return has_projects; }
        void set_has_projects(const bool& value) { this->has_projects = value; }

        const bool & get_has_downloads() const { return has_downloads; }
        bool & get_mutable_has_downloads() { return has_downloads; }
        void set_has_downloads(const bool& value) { this->has_downloads = value; }

        const bool & get_has_wiki() const { return has_wiki; }
        bool & get_mutable_has_wiki() { return has_wiki; }
        void set_has_wiki(const bool& value) { this->has_wiki = value; }

        const bool & get_has_pages() const { return has_pages; }
        bool & get_mutable_has_pages() { return has_pages; }
        void set_has_pages(const bool& value) { this->has_pages = value; }

        const int64_t & get_forks_count() const { return forks_count; }
        int64_t & get_mutable_forks_count() { return forks_count; }
        void set_forks_count(const int64_t& value) { this->forks_count = value; }

        const nlohmann::json & get_mirror_url() const { return mirror_url; }
        nlohmann::json & get_mutable_mirror_url() { return mirror_url; }
        void set_mirror_url(const nlohmann::json& value) { this->mirror_url = value; }

        const bool & get_archived() const { return archived; }
        bool & get_mutable_archived() { return archived; }
        void set_archived(const bool& value) { this->archived = value; }

        const int64_t & get_open_issues_count() const { return open_issues_count; }
        int64_t & get_mutable_open_issues_count() { return open_issues_count; }
        void set_open_issues_count(const int64_t& value) { this->open_issues_count = value; }

        std::shared_ptr<License> get_license() const { return license; }
        void set_license(std::shared_ptr<License> value) { this->license = value; }

        const int64_t & get_forks() const { return forks; }
        int64_t & get_mutable_forks() { return forks; }
        void set_forks(const int64_t& value) { this->forks = value; }

        const int64_t & get_open_issues() const { return open_issues; }
        int64_t & get_mutable_open_issues() { return open_issues; }
        void set_open_issues(const int64_t& value) { this->open_issues = value; }

        const int64_t & get_watchers() const { return watchers; }
        int64_t & get_mutable_watchers() { return watchers; }
        void set_watchers(const int64_t& value) { this->watchers = value; }

        const std::string & get_default_branch() const { return default_branch; }
        std::string & get_mutable_default_branch() { return default_branch; }
        void set_default_branch(const std::string& value) { this->default_branch = value; }
    };

    class Base {
        public:
        Base() = default;
        virtual ~Base() = default;

        private:
        std::string label;
        std::string ref;
        std::string sha;
        Owner user;
        BaseRepo repo;

        public:
        const std::string & get_label() const { return label; }
        std::string & get_mutable_label() { return label; }
        void set_label(const std::string& value) { this->label = value; }

        const std::string & get_ref() const { return ref; }
        std::string & get_mutable_ref() { return ref; }
        void set_ref(const std::string& value) { this->ref = value; }

        const std::string & get_sha() const { return sha; }
        std::string & get_mutable_sha() { return sha; }
        void set_sha(const std::string& value) { this->sha = value; }

        const Owner & get_user() const { return user; }
        Owner & get_mutable_user() { return user; }
        void set_user(const Owner& value) { this->user = value; }

        const BaseRepo & get_repo() const { return repo; }
        BaseRepo & get_mutable_repo() { return repo; }
        void set_repo(const BaseRepo& value) { this->repo = value; }
    };

    class PullRequestLinks {
        public:
        PullRequestLinks() = default;
        virtual ~PullRequestLinks() = default;

        private:
        Html self;
        Html html;
        Html issue;
        Html comments;
        Html review_comments;
        Html review_comment;
        Html commits;
        Html statuses;

        public:
        const Html & get_self() const { return self; }
        Html & get_mutable_self() { return self; }
        void set_self(const Html& value) { this->self = value; }

        const Html & get_html() const { return html; }
        Html & get_mutable_html() { return html; }
        void set_html(const Html& value) { this->html = value; }

        const Html & get_issue() const { return issue; }
        Html & get_mutable_issue() { return issue; }
        void set_issue(const Html& value) { this->issue = value; }

        const Html & get_comments() const { return comments; }
        Html & get_mutable_comments() { return comments; }
        void set_comments(const Html& value) { this->comments = value; }

        const Html & get_review_comments() const { return review_comments; }
        Html & get_mutable_review_comments() { return review_comments; }
        void set_review_comments(const Html& value) { this->review_comments = value; }

        const Html & get_review_comment() const { return review_comment; }
        Html & get_mutable_review_comment() { return review_comment; }
        void set_review_comment(const Html& value) { this->review_comment = value; }

        const Html & get_commits() const { return commits; }
        Html & get_mutable_commits() { return commits; }
        void set_commits(const Html& value) { this->commits = value; }

        const Html & get_statuses() const { return statuses; }
        Html & get_mutable_statuses() { return statuses; }
        void set_statuses(const Html& value) { this->statuses = value; }
    };

    class PullRequest {
        public:
        PullRequest() = default;
        virtual ~PullRequest() = default;

        private:
        std::string url;
        int64_t id;
        std::string node_id;
        std::string html_url;
        std::string diff_url;
        std::string patch_url;
        std::string issue_url;
        int64_t number;
        std::string state;
        bool locked;
        std::string title;
        Owner user;
        std::shared_ptr<std::string> body;
        std::string created_at;
        std::string updated_at;
        nlohmann::json closed_at;
        nlohmann::json merged_at;
        std::shared_ptr<std::string> merge_commit_sha;
        nlohmann::json assignee;
        std::vector<nlohmann::json> assignees;
        std::vector<nlohmann::json> requested_reviewers;
        std::vector<nlohmann::json> requested_teams;
        std::vector<nlohmann::json> labels;
        nlohmann::json milestone;
        std::string commits_url;
        std::string review_comments_url;
        std::string review_comment_url;
        std::string comments_url;
        std::string statuses_url;
        Base head;
        Base base;
        PullRequestLinks links;
        std::string author_association;
        std::shared_ptr<bool> merged;
        nlohmann::json mergeable;
        nlohmann::json rebaseable;
        std::shared_ptr<std::string> mergeable_state;
        nlohmann::json merged_by;
        std::shared_ptr<int64_t> comments;
        std::shared_ptr<int64_t> review_comments;
        std::shared_ptr<bool> maintainer_can_modify;
        std::shared_ptr<int64_t> commits;
        std::shared_ptr<int64_t> additions;
        std::shared_ptr<int64_t> deletions;
        std::shared_ptr<int64_t> changed_files;

        public:
        const std::string & get_url() const { return url; }
        std::string & get_mutable_url() { return url; }
        void set_url(const std::string& value) { this->url = value; }

        const int64_t & get_id() const { return id; }
        int64_t & get_mutable_id() { return id; }
        void set_id(const int64_t& value) { this->id = value; }

        const std::string & get_node_id() const { return node_id; }
        std::string & get_mutable_node_id() { return node_id; }
        void set_node_id(const std::string& value) { this->node_id = value; }

        const std::string & get_html_url() const { return html_url; }
        std::string & get_mutable_html_url() { return html_url; }
        void set_html_url(const std::string& value) { this->html_url = value; }

        const std::string & get_diff_url() const { return diff_url; }
        std::string & get_mutable_diff_url() { return diff_url; }
        void set_diff_url(const std::string& value) { this->diff_url = value; }

        const std::string & get_patch_url() const { return patch_url; }
        std::string & get_mutable_patch_url() { return patch_url; }
        void set_patch_url(const std::string& value) { this->patch_url = value; }

        const std::string & get_issue_url() const { return issue_url; }
        std::string & get_mutable_issue_url() { return issue_url; }
        void set_issue_url(const std::string& value) { this->issue_url = value; }

        const int64_t & get_number() const { return number; }
        int64_t & get_mutable_number() { return number; }
        void set_number(const int64_t& value) { this->number = value; }

        const std::string & get_state() const { return state; }
        std::string & get_mutable_state() { return state; }
        void set_state(const std::string& value) { this->state = value; }

        const bool & get_locked() const { return locked; }
        bool & get_mutable_locked() { return locked; }
        void set_locked(const bool& value) { this->locked = value; }

        const std::string & get_title() const { return title; }
        std::string & get_mutable_title() { return title; }
        void set_title(const std::string& value) { this->title = value; }

        const Owner & get_user() const { return user; }
        Owner & get_mutable_user() { return user; }
        void set_user(const Owner& value) { this->user = value; }

        std::shared_ptr<std::string> get_body() const { return body; }
        void set_body(std::shared_ptr<std::string> value) { this->body = value; }

        const std::string & get_created_at() const { return created_at; }
        std::string & get_mutable_created_at() { return created_at; }
        void set_created_at(const std::string& value) { this->created_at = value; }

        const std::string & get_updated_at() const { return updated_at; }
        std::string & get_mutable_updated_at() { return updated_at; }
        void set_updated_at(const std::string& value) { this->updated_at = value; }

        const nlohmann::json & get_closed_at() const { return closed_at; }
        nlohmann::json & get_mutable_closed_at() { return closed_at; }
        void set_closed_at(const nlohmann::json& value) { this->closed_at = value; }

        const nlohmann::json & get_merged_at() const { return merged_at; }
        nlohmann::json & get_mutable_merged_at() { return merged_at; }
        void set_merged_at(const nlohmann::json& value) { this->merged_at = value; }

        std::shared_ptr<std::string> get_merge_commit_sha() const { return merge_commit_sha; }
        void set_merge_commit_sha(std::shared_ptr<std::string> value) { this->merge_commit_sha = value; }

        const nlohmann::json & get_assignee() const { return assignee; }
        nlohmann::json & get_mutable_assignee() { return assignee; }
        void set_assignee(const nlohmann::json& value) { this->assignee = value; }

        const std::vector<nlohmann::json> & get_assignees() const { return assignees; }
        std::vector<nlohmann::json> & get_mutable_assignees() { return assignees; }
        void set_assignees(const std::vector<nlohmann::json>& value) { this->assignees = value; }

        const std::vector<nlohmann::json> & get_requested_reviewers() const { return requested_reviewers; }
        std::vector<nlohmann::json> & get_mutable_requested_reviewers() { return requested_reviewers; }
        void set_requested_reviewers(const std::vector<nlohmann::json>& value) { this->requested_reviewers = value; }

        const std::vector<nlohmann::json> & get_requested_teams() const { return requested_teams; }
        std::vector<nlohmann::json> & get_mutable_requested_teams() { return requested_teams; }
        void set_requested_teams(const std::vector<nlohmann::json>& value) { this->requested_teams = value; }

        const std::vector<nlohmann::json> & get_labels() const { return labels; }
        std::vector<nlohmann::json> & get_mutable_labels() { return labels; }
        void set_labels(const std::vector<nlohmann::json>& value) { this->labels = value; }

        const nlohmann::json & get_milestone() const { return milestone; }
        nlohmann::json & get_mutable_milestone() { return milestone; }
        void set_milestone(const nlohmann::json& value) { this->milestone = value; }

        const std::string & get_commits_url() const { return commits_url; }
        std::string & get_mutable_commits_url() { return commits_url; }
        void set_commits_url(const std::string& value) { this->commits_url = value; }

        const std::string & get_review_comments_url() const { return review_comments_url; }
        std::string & get_mutable_review_comments_url() { return review_comments_url; }
        void set_review_comments_url(const std::string& value) { this->review_comments_url = value; }

        const std::string & get_review_comment_url() const { return review_comment_url; }
        std::string & get_mutable_review_comment_url() { return review_comment_url; }
        void set_review_comment_url(const std::string& value) { this->review_comment_url = value; }

        const std::string & get_comments_url() const { return comments_url; }
        std::string & get_mutable_comments_url() { return comments_url; }
        void set_comments_url(const std::string& value) { this->comments_url = value; }

        const std::string & get_statuses_url() const { return statuses_url; }
        std::string & get_mutable_statuses_url() { return statuses_url; }
        void set_statuses_url(const std::string& value) { this->statuses_url = value; }

        const Base & get_head() const { return head; }
        Base & get_mutable_head() { return head; }
        void set_head(const Base& value) { this->head = value; }

        const Base & get_base() const { return base; }
        Base & get_mutable_base() { return base; }
        void set_base(const Base& value) { this->base = value; }

        const PullRequestLinks & get_links() const { return links; }
        PullRequestLinks & get_mutable_links() { return links; }
        void set_links(const PullRequestLinks& value) { this->links = value; }

        const std::string & get_author_association() const { return author_association; }
        std::string & get_mutable_author_association() { return author_association; }
        void set_author_association(const std::string& value) { this->author_association = value; }

        std::shared_ptr<bool> get_merged() const { return merged; }
        void set_merged(std::shared_ptr<bool> value) { this->merged = value; }

        const nlohmann::json & get_mergeable() const { return mergeable; }
        nlohmann::json & get_mutable_mergeable() { return mergeable; }
        void set_mergeable(const nlohmann::json& value) { this->mergeable = value; }

        const nlohmann::json & get_rebaseable() const { return rebaseable; }
        nlohmann::json & get_mutable_rebaseable() { return rebaseable; }
        void set_rebaseable(const nlohmann::json& value) { this->rebaseable = value; }

        std::shared_ptr<std::string> get_mergeable_state() const { return mergeable_state; }
        void set_mergeable_state(std::shared_ptr<std::string> value) { this->mergeable_state = value; }

        const nlohmann::json & get_merged_by() const { return merged_by; }
        nlohmann::json & get_mutable_merged_by() { return merged_by; }
        void set_merged_by(const nlohmann::json& value) { this->merged_by = value; }

        std::shared_ptr<int64_t> get_comments() const { return comments; }
        void set_comments(std::shared_ptr<int64_t> value) { this->comments = value; }

        std::shared_ptr<int64_t> get_review_comments() const { return review_comments; }
        void set_review_comments(std::shared_ptr<int64_t> value) { this->review_comments = value; }

        std::shared_ptr<bool> get_maintainer_can_modify() const { return maintainer_can_modify; }
        void set_maintainer_can_modify(std::shared_ptr<bool> value) { this->maintainer_can_modify = value; }

        std::shared_ptr<int64_t> get_commits() const { return commits; }
        void set_commits(std::shared_ptr<int64_t> value) { this->commits = value; }

        std::shared_ptr<int64_t> get_additions() const { return additions; }
        void set_additions(std::shared_ptr<int64_t> value) { this->additions = value; }

        std::shared_ptr<int64_t> get_deletions() const { return deletions; }
        void set_deletions(std::shared_ptr<int64_t> value) { this->deletions = value; }

        std::shared_ptr<int64_t> get_changed_files() const { return changed_files; }
        void set_changed_files(std::shared_ptr<int64_t> value) { this->changed_files = value; }
    };

    class Payload {
        public:
        Payload() = default;
        virtual ~Payload() = default;

        private:
        std::shared_ptr<int64_t> push_id;
        std::shared_ptr<int64_t> size;
        std::shared_ptr<int64_t> distinct_size;
        std::shared_ptr<std::string> ref;
        std::shared_ptr<std::string> head;
        std::shared_ptr<std::string> before;
        std::shared_ptr<std::vector<Commit>> commits;
        std::shared_ptr<std::string> action;
        std::shared_ptr<int64_t> number;
        std::shared_ptr<PullRequest> pull_request;
        std::shared_ptr<std::string> ref_type;
        std::shared_ptr<std::string> master_branch;
        std::shared_ptr<std::string> description;
        std::shared_ptr<std::string> pusher_type;
        std::shared_ptr<Comment> comment;

        public:
        std::shared_ptr<int64_t> get_push_id() const { return push_id; }
        void set_push_id(std::shared_ptr<int64_t> value) { this->push_id = value; }

        std::shared_ptr<int64_t> get_size() const { return size; }
        void set_size(std::shared_ptr<int64_t> value) { this->size = value; }

        std::shared_ptr<int64_t> get_distinct_size() const { return distinct_size; }
        void set_distinct_size(std::shared_ptr<int64_t> value) { this->distinct_size = value; }

        std::shared_ptr<std::string> get_ref() const { return ref; }
        void set_ref(std::shared_ptr<std::string> value) { this->ref = value; }

        std::shared_ptr<std::string> get_head() const { return head; }
        void set_head(std::shared_ptr<std::string> value) { this->head = value; }

        std::shared_ptr<std::string> get_before() const { return before; }
        void set_before(std::shared_ptr<std::string> value) { this->before = value; }

        std::shared_ptr<std::vector<Commit>> get_commits() const { return commits; }
        void set_commits(std::shared_ptr<std::vector<Commit>> value) { this->commits = value; }

        std::shared_ptr<std::string> get_action() const { return action; }
        void set_action(std::shared_ptr<std::string> value) { this->action = value; }

        std::shared_ptr<int64_t> get_number() const { return number; }
        void set_number(std::shared_ptr<int64_t> value) { this->number = value; }

        std::shared_ptr<PullRequest> get_pull_request() const { return pull_request; }
        void set_pull_request(std::shared_ptr<PullRequest> value) { this->pull_request = value; }

        std::shared_ptr<std::string> get_ref_type() const { return ref_type; }
        void set_ref_type(std::shared_ptr<std::string> value) { this->ref_type = value; }

        std::shared_ptr<std::string> get_master_branch() const { return master_branch; }
        void set_master_branch(std::shared_ptr<std::string> value) { this->master_branch = value; }

        std::shared_ptr<std::string> get_description() const { return description; }
        void set_description(std::shared_ptr<std::string> value) { this->description = value; }

        std::shared_ptr<std::string> get_pusher_type() const { return pusher_type; }
        void set_pusher_type(std::shared_ptr<std::string> value) { this->pusher_type = value; }

        std::shared_ptr<Comment> get_comment() const { return comment; }
        void set_comment(std::shared_ptr<Comment> value) { this->comment = value; }
    };

    class EventRepo {
        public:
        EventRepo() = default;
        virtual ~EventRepo() = default;

        private:
        int64_t id;
        std::string name;
        std::string url;

        public:
        const int64_t & get_id() const { return id; }
        int64_t & get_mutable_id() { return id; }
        void set_id(const int64_t& value) { this->id = value; }

        const std::string & get_name() const { return name; }
        std::string & get_mutable_name() { return name; }
        void set_name(const std::string& value) { this->name = value; }

        const std::string & get_url() const { return url; }
        std::string & get_mutable_url() { return url; }
        void set_url(const std::string& value) { this->url = value; }
    };

    class Event {
        public:
        Event() = default;
        virtual ~Event() = default;

        private:
        std::string id;
        std::string type;
        Actor actor;
        EventRepo repo;
        Payload payload;
        bool event_public;
        std::string created_at;
        std::shared_ptr<Actor> org;

        public:
        const std::string & get_id() const { return id; }
        std::string & get_mutable_id() { return id; }
        void set_id(const std::string& value) { this->id = value; }

        const std::string & get_type() const { return type; }
        std::string & get_mutable_type() { return type; }
        void set_type(const std::string& value) { this->type = value; }

        const Actor & get_actor() const { return actor; }
        Actor & get_mutable_actor() { return actor; }
        void set_actor(const Actor& value) { this->actor = value; }

        const EventRepo & get_repo() const { return repo; }
        EventRepo & get_mutable_repo() { return repo; }
        void set_repo(const EventRepo& value) { this->repo = value; }

        const Payload & get_payload() const { return payload; }
        Payload & get_mutable_payload() { return payload; }
        void set_payload(const Payload& value) { this->payload = value; }

        const bool & get_event_public() const { return event_public; }
        bool & get_mutable_event_public() { return event_public; }
        void set_event_public(const bool& value) { this->event_public = value; }

        const std::string & get_created_at() const { return created_at; }
        std::string & get_mutable_created_at() { return created_at; }
        void set_created_at(const std::string& value) { this->created_at = value; }

        std::shared_ptr<Actor> get_org() const { return org; }
        void set_org(std::shared_ptr<Actor> value) { this->org = value; }
    };

    class File {
        public:
        File() = default;
        virtual ~File() = default;

        private:
        std::string filename;
        std::string type;
        std::shared_ptr<std::string> language;
        std::string raw_url;
        int64_t size;

        public:
        const std::string & get_filename() const { return filename; }
        std::string & get_mutable_filename() { return filename; }
        void set_filename(const std::string& value) { this->filename = value; }

        const std::string & get_type() const { return type; }
        std::string & get_mutable_type() { return type; }
        void set_type(const std::string& value) { this->type = value; }

        std::shared_ptr<std::string> get_language() const { return language; }
        void set_language(std::shared_ptr<std::string> value) { this->language = value; }

        const std::string & get_raw_url() const { return raw_url; }
        std::string & get_mutable_raw_url() { return raw_url; }
        void set_raw_url(const std::string& value) { this->raw_url = value; }

        const int64_t & get_size() const { return size; }
        int64_t & get_mutable_size() { return size; }
        void set_size(const int64_t& value) { this->size = value; }
    };

    class Gist {
        public:
        Gist() = default;
        virtual ~Gist() = default;

        private:
        std::string url;
        std::string forks_url;
        std::string commits_url;
        std::string id;
        std::string node_id;
        std::string git_pull_url;
        std::string git_push_url;
        std::string html_url;
        std::map<std::string, File> files;
        bool gist_public;
        std::string created_at;
        std::string updated_at;
        std::shared_ptr<std::string> description;
        int64_t comments;
        nlohmann::json user;
        std::string comments_url;
        Owner owner;
        bool truncated;

        public:
        const std::string & get_url() const { return url; }
        std::string & get_mutable_url() { return url; }
        void set_url(const std::string& value) { this->url = value; }

        const std::string & get_forks_url() const { return forks_url; }
        std::string & get_mutable_forks_url() { return forks_url; }
        void set_forks_url(const std::string& value) { this->forks_url = value; }

        const std::string & get_commits_url() const { return commits_url; }
        std::string & get_mutable_commits_url() { return commits_url; }
        void set_commits_url(const std::string& value) { this->commits_url = value; }

        const std::string & get_id() const { return id; }
        std::string & get_mutable_id() { return id; }
        void set_id(const std::string& value) { this->id = value; }

        const std::string & get_node_id() const { return node_id; }
        std::string & get_mutable_node_id() { return node_id; }
        void set_node_id(const std::string& value) { this->node_id = value; }

        const std::string & get_git_pull_url() const { return git_pull_url; }
        std::string & get_mutable_git_pull_url() { return git_pull_url; }
        void set_git_pull_url(const std::string& value) { this->git_pull_url = value; }

        const std::string & get_git_push_url() const { return git_push_url; }
        std::string & get_mutable_git_push_url() { return git_push_url; }
        void set_git_push_url(const std::string& value) { this->git_push_url = value; }

        const std::string & get_html_url() const { return html_url; }
        std::string & get_mutable_html_url() { return html_url; }
        void set_html_url(const std::string& value) { this->html_url = value; }

        const std::map<std::string, File> & get_files() const { return files; }
        std::map<std::string, File> & get_mutable_files() { return files; }
        void set_files(const std::map<std::string, File>& value) { this->files = value; }

        const bool & get_gist_public() const { return gist_public; }
        bool & get_mutable_gist_public() { return gist_public; }
        void set_gist_public(const bool& value) { this->gist_public = value; }

        const std::string & get_created_at() const { return created_at; }
        std::string & get_mutable_created_at() { return created_at; }
        void set_created_at(const std::string& value) { this->created_at = value; }

        const std::string & get_updated_at() const { return updated_at; }
        std::string & get_mutable_updated_at() { return updated_at; }
        void set_updated_at(const std::string& value) { this->updated_at = value; }

        std::shared_ptr<std::string> get_description() const { return description; }
        void set_description(std::shared_ptr<std::string> value) { this->description = value; }

        const int64_t & get_comments() const { return comments; }
        int64_t & get_mutable_comments() { return comments; }
        void set_comments(const int64_t& value) { this->comments = value; }

        const nlohmann::json & get_user() const { return user; }
        nlohmann::json & get_mutable_user() { return user; }
        void set_user(const nlohmann::json& value) { this->user = value; }

        const std::string & get_comments_url() const { return comments_url; }
        std::string & get_mutable_comments_url() { return comments_url; }
        void set_comments_url(const std::string& value) { this->comments_url = value; }

        const Owner & get_owner() const { return owner; }
        Owner & get_mutable_owner() { return owner; }
        void set_owner(const Owner& value) { this->owner = value; }

        const bool & get_truncated() const { return truncated; }
        bool & get_mutable_truncated() { return truncated; }
        void set_truncated(const bool& value) { this->truncated = value; }
    };

    class Meta {
        public:
        Meta() = default;
        virtual ~Meta() = default;

        private:
        bool verifiable_password_authentication;
        std::string github_services_sha;
        std::vector<std::string> hooks;
        std::vector<std::string> git;
        std::vector<std::string> pages;
        std::vector<std::string> importer;

        public:
        const bool & get_verifiable_password_authentication() const { return verifiable_password_authentication; }
        bool & get_mutable_verifiable_password_authentication() { return verifiable_password_authentication; }
        void set_verifiable_password_authentication(const bool& value) { this->verifiable_password_authentication = value; }

        const std::string & get_github_services_sha() const { return github_services_sha; }
        std::string & get_mutable_github_services_sha() { return github_services_sha; }
        void set_github_services_sha(const std::string& value) { this->github_services_sha = value; }

        const std::vector<std::string> & get_hooks() const { return hooks; }
        std::vector<std::string> & get_mutable_hooks() { return hooks; }
        void set_hooks(const std::vector<std::string>& value) { this->hooks = value; }

        const std::vector<std::string> & get_git() const { return git; }
        std::vector<std::string> & get_mutable_git() { return git; }
        void set_git(const std::vector<std::string>& value) { this->git = value; }

        const std::vector<std::string> & get_pages() const { return pages; }
        std::vector<std::string> & get_mutable_pages() { return pages; }
        void set_pages(const std::vector<std::string>& value) { this->pages = value; }

        const std::vector<std::string> & get_importer() const { return importer; }
        std::vector<std::string> & get_mutable_importer() { return importer; }
        void set_importer(const std::vector<std::string>& value) { this->importer = value; }
    };

    typedef std::map<std::string, std::string> ApiData;
    typedef std::map<std::string, std::string> Emojis;
    typedef std::vector<Event> Events;
    typedef std::vector<Gist> Gists;
}

namespace quicktype {
    typedef std::map<std::string, std::string> ApiData;
    typedef std::map<std::string, std::string> Emojis;
    typedef std::vector<Event> Events;
    typedef std::vector<Gist> Gists;
}

namespace nlohmann {
    inline void from_json(const json& _j, quicktype::Actor& _x) {
        _x.set_id( _j.at("id").get<int64_t>() );
        _x.set_login( _j.at("login").get<std::string>() );
        _x.set_display_login( quicktype::get_optional<std::string>(_j, "display_login") );
        _x.set_gravatar_id( _j.at("gravatar_id").get<std::string>() );
        _x.set_url( _j.at("url").get<std::string>() );
        _x.set_avatar_url( _j.at("avatar_url").get<std::string>() );
    }

    inline void to_json(json& _j, const quicktype::Actor& _x) {
        _j = json::object();
        _j["id"] = _x.get_id();
        _j["login"] = _x.get_login();
        _j["display_login"] = _x.get_display_login();
        _j["gravatar_id"] = _x.get_gravatar_id();
        _j["url"] = _x.get_url();
        _j["avatar_url"] = _x.get_avatar_url();
    }

    inline void from_json(const json& _j, quicktype::Html& _x) {
        _x.set_href( _j.at("href").get<std::string>() );
    }

    inline void to_json(json& _j, const quicktype::Html& _x) {
        _j = json::object();
        _j["href"] = _x.get_href();
    }

    inline void from_json(const json& _j, quicktype::CommentLinks& _x) {
        _x.set_self( _j.at("self").get<quicktype::Html>() );
        _x.set_html( _j.at("html").get<quicktype::Html>() );
        _x.set_pull_request( _j.at("pull_request").get<quicktype::Html>() );
    }

    inline void to_json(json& _j, const quicktype::CommentLinks& _x) {
        _j = json::object();
        _j["self"] = _x.get_self();
        _j["html"] = _x.get_html();
        _j["pull_request"] = _x.get_pull_request();
    }

    inline void from_json(const json& _j, quicktype::Owner& _x) {
        _x.set_login( _j.at("login").get<std::string>() );
        _x.set_id( _j.at("id").get<int64_t>() );
        _x.set_node_id( _j.at("node_id").get<std::string>() );
        _x.set_avatar_url( _j.at("avatar_url").get<std::string>() );
        _x.set_gravatar_id( _j.at("gravatar_id").get<std::string>() );
        _x.set_url( _j.at("url").get<std::string>() );
        _x.set_html_url( _j.at("html_url").get<std::string>() );
        _x.set_followers_url( _j.at("followers_url").get<std::string>() );
        _x.set_following_url( _j.at("following_url").get<std::string>() );
        _x.set_gists_url( _j.at("gists_url").get<std::string>() );
        _x.set_starred_url( _j.at("starred_url").get<std::string>() );
        _x.set_subscriptions_url( _j.at("subscriptions_url").get<std::string>() );
        _x.set_organizations_url( _j.at("organizations_url").get<std::string>() );
        _x.set_repos_url( _j.at("repos_url").get<std::string>() );
        _x.set_events_url( _j.at("events_url").get<std::string>() );
        _x.set_received_events_url( _j.at("received_events_url").get<std::string>() );
        _x.set_type( _j.at("type").get<quicktype::Type>() );
        _x.set_site_admin( _j.at("site_admin").get<bool>() );
    }

    inline void to_json(json& _j, const quicktype::Owner& _x) {
        _j = json::object();
        _j["login"] = _x.get_login();
        _j["id"] = _x.get_id();
        _j["node_id"] = _x.get_node_id();
        _j["avatar_url"] = _x.get_avatar_url();
        _j["gravatar_id"] = _x.get_gravatar_id();
        _j["url"] = _x.get_url();
        _j["html_url"] = _x.get_html_url();
        _j["followers_url"] = _x.get_followers_url();
        _j["following_url"] = _x.get_following_url();
        _j["gists_url"] = _x.get_gists_url();
        _j["starred_url"] = _x.get_starred_url();
        _j["subscriptions_url"] = _x.get_subscriptions_url();
        _j["organizations_url"] = _x.get_organizations_url();
        _j["repos_url"] = _x.get_repos_url();
        _j["events_url"] = _x.get_events_url();
        _j["received_events_url"] = _x.get_received_events_url();
        _j["type"] = _x.get_type();
        _j["site_admin"] = _x.get_site_admin();
    }

    inline void from_json(const json& _j, quicktype::Comment& _x) {
        _x.set_url( _j.at("url").get<std::string>() );
        _x.set_pull_request_review_id( _j.at("pull_request_review_id").get<int64_t>() );
        _x.set_id( _j.at("id").get<int64_t>() );
        _x.set_node_id( _j.at("node_id").get<std::string>() );
        _x.set_diff_hunk( _j.at("diff_hunk").get<std::string>() );
        _x.set_path( _j.at("path").get<std::string>() );
        _x.set_position( _j.at("position").get<int64_t>() );
        _x.set_original_position( _j.at("original_position").get<int64_t>() );
        _x.set_commit_id( _j.at("commit_id").get<std::string>() );
        _x.set_original_commit_id( _j.at("original_commit_id").get<std::string>() );
        _x.set_user( _j.at("user").get<quicktype::Owner>() );
        _x.set_body( _j.at("body").get<std::string>() );
        _x.set_created_at( _j.at("created_at").get<std::string>() );
        _x.set_updated_at( _j.at("updated_at").get<std::string>() );
        _x.set_html_url( _j.at("html_url").get<std::string>() );
        _x.set_pull_request_url( _j.at("pull_request_url").get<std::string>() );
        _x.set_author_association( _j.at("author_association").get<std::string>() );
        _x.set_links( _j.at("_links").get<quicktype::CommentLinks>() );
    }

    inline void to_json(json& _j, const quicktype::Comment& _x) {
        _j = json::object();
        _j["url"] = _x.get_url();
        _j["pull_request_review_id"] = _x.get_pull_request_review_id();
        _j["id"] = _x.get_id();
        _j["node_id"] = _x.get_node_id();
        _j["diff_hunk"] = _x.get_diff_hunk();
        _j["path"] = _x.get_path();
        _j["position"] = _x.get_position();
        _j["original_position"] = _x.get_original_position();
        _j["commit_id"] = _x.get_commit_id();
        _j["original_commit_id"] = _x.get_original_commit_id();
        _j["user"] = _x.get_user();
        _j["body"] = _x.get_body();
        _j["created_at"] = _x.get_created_at();
        _j["updated_at"] = _x.get_updated_at();
        _j["html_url"] = _x.get_html_url();
        _j["pull_request_url"] = _x.get_pull_request_url();
        _j["author_association"] = _x.get_author_association();
        _j["_links"] = _x.get_links();
    }

    inline void from_json(const json& _j, quicktype::Author& _x) {
        _x.set_email( _j.at("email").get<std::string>() );
        _x.set_name( _j.at("name").get<std::string>() );
    }

    inline void to_json(json& _j, const quicktype::Author& _x) {
        _j = json::object();
        _j["email"] = _x.get_email();
        _j["name"] = _x.get_name();
    }

    inline void from_json(const json& _j, quicktype::Commit& _x) {
        _x.set_sha( _j.at("sha").get<std::string>() );
        _x.set_author( _j.at("author").get<quicktype::Author>() );
        _x.set_message( _j.at("message").get<std::string>() );
        _x.set_distinct( _j.at("distinct").get<bool>() );
        _x.set_url( _j.at("url").get<std::string>() );
    }

    inline void to_json(json& _j, const quicktype::Commit& _x) {
        _j = json::object();
        _j["sha"] = _x.get_sha();
        _j["author"] = _x.get_author();
        _j["message"] = _x.get_message();
        _j["distinct"] = _x.get_distinct();
        _j["url"] = _x.get_url();
    }

    inline void from_json(const json& _j, quicktype::License& _x) {
        _x.set_key( _j.at("key").get<std::string>() );
        _x.set_name( _j.at("name").get<std::string>() );
        _x.set_spdx_id( quicktype::get_optional<std::string>(_j, "spdx_id") );
        _x.set_url( quicktype::get_optional<std::string>(_j, "url") );
        _x.set_node_id( _j.at("node_id").get<std::string>() );
    }

    inline void to_json(json& _j, const quicktype::License& _x) {
        _j = json::object();
        _j["key"] = _x.get_key();
        _j["name"] = _x.get_name();
        _j["spdx_id"] = _x.get_spdx_id();
        _j["url"] = _x.get_url();
        _j["node_id"] = _x.get_node_id();
    }

    inline void from_json(const json& _j, quicktype::BaseRepo& _x) {
        _x.set_id( _j.at("id").get<int64_t>() );
        _x.set_node_id( _j.at("node_id").get<std::string>() );
        _x.set_name( _j.at("name").get<std::string>() );
        _x.set_full_name( _j.at("full_name").get<std::string>() );
        _x.set_owner( _j.at("owner").get<quicktype::Owner>() );
        _x.set_repo_private( _j.at("private").get<bool>() );
        _x.set_html_url( _j.at("html_url").get<std::string>() );
        _x.set_description( quicktype::get_optional<std::string>(_j, "description") );
        _x.set_fork( _j.at("fork").get<bool>() );
        _x.set_url( _j.at("url").get<std::string>() );
        _x.set_forks_url( _j.at("forks_url").get<std::string>() );
        _x.set_keys_url( _j.at("keys_url").get<std::string>() );
        _x.set_collaborators_url( _j.at("collaborators_url").get<std::string>() );
        _x.set_teams_url( _j.at("teams_url").get<std::string>() );
        _x.set_hooks_url( _j.at("hooks_url").get<std::string>() );
        _x.set_issue_events_url( _j.at("issue_events_url").get<std::string>() );
        _x.set_events_url( _j.at("events_url").get<std::string>() );
        _x.set_assignees_url( _j.at("assignees_url").get<std::string>() );
        _x.set_branches_url( _j.at("branches_url").get<std::string>() );
        _x.set_tags_url( _j.at("tags_url").get<std::string>() );
        _x.set_blobs_url( _j.at("blobs_url").get<std::string>() );
        _x.set_git_tags_url( _j.at("git_tags_url").get<std::string>() );
        _x.set_git_refs_url( _j.at("git_refs_url").get<std::string>() );
        _x.set_trees_url( _j.at("trees_url").get<std::string>() );
        _x.set_statuses_url( _j.at("statuses_url").get<std::string>() );
        _x.set_languages_url( _j.at("languages_url").get<std::string>() );
        _x.set_stargazers_url( _j.at("stargazers_url").get<std::string>() );
        _x.set_contributors_url( _j.at("contributors_url").get<std::string>() );
        _x.set_subscribers_url( _j.at("subscribers_url").get<std::string>() );
        _x.set_subscription_url( _j.at("subscription_url").get<std::string>() );
        _x.set_commits_url( _j.at("commits_url").get<std::string>() );
        _x.set_git_commits_url( _j.at("git_commits_url").get<std::string>() );
        _x.set_comments_url( _j.at("comments_url").get<std::string>() );
        _x.set_issue_comment_url( _j.at("issue_comment_url").get<std::string>() );
        _x.set_contents_url( _j.at("contents_url").get<std::string>() );
        _x.set_compare_url( _j.at("compare_url").get<std::string>() );
        _x.set_merges_url( _j.at("merges_url").get<std::string>() );
        _x.set_archive_url( _j.at("archive_url").get<std::string>() );
        _x.set_downloads_url( _j.at("downloads_url").get<std::string>() );
        _x.set_issues_url( _j.at("issues_url").get<std::string>() );
        _x.set_pulls_url( _j.at("pulls_url").get<std::string>() );
        _x.set_milestones_url( _j.at("milestones_url").get<std::string>() );
        _x.set_notifications_url( _j.at("notifications_url").get<std::string>() );
        _x.set_labels_url( _j.at("labels_url").get<std::string>() );
        _x.set_releases_url( _j.at("releases_url").get<std::string>() );
        _x.set_deployments_url( _j.at("deployments_url").get<std::string>() );
        _x.set_created_at( _j.at("created_at").get<std::string>() );
        _x.set_updated_at( _j.at("updated_at").get<std::string>() );
        _x.set_pushed_at( _j.at("pushed_at").get<std::string>() );
        _x.set_git_url( _j.at("git_url").get<std::string>() );
        _x.set_ssh_url( _j.at("ssh_url").get<std::string>() );
        _x.set_clone_url( _j.at("clone_url").get<std::string>() );
        _x.set_svn_url( _j.at("svn_url").get<std::string>() );
        _x.set_homepage( quicktype::get_optional<std::string>(_j, "homepage") );
        _x.set_size( _j.at("size").get<int64_t>() );
        _x.set_stargazers_count( _j.at("stargazers_count").get<int64_t>() );
        _x.set_watchers_count( _j.at("watchers_count").get<int64_t>() );
        _x.set_language( _j.at("language").get<std::string>() );
        _x.set_has_issues( _j.at("has_issues").get<bool>() );
        _x.set_has_projects( _j.at("has_projects").get<bool>() );
        _x.set_has_downloads( _j.at("has_downloads").get<bool>() );
        _x.set_has_wiki( _j.at("has_wiki").get<bool>() );
        _x.set_has_pages( _j.at("has_pages").get<bool>() );
        _x.set_forks_count( _j.at("forks_count").get<int64_t>() );
        _x.set_mirror_url( quicktype::get_untyped(_j, "mirror_url") );
        _x.set_archived( _j.at("archived").get<bool>() );
        _x.set_open_issues_count( _j.at("open_issues_count").get<int64_t>() );
        _x.set_license( quicktype::get_optional<quicktype::License>(_j, "license") );
        _x.set_forks( _j.at("forks").get<int64_t>() );
        _x.set_open_issues( _j.at("open_issues").get<int64_t>() );
        _x.set_watchers( _j.at("watchers").get<int64_t>() );
        _x.set_default_branch( _j.at("default_branch").get<std::string>() );
    }

    inline void to_json(json& _j, const quicktype::BaseRepo& _x) {
        _j = json::object();
        _j["id"] = _x.get_id();
        _j["node_id"] = _x.get_node_id();
        _j["name"] = _x.get_name();
        _j["full_name"] = _x.get_full_name();
        _j["owner"] = _x.get_owner();
        _j["private"] = _x.get_repo_private();
        _j["html_url"] = _x.get_html_url();
        _j["description"] = _x.get_description();
        _j["fork"] = _x.get_fork();
        _j["url"] = _x.get_url();
        _j["forks_url"] = _x.get_forks_url();
        _j["keys_url"] = _x.get_keys_url();
        _j["collaborators_url"] = _x.get_collaborators_url();
        _j["teams_url"] = _x.get_teams_url();
        _j["hooks_url"] = _x.get_hooks_url();
        _j["issue_events_url"] = _x.get_issue_events_url();
        _j["events_url"] = _x.get_events_url();
        _j["assignees_url"] = _x.get_assignees_url();
        _j["branches_url"] = _x.get_branches_url();
        _j["tags_url"] = _x.get_tags_url();
        _j["blobs_url"] = _x.get_blobs_url();
        _j["git_tags_url"] = _x.get_git_tags_url();
        _j["git_refs_url"] = _x.get_git_refs_url();
        _j["trees_url"] = _x.get_trees_url();
        _j["statuses_url"] = _x.get_statuses_url();
        _j["languages_url"] = _x.get_languages_url();
        _j["stargazers_url"] = _x.get_stargazers_url();
        _j["contributors_url"] = _x.get_contributors_url();
        _j["subscribers_url"] = _x.get_subscribers_url();
        _j["subscription_url"] = _x.get_subscription_url();
        _j["commits_url"] = _x.get_commits_url();
        _j["git_commits_url"] = _x.get_git_commits_url();
        _j["comments_url"] = _x.get_comments_url();
        _j["issue_comment_url"] = _x.get_issue_comment_url();
        _j["contents_url"] = _x.get_contents_url();
        _j["compare_url"] = _x.get_compare_url();
        _j["merges_url"] = _x.get_merges_url();
        _j["archive_url"] = _x.get_archive_url();
        _j["downloads_url"] = _x.get_downloads_url();
        _j["issues_url"] = _x.get_issues_url();
        _j["pulls_url"] = _x.get_pulls_url();
        _j["milestones_url"] = _x.get_milestones_url();
        _j["notifications_url"] = _x.get_notifications_url();
        _j["labels_url"] = _x.get_labels_url();
        _j["releases_url"] = _x.get_releases_url();
        _j["deployments_url"] = _x.get_deployments_url();
        _j["created_at"] = _x.get_created_at();
        _j["updated_at"] = _x.get_updated_at();
        _j["pushed_at"] = _x.get_pushed_at();
        _j["git_url"] = _x.get_git_url();
        _j["ssh_url"] = _x.get_ssh_url();
        _j["clone_url"] = _x.get_clone_url();
        _j["svn_url"] = _x.get_svn_url();
        _j["homepage"] = _x.get_homepage();
        _j["size"] = _x.get_size();
        _j["stargazers_count"] = _x.get_stargazers_count();
        _j["watchers_count"] = _x.get_watchers_count();
        _j["language"] = _x.get_language();
        _j["has_issues"] = _x.get_has_issues();
        _j["has_projects"] = _x.get_has_projects();
        _j["has_downloads"] = _x.get_has_downloads();
        _j["has_wiki"] = _x.get_has_wiki();
        _j["has_pages"] = _x.get_has_pages();
        _j["forks_count"] = _x.get_forks_count();
        _j["mirror_url"] = _x.get_mirror_url();
        _j["archived"] = _x.get_archived();
        _j["open_issues_count"] = _x.get_open_issues_count();
        _j["license"] = _x.get_license();
        _j["forks"] = _x.get_forks();
        _j["open_issues"] = _x.get_open_issues();
        _j["watchers"] = _x.get_watchers();
        _j["default_branch"] = _x.get_default_branch();
    }

    inline void from_json(const json& _j, quicktype::Base& _x) {
        _x.set_label( _j.at("label").get<std::string>() );
        _x.set_ref( _j.at("ref").get<std::string>() );
        _x.set_sha( _j.at("sha").get<std::string>() );
        _x.set_user( _j.at("user").get<quicktype::Owner>() );
        _x.set_repo( _j.at("repo").get<quicktype::BaseRepo>() );
    }

    inline void to_json(json& _j, const quicktype::Base& _x) {
        _j = json::object();
        _j["label"] = _x.get_label();
        _j["ref"] = _x.get_ref();
        _j["sha"] = _x.get_sha();
        _j["user"] = _x.get_user();
        _j["repo"] = _x.get_repo();
    }

    inline void from_json(const json& _j, quicktype::PullRequestLinks& _x) {
        _x.set_self( _j.at("self").get<quicktype::Html>() );
        _x.set_html( _j.at("html").get<quicktype::Html>() );
        _x.set_issue( _j.at("issue").get<quicktype::Html>() );
        _x.set_comments( _j.at("comments").get<quicktype::Html>() );
        _x.set_review_comments( _j.at("review_comments").get<quicktype::Html>() );
        _x.set_review_comment( _j.at("review_comment").get<quicktype::Html>() );
        _x.set_commits( _j.at("commits").get<quicktype::Html>() );
        _x.set_statuses( _j.at("statuses").get<quicktype::Html>() );
    }

    inline void to_json(json& _j, const quicktype::PullRequestLinks& _x) {
        _j = json::object();
        _j["self"] = _x.get_self();
        _j["html"] = _x.get_html();
        _j["issue"] = _x.get_issue();
        _j["comments"] = _x.get_comments();
        _j["review_comments"] = _x.get_review_comments();
        _j["review_comment"] = _x.get_review_comment();
        _j["commits"] = _x.get_commits();
        _j["statuses"] = _x.get_statuses();
    }

    inline void from_json(const json& _j, quicktype::PullRequest& _x) {
        _x.set_url( _j.at("url").get<std::string>() );
        _x.set_id( _j.at("id").get<int64_t>() );
        _x.set_node_id( _j.at("node_id").get<std::string>() );
        _x.set_html_url( _j.at("html_url").get<std::string>() );
        _x.set_diff_url( _j.at("diff_url").get<std::string>() );
        _x.set_patch_url( _j.at("patch_url").get<std::string>() );
        _x.set_issue_url( _j.at("issue_url").get<std::string>() );
        _x.set_number( _j.at("number").get<int64_t>() );
        _x.set_state( _j.at("state").get<std::string>() );
        _x.set_locked( _j.at("locked").get<bool>() );
        _x.set_title( _j.at("title").get<std::string>() );
        _x.set_user( _j.at("user").get<quicktype::Owner>() );
        _x.set_body( quicktype::get_optional<std::string>(_j, "body") );
        _x.set_created_at( _j.at("created_at").get<std::string>() );
        _x.set_updated_at( _j.at("updated_at").get<std::string>() );
        _x.set_closed_at( quicktype::get_untyped(_j, "closed_at") );
        _x.set_merged_at( quicktype::get_untyped(_j, "merged_at") );
        _x.set_merge_commit_sha( quicktype::get_optional<std::string>(_j, "merge_commit_sha") );
        _x.set_assignee( quicktype::get_untyped(_j, "assignee") );
        _x.set_assignees( _j.at("assignees").get<std::vector<json>>() );
        _x.set_requested_reviewers( _j.at("requested_reviewers").get<std::vector<json>>() );
        _x.set_requested_teams( _j.at("requested_teams").get<std::vector<json>>() );
        _x.set_labels( _j.at("labels").get<std::vector<json>>() );
        _x.set_milestone( quicktype::get_untyped(_j, "milestone") );
        _x.set_commits_url( _j.at("commits_url").get<std::string>() );
        _x.set_review_comments_url( _j.at("review_comments_url").get<std::string>() );
        _x.set_review_comment_url( _j.at("review_comment_url").get<std::string>() );
        _x.set_comments_url( _j.at("comments_url").get<std::string>() );
        _x.set_statuses_url( _j.at("statuses_url").get<std::string>() );
        _x.set_head( _j.at("head").get<quicktype::Base>() );
        _x.set_base( _j.at("base").get<quicktype::Base>() );
        _x.set_links( _j.at("_links").get<quicktype::PullRequestLinks>() );
        _x.set_author_association( _j.at("author_association").get<std::string>() );
        _x.set_merged( quicktype::get_optional<bool>(_j, "merged") );
        _x.set_mergeable( quicktype::get_untyped(_j, "mergeable") );
        _x.set_rebaseable( quicktype::get_untyped(_j, "rebaseable") );
        _x.set_mergeable_state( quicktype::get_optional<std::string>(_j, "mergeable_state") );
        _x.set_merged_by( quicktype::get_untyped(_j, "merged_by") );
        _x.set_comments( quicktype::get_optional<int64_t>(_j, "comments") );
        _x.set_review_comments( quicktype::get_optional<int64_t>(_j, "review_comments") );
        _x.set_maintainer_can_modify( quicktype::get_optional<bool>(_j, "maintainer_can_modify") );
        _x.set_commits( quicktype::get_optional<int64_t>(_j, "commits") );
        _x.set_additions( quicktype::get_optional<int64_t>(_j, "additions") );
        _x.set_deletions( quicktype::get_optional<int64_t>(_j, "deletions") );
        _x.set_changed_files( quicktype::get_optional<int64_t>(_j, "changed_files") );
    }

    inline void to_json(json& _j, const quicktype::PullRequest& _x) {
        _j = json::object();
        _j["url"] = _x.get_url();
        _j["id"] = _x.get_id();
        _j["node_id"] = _x.get_node_id();
        _j["html_url"] = _x.get_html_url();
        _j["diff_url"] = _x.get_diff_url();
        _j["patch_url"] = _x.get_patch_url();
        _j["issue_url"] = _x.get_issue_url();
        _j["number"] = _x.get_number();
        _j["state"] = _x.get_state();
        _j["locked"] = _x.get_locked();
        _j["title"] = _x.get_title();
        _j["user"] = _x.get_user();
        _j["body"] = _x.get_body();
        _j["created_at"] = _x.get_created_at();
        _j["updated_at"] = _x.get_updated_at();
        _j["closed_at"] = _x.get_closed_at();
        _j["merged_at"] = _x.get_merged_at();
        _j["merge_commit_sha"] = _x.get_merge_commit_sha();
        _j["assignee"] = _x.get_assignee();
        _j["assignees"] = _x.get_assignees();
        _j["requested_reviewers"] = _x.get_requested_reviewers();
        _j["requested_teams"] = _x.get_requested_teams();
        _j["labels"] = _x.get_labels();
        _j["milestone"] = _x.get_milestone();
        _j["commits_url"] = _x.get_commits_url();
        _j["review_comments_url"] = _x.get_review_comments_url();
        _j["review_comment_url"] = _x.get_review_comment_url();
        _j["comments_url"] = _x.get_comments_url();
        _j["statuses_url"] = _x.get_statuses_url();
        _j["head"] = _x.get_head();
        _j["base"] = _x.get_base();
        _j["_links"] = _x.get_links();
        _j["author_association"] = _x.get_author_association();
        _j["merged"] = _x.get_merged();
        _j["mergeable"] = _x.get_mergeable();
        _j["rebaseable"] = _x.get_rebaseable();
        _j["mergeable_state"] = _x.get_mergeable_state();
        _j["merged_by"] = _x.get_merged_by();
        _j["comments"] = _x.get_comments();
        _j["review_comments"] = _x.get_review_comments();
        _j["maintainer_can_modify"] = _x.get_maintainer_can_modify();
        _j["commits"] = _x.get_commits();
        _j["additions"] = _x.get_additions();
        _j["deletions"] = _x.get_deletions();
        _j["changed_files"] = _x.get_changed_files();
    }

    inline void from_json(const json& _j, quicktype::Payload& _x) {
        _x.set_push_id( quicktype::get_optional<int64_t>(_j, "push_id") );
        _x.set_size( quicktype::get_optional<int64_t>(_j, "size") );
        _x.set_distinct_size( quicktype::get_optional<int64_t>(_j, "distinct_size") );
        _x.set_ref( quicktype::get_optional<std::string>(_j, "ref") );
        _x.set_head( quicktype::get_optional<std::string>(_j, "head") );
        _x.set_before( quicktype::get_optional<std::string>(_j, "before") );
        _x.set_commits( quicktype::get_optional<std::vector<quicktype::Commit>>(_j, "commits") );
        _x.set_action( quicktype::get_optional<std::string>(_j, "action") );
        _x.set_number( quicktype::get_optional<int64_t>(_j, "number") );
        _x.set_pull_request( quicktype::get_optional<quicktype::PullRequest>(_j, "pull_request") );
        _x.set_ref_type( quicktype::get_optional<std::string>(_j, "ref_type") );
        _x.set_master_branch( quicktype::get_optional<std::string>(_j, "master_branch") );
        _x.set_description( quicktype::get_optional<std::string>(_j, "description") );
        _x.set_pusher_type( quicktype::get_optional<std::string>(_j, "pusher_type") );
        _x.set_comment( quicktype::get_optional<quicktype::Comment>(_j, "comment") );
    }

    inline void to_json(json& _j, const quicktype::Payload& _x) {
        _j = json::object();
        _j["push_id"] = _x.get_push_id();
        _j["size"] = _x.get_size();
        _j["distinct_size"] = _x.get_distinct_size();
        _j["ref"] = _x.get_ref();
        _j["head"] = _x.get_head();
        _j["before"] = _x.get_before();
        _j["commits"] = _x.get_commits();
        _j["action"] = _x.get_action();
        _j["number"] = _x.get_number();
        _j["pull_request"] = _x.get_pull_request();
        _j["ref_type"] = _x.get_ref_type();
        _j["master_branch"] = _x.get_master_branch();
        _j["description"] = _x.get_description();
        _j["pusher_type"] = _x.get_pusher_type();
        _j["comment"] = _x.get_comment();
    }

    inline void from_json(const json& _j, quicktype::EventRepo& _x) {
        _x.set_id( _j.at("id").get<int64_t>() );
        _x.set_name( _j.at("name").get<std::string>() );
        _x.set_url( _j.at("url").get<std::string>() );
    }

    inline void to_json(json& _j, const quicktype::EventRepo& _x) {
        _j = json::object();
        _j["id"] = _x.get_id();
        _j["name"] = _x.get_name();
        _j["url"] = _x.get_url();
    }

    inline void from_json(const json& _j, quicktype::Event& _x) {
        _x.set_id( _j.at("id").get<std::string>() );
        _x.set_type( _j.at("type").get<std::string>() );
        _x.set_actor( _j.at("actor").get<quicktype::Actor>() );
        _x.set_repo( _j.at("repo").get<quicktype::EventRepo>() );
        _x.set_payload( _j.at("payload").get<quicktype::Payload>() );
        _x.set_event_public( _j.at("public").get<bool>() );
        _x.set_created_at( _j.at("created_at").get<std::string>() );
        _x.set_org( quicktype::get_optional<quicktype::Actor>(_j, "org") );
    }

    inline void to_json(json& _j, const quicktype::Event& _x) {
        _j = json::object();
        _j["id"] = _x.get_id();
        _j["type"] = _x.get_type();
        _j["actor"] = _x.get_actor();
        _j["repo"] = _x.get_repo();
        _j["payload"] = _x.get_payload();
        _j["public"] = _x.get_event_public();
        _j["created_at"] = _x.get_created_at();
        _j["org"] = _x.get_org();
    }

    inline void from_json(const json& _j, quicktype::File& _x) {
        _x.set_filename( _j.at("filename").get<std::string>() );
        _x.set_type( _j.at("type").get<std::string>() );
        _x.set_language( quicktype::get_optional<std::string>(_j, "language") );
        _x.set_raw_url( _j.at("raw_url").get<std::string>() );
        _x.set_size( _j.at("size").get<int64_t>() );
    }

    inline void to_json(json& _j, const quicktype::File& _x) {
        _j = json::object();
        _j["filename"] = _x.get_filename();
        _j["type"] = _x.get_type();
        _j["language"] = _x.get_language();
        _j["raw_url"] = _x.get_raw_url();
        _j["size"] = _x.get_size();
    }

    inline void from_json(const json& _j, quicktype::Gist& _x) {
        _x.set_url( _j.at("url").get<std::string>() );
        _x.set_forks_url( _j.at("forks_url").get<std::string>() );
        _x.set_commits_url( _j.at("commits_url").get<std::string>() );
        _x.set_id( _j.at("id").get<std::string>() );
        _x.set_node_id( _j.at("node_id").get<std::string>() );
        _x.set_git_pull_url( _j.at("git_pull_url").get<std::string>() );
        _x.set_git_push_url( _j.at("git_push_url").get<std::string>() );
        _x.set_html_url( _j.at("html_url").get<std::string>() );
        _x.set_files( _j.at("files").get<std::map<std::string, quicktype::File>>() );
        _x.set_gist_public( _j.at("public").get<bool>() );
        _x.set_created_at( _j.at("created_at").get<std::string>() );
        _x.set_updated_at( _j.at("updated_at").get<std::string>() );
        _x.set_description( quicktype::get_optional<std::string>(_j, "description") );
        _x.set_comments( _j.at("comments").get<int64_t>() );
        _x.set_user( quicktype::get_untyped(_j, "user") );
        _x.set_comments_url( _j.at("comments_url").get<std::string>() );
        _x.set_owner( _j.at("owner").get<quicktype::Owner>() );
        _x.set_truncated( _j.at("truncated").get<bool>() );
    }

    inline void to_json(json& _j, const quicktype::Gist& _x) {
        _j = json::object();
        _j["url"] = _x.get_url();
        _j["forks_url"] = _x.get_forks_url();
        _j["commits_url"] = _x.get_commits_url();
        _j["id"] = _x.get_id();
        _j["node_id"] = _x.get_node_id();
        _j["git_pull_url"] = _x.get_git_pull_url();
        _j["git_push_url"] = _x.get_git_push_url();
        _j["html_url"] = _x.get_html_url();
        _j["files"] = _x.get_files();
        _j["public"] = _x.get_gist_public();
        _j["created_at"] = _x.get_created_at();
        _j["updated_at"] = _x.get_updated_at();
        _j["description"] = _x.get_description();
        _j["comments"] = _x.get_comments();
        _j["user"] = _x.get_user();
        _j["comments_url"] = _x.get_comments_url();
        _j["owner"] = _x.get_owner();
        _j["truncated"] = _x.get_truncated();
    }

    inline void from_json(const json& _j, quicktype::Meta& _x) {
        _x.set_verifiable_password_authentication( _j.at("verifiable_password_authentication").get<bool>() );
        _x.set_github_services_sha( _j.at("github_services_sha").get<std::string>() );
        _x.set_hooks( _j.at("hooks").get<std::vector<std::string>>() );
        _x.set_git( _j.at("git").get<std::vector<std::string>>() );
        _x.set_pages( _j.at("pages").get<std::vector<std::string>>() );
        _x.set_importer( _j.at("importer").get<std::vector<std::string>>() );
    }

    inline void to_json(json& _j, const quicktype::Meta& _x) {
        _j = json::object();
        _j["verifiable_password_authentication"] = _x.get_verifiable_password_authentication();
        _j["github_services_sha"] = _x.get_github_services_sha();
        _j["hooks"] = _x.get_hooks();
        _j["git"] = _x.get_git();
        _j["pages"] = _x.get_pages();
        _j["importer"] = _x.get_importer();
    }

    inline void from_json(const json& _j, quicktype::Type& _x) {
        if (_j == "Organization") _x = quicktype::Type::ORGANIZATION;
        else if (_j == "User") _x = quicktype::Type::USER;
        else throw "Input JSON does not conform to schema";
    }

    inline void to_json(json& _j, const quicktype::Type& _x) {
        switch (_x) {
            case quicktype::Type::ORGANIZATION: _j = "Organization"; break;
            case quicktype::Type::USER: _j = "User"; break;
            default: throw "This should not happen";
        }
    }
}
