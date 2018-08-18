# This code may look unusually verbose for Ruby (and it is), but
# it performs some subtle and complex validation of JSON data.
#
# To parse this JSON, add 'dry-struct' and 'dry-types' gems, then do:
#
#   api_data = APIData.from_json! "{…}"
#   puts api_data["…"]
#
#   emojis = Emojis.from_json! "{…}"
#   puts emojis["…"]
#
#   events = Events.from_json! "[…]"
#   puts events.first.org&.id.even?
#
#   gists = Gists.from_json! "[…]"
#   puts gists.first.owner.login
#
#   meta = Meta.from_json! "{…}"
#   puts meta.importer.first
#
# If from_json! succeeds, the value returned matches the schema.

require 'json'
require 'dry-types'
require 'dry-struct'

module Types
  include Dry::Types.module

  Int    = Strict::Int
  Nil    = Strict::Nil
  Bool   = Strict::Bool
  Hash   = Strict::Hash
  String = Strict::String
  Type   = Strict::String.enum("Organization", "User")
end

class Actor < Dry::Struct
  attribute :id,            Types::Int
  attribute :login,         Types::String
  attribute :display_login, Types::String.optional
  attribute :gravatar_id,   Types::String
  attribute :url,           Types::String
  attribute :avatar_url,    Types::String

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:            d.fetch("id"),
      login:         d.fetch("login"),
      display_login: d["display_login"],
      gravatar_id:   d.fetch("gravatar_id"),
      url:           d.fetch("url"),
      avatar_url:    d.fetch("avatar_url"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"            => @id,
      "login"         => @login,
      "display_login" => @display_login,
      "gravatar_id"   => @gravatar_id,
      "url"           => @url,
      "avatar_url"    => @avatar_url,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class HTML < Dry::Struct
  attribute :href, Types::String

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      href: d.fetch("href"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "href" => @href,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class CommentLinks < Dry::Struct
  attribute :self,         HTML
  attribute :html,         HTML
  attribute :pull_request, HTML

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      self:         HTML.from_dynamic!(d.fetch("self")),
      html:         HTML.from_dynamic!(d.fetch("html")),
      pull_request: HTML.from_dynamic!(d.fetch("pull_request")),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "self"         => @self.to_dynamic,
      "html"         => @html.to_dynamic,
      "pull_request" => @pull_request.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

module Type
  Organization = "Organization"
  User         = "User"
end

class Owner < Dry::Struct
  attribute :login,               Types::String
  attribute :id,                  Types::Int
  attribute :node_id,             Types::String
  attribute :avatar_url,          Types::String
  attribute :gravatar_id,         Types::String
  attribute :url,                 Types::String
  attribute :html_url,            Types::String
  attribute :followers_url,       Types::String
  attribute :following_url,       Types::String
  attribute :gists_url,           Types::String
  attribute :starred_url,         Types::String
  attribute :subscriptions_url,   Types::String
  attribute :organizations_url,   Types::String
  attribute :repos_url,           Types::String
  attribute :events_url,          Types::String
  attribute :received_events_url, Types::String
  attribute :owner_type,          Types::Type
  attribute :site_admin,          Types::Bool

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      login:               d.fetch("login"),
      id:                  d.fetch("id"),
      node_id:             d.fetch("node_id"),
      avatar_url:          d.fetch("avatar_url"),
      gravatar_id:         d.fetch("gravatar_id"),
      url:                 d.fetch("url"),
      html_url:            d.fetch("html_url"),
      followers_url:       d.fetch("followers_url"),
      following_url:       d.fetch("following_url"),
      gists_url:           d.fetch("gists_url"),
      starred_url:         d.fetch("starred_url"),
      subscriptions_url:   d.fetch("subscriptions_url"),
      organizations_url:   d.fetch("organizations_url"),
      repos_url:           d.fetch("repos_url"),
      events_url:          d.fetch("events_url"),
      received_events_url: d.fetch("received_events_url"),
      owner_type:          d.fetch("type"),
      site_admin:          d.fetch("site_admin"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "login"               => @login,
      "id"                  => @id,
      "node_id"             => @node_id,
      "avatar_url"          => @avatar_url,
      "gravatar_id"         => @gravatar_id,
      "url"                 => @url,
      "html_url"            => @html_url,
      "followers_url"       => @followers_url,
      "following_url"       => @following_url,
      "gists_url"           => @gists_url,
      "starred_url"         => @starred_url,
      "subscriptions_url"   => @subscriptions_url,
      "organizations_url"   => @organizations_url,
      "repos_url"           => @repos_url,
      "events_url"          => @events_url,
      "received_events_url" => @received_events_url,
      "type"                => @owner_type,
      "site_admin"          => @site_admin,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class Comment < Dry::Struct
  attribute :url,                    Types::String
  attribute :pull_request_review_id, Types::Int
  attribute :id,                     Types::Int
  attribute :node_id,                Types::String
  attribute :diff_hunk,              Types::String
  attribute :path,                   Types::String
  attribute :position,               Types::Int
  attribute :original_position,      Types::Int
  attribute :commit_id,              Types::String
  attribute :original_commit_id,     Types::String
  attribute :user,                   Owner
  attribute :body,                   Types::String
  attribute :created_at,             Types::String
  attribute :updated_at,             Types::String
  attribute :html_url,               Types::String
  attribute :pull_request_url,       Types::String
  attribute :author_association,     Types::String
  attribute :links,                  CommentLinks

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      url:                    d.fetch("url"),
      pull_request_review_id: d.fetch("pull_request_review_id"),
      id:                     d.fetch("id"),
      node_id:                d.fetch("node_id"),
      diff_hunk:              d.fetch("diff_hunk"),
      path:                   d.fetch("path"),
      position:               d.fetch("position"),
      original_position:      d.fetch("original_position"),
      commit_id:              d.fetch("commit_id"),
      original_commit_id:     d.fetch("original_commit_id"),
      user:                   Owner.from_dynamic!(d.fetch("user")),
      body:                   d.fetch("body"),
      created_at:             d.fetch("created_at"),
      updated_at:             d.fetch("updated_at"),
      html_url:               d.fetch("html_url"),
      pull_request_url:       d.fetch("pull_request_url"),
      author_association:     d.fetch("author_association"),
      links:                  CommentLinks.from_dynamic!(d.fetch("_links")),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "url"                    => @url,
      "pull_request_review_id" => @pull_request_review_id,
      "id"                     => @id,
      "node_id"                => @node_id,
      "diff_hunk"              => @diff_hunk,
      "path"                   => @path,
      "position"               => @position,
      "original_position"      => @original_position,
      "commit_id"              => @commit_id,
      "original_commit_id"     => @original_commit_id,
      "user"                   => @user.to_dynamic,
      "body"                   => @body,
      "created_at"             => @created_at,
      "updated_at"             => @updated_at,
      "html_url"               => @html_url,
      "pull_request_url"       => @pull_request_url,
      "author_association"     => @author_association,
      "_links"                 => @links.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class Author < Dry::Struct
  attribute :email,       Types::String
  attribute :author_name, Types::String

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      email:       d.fetch("email"),
      author_name: d.fetch("name"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "email" => @email,
      "name"  => @author_name,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class Commit < Dry::Struct
  attribute :sha,      Types::String
  attribute :author,   Author
  attribute :message,  Types::String
  attribute :distinct, Types::Bool
  attribute :url,      Types::String

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      sha:      d.fetch("sha"),
      author:   Author.from_dynamic!(d.fetch("author")),
      message:  d.fetch("message"),
      distinct: d.fetch("distinct"),
      url:      d.fetch("url"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "sha"      => @sha,
      "author"   => @author.to_dynamic,
      "message"  => @message,
      "distinct" => @distinct,
      "url"      => @url,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class License < Dry::Struct
  attribute :key,          Types::String
  attribute :license_name, Types::String
  attribute :spdx_id,      Types::String.optional
  attribute :url,          Types::String.optional
  attribute :node_id,      Types::String

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      key:          d.fetch("key"),
      license_name: d.fetch("name"),
      spdx_id:      d.fetch("spdx_id"),
      url:          d.fetch("url"),
      node_id:      d.fetch("node_id"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "key"     => @key,
      "name"    => @license_name,
      "spdx_id" => @spdx_id,
      "url"     => @url,
      "node_id" => @node_id,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class BaseRepo < Dry::Struct
  attribute :id,                Types::Int
  attribute :node_id,           Types::String
  attribute :repo_name,         Types::String
  attribute :full_name,         Types::String
  attribute :owner,             Owner
  attribute :private,           Types::Bool
  attribute :html_url,          Types::String
  attribute :description,       Types::String.optional
  attribute :repo_fork,         Types::Bool
  attribute :url,               Types::String
  attribute :forks_url,         Types::String
  attribute :keys_url,          Types::String
  attribute :collaborators_url, Types::String
  attribute :teams_url,         Types::String
  attribute :hooks_url,         Types::String
  attribute :issue_events_url,  Types::String
  attribute :events_url,        Types::String
  attribute :assignees_url,     Types::String
  attribute :branches_url,      Types::String
  attribute :tags_url,          Types::String
  attribute :blobs_url,         Types::String
  attribute :git_tags_url,      Types::String
  attribute :git_refs_url,      Types::String
  attribute :trees_url,         Types::String
  attribute :statuses_url,      Types::String
  attribute :languages_url,     Types::String
  attribute :stargazers_url,    Types::String
  attribute :contributors_url,  Types::String
  attribute :subscribers_url,   Types::String
  attribute :subscription_url,  Types::String
  attribute :commits_url,       Types::String
  attribute :git_commits_url,   Types::String
  attribute :comments_url,      Types::String
  attribute :issue_comment_url, Types::String
  attribute :contents_url,      Types::String
  attribute :compare_url,       Types::String
  attribute :merges_url,        Types::String
  attribute :archive_url,       Types::String
  attribute :downloads_url,     Types::String
  attribute :issues_url,        Types::String
  attribute :pulls_url,         Types::String
  attribute :milestones_url,    Types::String
  attribute :notifications_url, Types::String
  attribute :labels_url,        Types::String
  attribute :releases_url,      Types::String
  attribute :deployments_url,   Types::String
  attribute :created_at,        Types::String
  attribute :updated_at,        Types::String
  attribute :pushed_at,         Types::String
  attribute :git_url,           Types::String
  attribute :ssh_url,           Types::String
  attribute :clone_url,         Types::String
  attribute :svn_url,           Types::String
  attribute :homepage,          Types::String.optional
  attribute :size,              Types::Int
  attribute :stargazers_count,  Types::Int
  attribute :watchers_count,    Types::Int
  attribute :language,          Types::String
  attribute :has_issues,        Types::Bool
  attribute :has_projects,      Types::Bool
  attribute :has_downloads,     Types::Bool
  attribute :has_wiki,          Types::Bool
  attribute :has_pages,         Types::Bool
  attribute :forks_count,       Types::Int
  attribute :mirror_url,        Types::Nil
  attribute :archived,          Types::Bool
  attribute :open_issues_count, Types::Int
  attribute :license,           License.optional
  attribute :forks,             Types::Int
  attribute :open_issues,       Types::Int
  attribute :watchers,          Types::Int
  attribute :default_branch,    Types::String

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:                d.fetch("id"),
      node_id:           d.fetch("node_id"),
      repo_name:         d.fetch("name"),
      full_name:         d.fetch("full_name"),
      owner:             Owner.from_dynamic!(d.fetch("owner")),
      private:           d.fetch("private"),
      html_url:          d.fetch("html_url"),
      description:       d.fetch("description"),
      repo_fork:         d.fetch("fork"),
      url:               d.fetch("url"),
      forks_url:         d.fetch("forks_url"),
      keys_url:          d.fetch("keys_url"),
      collaborators_url: d.fetch("collaborators_url"),
      teams_url:         d.fetch("teams_url"),
      hooks_url:         d.fetch("hooks_url"),
      issue_events_url:  d.fetch("issue_events_url"),
      events_url:        d.fetch("events_url"),
      assignees_url:     d.fetch("assignees_url"),
      branches_url:      d.fetch("branches_url"),
      tags_url:          d.fetch("tags_url"),
      blobs_url:         d.fetch("blobs_url"),
      git_tags_url:      d.fetch("git_tags_url"),
      git_refs_url:      d.fetch("git_refs_url"),
      trees_url:         d.fetch("trees_url"),
      statuses_url:      d.fetch("statuses_url"),
      languages_url:     d.fetch("languages_url"),
      stargazers_url:    d.fetch("stargazers_url"),
      contributors_url:  d.fetch("contributors_url"),
      subscribers_url:   d.fetch("subscribers_url"),
      subscription_url:  d.fetch("subscription_url"),
      commits_url:       d.fetch("commits_url"),
      git_commits_url:   d.fetch("git_commits_url"),
      comments_url:      d.fetch("comments_url"),
      issue_comment_url: d.fetch("issue_comment_url"),
      contents_url:      d.fetch("contents_url"),
      compare_url:       d.fetch("compare_url"),
      merges_url:        d.fetch("merges_url"),
      archive_url:       d.fetch("archive_url"),
      downloads_url:     d.fetch("downloads_url"),
      issues_url:        d.fetch("issues_url"),
      pulls_url:         d.fetch("pulls_url"),
      milestones_url:    d.fetch("milestones_url"),
      notifications_url: d.fetch("notifications_url"),
      labels_url:        d.fetch("labels_url"),
      releases_url:      d.fetch("releases_url"),
      deployments_url:   d.fetch("deployments_url"),
      created_at:        d.fetch("created_at"),
      updated_at:        d.fetch("updated_at"),
      pushed_at:         d.fetch("pushed_at"),
      git_url:           d.fetch("git_url"),
      ssh_url:           d.fetch("ssh_url"),
      clone_url:         d.fetch("clone_url"),
      svn_url:           d.fetch("svn_url"),
      homepage:          d.fetch("homepage"),
      size:              d.fetch("size"),
      stargazers_count:  d.fetch("stargazers_count"),
      watchers_count:    d.fetch("watchers_count"),
      language:          d.fetch("language"),
      has_issues:        d.fetch("has_issues"),
      has_projects:      d.fetch("has_projects"),
      has_downloads:     d.fetch("has_downloads"),
      has_wiki:          d.fetch("has_wiki"),
      has_pages:         d.fetch("has_pages"),
      forks_count:       d.fetch("forks_count"),
      mirror_url:        d.fetch("mirror_url"),
      archived:          d.fetch("archived"),
      open_issues_count: d.fetch("open_issues_count"),
      license:           d.fetch("license") ? License.from_dynamic!(d.fetch("license")) : nil,
      forks:             d.fetch("forks"),
      open_issues:       d.fetch("open_issues"),
      watchers:          d.fetch("watchers"),
      default_branch:    d.fetch("default_branch"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"                => @id,
      "node_id"           => @node_id,
      "name"              => @repo_name,
      "full_name"         => @full_name,
      "owner"             => @owner.to_dynamic,
      "private"           => @private,
      "html_url"          => @html_url,
      "description"       => @description,
      "fork"              => @repo_fork,
      "url"               => @url,
      "forks_url"         => @forks_url,
      "keys_url"          => @keys_url,
      "collaborators_url" => @collaborators_url,
      "teams_url"         => @teams_url,
      "hooks_url"         => @hooks_url,
      "issue_events_url"  => @issue_events_url,
      "events_url"        => @events_url,
      "assignees_url"     => @assignees_url,
      "branches_url"      => @branches_url,
      "tags_url"          => @tags_url,
      "blobs_url"         => @blobs_url,
      "git_tags_url"      => @git_tags_url,
      "git_refs_url"      => @git_refs_url,
      "trees_url"         => @trees_url,
      "statuses_url"      => @statuses_url,
      "languages_url"     => @languages_url,
      "stargazers_url"    => @stargazers_url,
      "contributors_url"  => @contributors_url,
      "subscribers_url"   => @subscribers_url,
      "subscription_url"  => @subscription_url,
      "commits_url"       => @commits_url,
      "git_commits_url"   => @git_commits_url,
      "comments_url"      => @comments_url,
      "issue_comment_url" => @issue_comment_url,
      "contents_url"      => @contents_url,
      "compare_url"       => @compare_url,
      "merges_url"        => @merges_url,
      "archive_url"       => @archive_url,
      "downloads_url"     => @downloads_url,
      "issues_url"        => @issues_url,
      "pulls_url"         => @pulls_url,
      "milestones_url"    => @milestones_url,
      "notifications_url" => @notifications_url,
      "labels_url"        => @labels_url,
      "releases_url"      => @releases_url,
      "deployments_url"   => @deployments_url,
      "created_at"        => @created_at,
      "updated_at"        => @updated_at,
      "pushed_at"         => @pushed_at,
      "git_url"           => @git_url,
      "ssh_url"           => @ssh_url,
      "clone_url"         => @clone_url,
      "svn_url"           => @svn_url,
      "homepage"          => @homepage,
      "size"              => @size,
      "stargazers_count"  => @stargazers_count,
      "watchers_count"    => @watchers_count,
      "language"          => @language,
      "has_issues"        => @has_issues,
      "has_projects"      => @has_projects,
      "has_downloads"     => @has_downloads,
      "has_wiki"          => @has_wiki,
      "has_pages"         => @has_pages,
      "forks_count"       => @forks_count,
      "mirror_url"        => @mirror_url,
      "archived"          => @archived,
      "open_issues_count" => @open_issues_count,
      "license"           => @license&.to_dynamic,
      "forks"             => @forks,
      "open_issues"       => @open_issues,
      "watchers"          => @watchers,
      "default_branch"    => @default_branch,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class Base < Dry::Struct
  attribute :label, Types::String
  attribute :ref,   Types::String
  attribute :sha,   Types::String
  attribute :user,  Owner
  attribute :repo,  BaseRepo

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      label: d.fetch("label"),
      ref:   d.fetch("ref"),
      sha:   d.fetch("sha"),
      user:  Owner.from_dynamic!(d.fetch("user")),
      repo:  BaseRepo.from_dynamic!(d.fetch("repo")),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "label" => @label,
      "ref"   => @ref,
      "sha"   => @sha,
      "user"  => @user.to_dynamic,
      "repo"  => @repo.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PullRequestLinks < Dry::Struct
  attribute :self,            HTML
  attribute :html,            HTML
  attribute :issue,           HTML
  attribute :comments,        HTML
  attribute :review_comments, HTML
  attribute :review_comment,  HTML
  attribute :commits,         HTML
  attribute :statuses,        HTML

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      self:            HTML.from_dynamic!(d.fetch("self")),
      html:            HTML.from_dynamic!(d.fetch("html")),
      issue:           HTML.from_dynamic!(d.fetch("issue")),
      comments:        HTML.from_dynamic!(d.fetch("comments")),
      review_comments: HTML.from_dynamic!(d.fetch("review_comments")),
      review_comment:  HTML.from_dynamic!(d.fetch("review_comment")),
      commits:         HTML.from_dynamic!(d.fetch("commits")),
      statuses:        HTML.from_dynamic!(d.fetch("statuses")),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "self"            => @self.to_dynamic,
      "html"            => @html.to_dynamic,
      "issue"           => @issue.to_dynamic,
      "comments"        => @comments.to_dynamic,
      "review_comments" => @review_comments.to_dynamic,
      "review_comment"  => @review_comment.to_dynamic,
      "commits"         => @commits.to_dynamic,
      "statuses"        => @statuses.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class PullRequest < Dry::Struct
  attribute :url,                   Types::String
  attribute :id,                    Types::Int
  attribute :node_id,               Types::String
  attribute :html_url,              Types::String
  attribute :diff_url,              Types::String
  attribute :patch_url,             Types::String
  attribute :issue_url,             Types::String
  attribute :number,                Types::Int
  attribute :state,                 Types::String
  attribute :locked,                Types::Bool
  attribute :title,                 Types::String
  attribute :user,                  Owner
  attribute :body,                  Types::String.optional
  attribute :created_at,            Types::String
  attribute :updated_at,            Types::String
  attribute :closed_at,             Types::Nil
  attribute :merged_at,             Types::Nil
  attribute :merge_commit_sha,      Types::String.optional
  attribute :assignee,              Types::Nil
  attribute :assignees,             Types.Array(Types::Any)
  attribute :requested_reviewers,   Types.Array(Types::Any)
  attribute :requested_teams,       Types.Array(Types::Any)
  attribute :labels,                Types.Array(Types::Any)
  attribute :milestone,             Types::Nil
  attribute :commits_url,           Types::String
  attribute :review_comments_url,   Types::String
  attribute :review_comment_url,    Types::String
  attribute :comments_url,          Types::String
  attribute :statuses_url,          Types::String
  attribute :head,                  Base
  attribute :base,                  Base
  attribute :links,                 PullRequestLinks
  attribute :author_association,    Types::String
  attribute :merged,                Types::Bool.optional
  attribute :mergeable,             Types::Nil.optional
  attribute :rebaseable,            Types::Nil.optional
  attribute :mergeable_state,       Types::String.optional
  attribute :merged_by,             Types::Nil.optional
  attribute :comments,              Types::Int.optional
  attribute :review_comments,       Types::Int.optional
  attribute :maintainer_can_modify, Types::Bool.optional
  attribute :commits,               Types::Int.optional
  attribute :additions,             Types::Int.optional
  attribute :deletions,             Types::Int.optional
  attribute :changed_files,         Types::Int.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      url:                   d.fetch("url"),
      id:                    d.fetch("id"),
      node_id:               d.fetch("node_id"),
      html_url:              d.fetch("html_url"),
      diff_url:              d.fetch("diff_url"),
      patch_url:             d.fetch("patch_url"),
      issue_url:             d.fetch("issue_url"),
      number:                d.fetch("number"),
      state:                 d.fetch("state"),
      locked:                d.fetch("locked"),
      title:                 d.fetch("title"),
      user:                  Owner.from_dynamic!(d.fetch("user")),
      body:                  d.fetch("body"),
      created_at:            d.fetch("created_at"),
      updated_at:            d.fetch("updated_at"),
      closed_at:             d.fetch("closed_at"),
      merged_at:             d.fetch("merged_at"),
      merge_commit_sha:      d.fetch("merge_commit_sha"),
      assignee:              d.fetch("assignee"),
      assignees:             d.fetch("assignees"),
      requested_reviewers:   d.fetch("requested_reviewers"),
      requested_teams:       d.fetch("requested_teams"),
      labels:                d.fetch("labels"),
      milestone:             d.fetch("milestone"),
      commits_url:           d.fetch("commits_url"),
      review_comments_url:   d.fetch("review_comments_url"),
      review_comment_url:    d.fetch("review_comment_url"),
      comments_url:          d.fetch("comments_url"),
      statuses_url:          d.fetch("statuses_url"),
      head:                  Base.from_dynamic!(d.fetch("head")),
      base:                  Base.from_dynamic!(d.fetch("base")),
      links:                 PullRequestLinks.from_dynamic!(d.fetch("_links")),
      author_association:    d.fetch("author_association"),
      merged:                d["merged"],
      mergeable:             d["mergeable"],
      rebaseable:            d["rebaseable"],
      mergeable_state:       d["mergeable_state"],
      merged_by:             d["merged_by"],
      comments:              d["comments"],
      review_comments:       d["review_comments"],
      maintainer_can_modify: d["maintainer_can_modify"],
      commits:               d["commits"],
      additions:             d["additions"],
      deletions:             d["deletions"],
      changed_files:         d["changed_files"],
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "url"                   => @url,
      "id"                    => @id,
      "node_id"               => @node_id,
      "html_url"              => @html_url,
      "diff_url"              => @diff_url,
      "patch_url"             => @patch_url,
      "issue_url"             => @issue_url,
      "number"                => @number,
      "state"                 => @state,
      "locked"                => @locked,
      "title"                 => @title,
      "user"                  => @user.to_dynamic,
      "body"                  => @body,
      "created_at"            => @created_at,
      "updated_at"            => @updated_at,
      "closed_at"             => @closed_at,
      "merged_at"             => @merged_at,
      "merge_commit_sha"      => @merge_commit_sha,
      "assignee"              => @assignee,
      "assignees"             => @assignees,
      "requested_reviewers"   => @requested_reviewers,
      "requested_teams"       => @requested_teams,
      "labels"                => @labels,
      "milestone"             => @milestone,
      "commits_url"           => @commits_url,
      "review_comments_url"   => @review_comments_url,
      "review_comment_url"    => @review_comment_url,
      "comments_url"          => @comments_url,
      "statuses_url"          => @statuses_url,
      "head"                  => @head.to_dynamic,
      "base"                  => @base.to_dynamic,
      "_links"                => @links.to_dynamic,
      "author_association"    => @author_association,
      "merged"                => @merged,
      "mergeable"             => @mergeable,
      "rebaseable"            => @rebaseable,
      "mergeable_state"       => @mergeable_state,
      "merged_by"             => @merged_by,
      "comments"              => @comments,
      "review_comments"       => @review_comments,
      "maintainer_can_modify" => @maintainer_can_modify,
      "commits"               => @commits,
      "additions"             => @additions,
      "deletions"             => @deletions,
      "changed_files"         => @changed_files,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class Payload < Dry::Struct
  attribute :push_id,       Types::Int.optional
  attribute :size,          Types::Int.optional
  attribute :distinct_size, Types::Int.optional
  attribute :ref,           Types::String.optional.optional
  attribute :head,          Types::String.optional
  attribute :before,        Types::String.optional
  attribute :commits,       Types.Array(Commit).optional
  attribute :action,        Types::String.optional
  attribute :number,        Types::Int.optional
  attribute :pull_request,  PullRequest.optional
  attribute :ref_type,      Types::String.optional
  attribute :master_branch, Types::String.optional
  attribute :description,   Types::String.optional.optional
  attribute :pusher_type,   Types::String.optional
  attribute :comment,       Comment.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      push_id:       d["push_id"],
      size:          d["size"],
      distinct_size: d["distinct_size"],
      ref:           d["ref"],
      head:          d["head"],
      before:        d["before"],
      commits:       d["commits"]&.map { |x| Commit.from_dynamic!(x) },
      action:        d["action"],
      number:        d["number"],
      pull_request:  d["pull_request"] ? PullRequest.from_dynamic!(d["pull_request"]) : nil,
      ref_type:      d["ref_type"],
      master_branch: d["master_branch"],
      description:   d["description"],
      pusher_type:   d["pusher_type"],
      comment:       d["comment"] ? Comment.from_dynamic!(d["comment"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "push_id"       => @push_id,
      "size"          => @size,
      "distinct_size" => @distinct_size,
      "ref"           => @ref,
      "head"          => @head,
      "before"        => @before,
      "commits"       => @commits&.map { |x| x.to_dynamic },
      "action"        => @action,
      "number"        => @number,
      "pull_request"  => @pull_request&.to_dynamic,
      "ref_type"      => @ref_type,
      "master_branch" => @master_branch,
      "description"   => @description,
      "pusher_type"   => @pusher_type,
      "comment"       => @comment&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class EventRepo < Dry::Struct
  attribute :id,        Types::Int
  attribute :repo_name, Types::String
  attribute :url,       Types::String

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:        d.fetch("id"),
      repo_name: d.fetch("name"),
      url:       d.fetch("url"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"   => @id,
      "name" => @repo_name,
      "url"  => @url,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class Event < Dry::Struct
  attribute :id,         Types::String
  attribute :event_type, Types::String
  attribute :actor,      Actor
  attribute :repo,       EventRepo
  attribute :payload,    Payload
  attribute :public,     Types::Bool
  attribute :created_at, Types::String
  attribute :org,        Actor.optional

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      id:         d.fetch("id"),
      event_type: d.fetch("type"),
      actor:      Actor.from_dynamic!(d.fetch("actor")),
      repo:       EventRepo.from_dynamic!(d.fetch("repo")),
      payload:    Payload.from_dynamic!(d.fetch("payload")),
      public:     d.fetch("public"),
      created_at: d.fetch("created_at"),
      org:        d["org"] ? Actor.from_dynamic!(d["org"]) : nil,
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "id"         => @id,
      "type"       => @event_type,
      "actor"      => @actor.to_dynamic,
      "repo"       => @repo.to_dynamic,
      "payload"    => @payload.to_dynamic,
      "public"     => @public,
      "created_at" => @created_at,
      "org"        => @org&.to_dynamic,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class FileValue < Dry::Struct
  attribute :filename,  Types::String
  attribute :file_type, Types::String
  attribute :language,  Types::String.optional
  attribute :raw_url,   Types::String
  attribute :size,      Types::Int

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      filename:  d.fetch("filename"),
      file_type: d.fetch("type"),
      language:  d.fetch("language"),
      raw_url:   d.fetch("raw_url"),
      size:      d.fetch("size"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "filename" => @filename,
      "type"     => @file_type,
      "language" => @language,
      "raw_url"  => @raw_url,
      "size"     => @size,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class Gist < Dry::Struct
  attribute :url,          Types::String
  attribute :forks_url,    Types::String
  attribute :commits_url,  Types::String
  attribute :id,           Types::String
  attribute :node_id,      Types::String
  attribute :git_pull_url, Types::String
  attribute :git_push_url, Types::String
  attribute :html_url,     Types::String
  attribute :files,        Types::Hash.meta(of: FileValue)
  attribute :public,       Types::Bool
  attribute :created_at,   Types::String
  attribute :updated_at,   Types::String
  attribute :description,  Types::String.optional
  attribute :comments,     Types::Int
  attribute :user,         Types::Nil
  attribute :comments_url, Types::String
  attribute :owner,        Owner
  attribute :truncated,    Types::Bool

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      url:          d.fetch("url"),
      forks_url:    d.fetch("forks_url"),
      commits_url:  d.fetch("commits_url"),
      id:           d.fetch("id"),
      node_id:      d.fetch("node_id"),
      git_pull_url: d.fetch("git_pull_url"),
      git_push_url: d.fetch("git_push_url"),
      html_url:     d.fetch("html_url"),
      files:        Types::Hash[d.fetch("files")].map { |k, v| [k, FileValue.from_dynamic!(v)] }.to_h,
      public:       d.fetch("public"),
      created_at:   d.fetch("created_at"),
      updated_at:   d.fetch("updated_at"),
      description:  d.fetch("description"),
      comments:     d.fetch("comments"),
      user:         d.fetch("user"),
      comments_url: d.fetch("comments_url"),
      owner:        Owner.from_dynamic!(d.fetch("owner")),
      truncated:    d.fetch("truncated"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "url"          => @url,
      "forks_url"    => @forks_url,
      "commits_url"  => @commits_url,
      "id"           => @id,
      "node_id"      => @node_id,
      "git_pull_url" => @git_pull_url,
      "git_push_url" => @git_push_url,
      "html_url"     => @html_url,
      "files"        => @files.map { |k, v| [k, v.to_dynamic] }.to_h,
      "public"       => @public,
      "created_at"   => @created_at,
      "updated_at"   => @updated_at,
      "description"  => @description,
      "comments"     => @comments,
      "user"         => @user,
      "comments_url" => @comments_url,
      "owner"        => @owner.to_dynamic,
      "truncated"    => @truncated,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class Meta < Dry::Struct
  attribute :verifiable_password_authentication, Types::Bool
  attribute :github_services_sha,                Types::String
  attribute :hooks,                              Types.Array(Types::String)
  attribute :git,                                Types.Array(Types::String)
  attribute :pages,                              Types.Array(Types::String)
  attribute :importer,                           Types.Array(Types::String)

  def self.from_dynamic!(d)
    d = Types::Hash[d]
    new(
      verifiable_password_authentication: d.fetch("verifiable_password_authentication"),
      github_services_sha:                d.fetch("github_services_sha"),
      hooks:                              d.fetch("hooks"),
      git:                                d.fetch("git"),
      pages:                              d.fetch("pages"),
      importer:                           d.fetch("importer"),
    )
  end

  def self.from_json!(json)
    from_dynamic!(JSON.parse(json))
  end

  def to_dynamic
    {
      "verifiable_password_authentication" => @verifiable_password_authentication,
      "github_services_sha"                => @github_services_sha,
      "hooks"                              => @hooks,
      "git"                                => @git,
      "pages"                              => @pages,
      "importer"                           => @importer,
    }
  end

  def to_json(options = nil)
    JSON.generate(to_dynamic, options)
  end
end

class APIData
  def self.from_json!(json)
    Types::Hash[JSON.parse(json, quirks_mode: true)].map { |k, v| [k, Types::String[v]] }.to_h
  end
end

class Emojis
  def self.from_json!(json)
    Types::Hash[JSON.parse(json, quirks_mode: true)].map { |k, v| [k, Types::String[v]] }.to_h
  end
end

class Events
  def self.from_json!(json)
    events = JSON.parse(json, quirks_mode: true).map { |x| Event.from_dynamic!(x) }
    events.define_singleton_method(:to_json) do
      JSON.generate(self.map { |x| x.to_dynamic })
    end
    events
  end
end

class Gists
  def self.from_json!(json)
    gists = JSON.parse(json, quirks_mode: true).map { |x| Gist.from_dynamic!(x) }
    gists.define_singleton_method(:to_json) do
      JSON.generate(self.map { |x| x.to_dynamic })
    end
    gists
  end
end
