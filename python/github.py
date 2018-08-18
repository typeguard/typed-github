# This code parses date/times, so please
#
#     pip install python-dateutil
#
# To use this code, make sure you
#
#     import json
#
# and then, to convert JSON from a string, do
#
#     result = api_data_from_dict(json.loads(json_string))
#     result = emojis_from_dict(json.loads(json_string))
#     result = events_from_dict(json.loads(json_string))
#     result = gists_from_dict(json.loads(json_string))
#     result = meta_from_dict(json.loads(json_string))

from typing import Optional, Any, List, Dict, TypeVar, Type, cast, Callable
from enum import Enum
from datetime import datetime
import dateutil.parser


T = TypeVar("T")
EnumT = TypeVar("EnumT", bound=Enum)


def from_int(x: Any) -> int:
    assert isinstance(x, int) and not isinstance(x, bool)
    return x


def from_str(x: Any) -> str:
    assert isinstance(x, str)
    return x


def from_none(x: Any) -> Any:
    assert x is None
    return x


def from_union(fs, x):
    for f in fs:
        try:
            return f(x)
        except:
            pass
    assert False


def to_class(c: Type[T], x: Any) -> dict:
    assert isinstance(x, c)
    return cast(Any, x).to_dict()


def from_bool(x: Any) -> bool:
    assert isinstance(x, bool)
    return x


def to_enum(c: Type[EnumT], x: Any) -> EnumT:
    assert isinstance(x, c)
    return x.value


def from_datetime(x: Any) -> datetime:
    return dateutil.parser.parse(x)


def from_list(f: Callable[[Any], T], x: Any) -> List[T]:
    assert isinstance(x, list)
    return [f(y) for y in x]


def from_dict(f: Callable[[Any], T], x: Any) -> Dict[str, T]:
    assert isinstance(x, dict)
    return { k: f(v) for (k, v) in x.items() }


class Actor:
    id: int
    login: str
    display_login: Optional[str]
    gravatar_id: str
    url: str
    avatar_url: str

    def __init__(self, id: int, login: str, display_login: Optional[str], gravatar_id: str, url: str, avatar_url: str) -> None:
        self.id = id
        self.login = login
        self.display_login = display_login
        self.gravatar_id = gravatar_id
        self.url = url
        self.avatar_url = avatar_url

    @staticmethod
    def from_dict(obj: Any) -> 'Actor':
        assert isinstance(obj, dict)
        id = from_int(obj.get("id"))
        login = from_str(obj.get("login"))
        display_login = from_union([from_str, from_none], obj.get("display_login"))
        gravatar_id = from_str(obj.get("gravatar_id"))
        url = from_str(obj.get("url"))
        avatar_url = from_str(obj.get("avatar_url"))
        return Actor(id, login, display_login, gravatar_id, url, avatar_url)

    def to_dict(self) -> dict:
        result: dict = {}
        result["id"] = from_int(self.id)
        result["login"] = from_str(self.login)
        result["display_login"] = from_union([from_str, from_none], self.display_login)
        result["gravatar_id"] = from_str(self.gravatar_id)
        result["url"] = from_str(self.url)
        result["avatar_url"] = from_str(self.avatar_url)
        return result


class HTML:
    href: str

    def __init__(self, href: str) -> None:
        self.href = href

    @staticmethod
    def from_dict(obj: Any) -> 'HTML':
        assert isinstance(obj, dict)
        href = from_str(obj.get("href"))
        return HTML(href)

    def to_dict(self) -> dict:
        result: dict = {}
        result["href"] = from_str(self.href)
        return result


class CommentLinks:
    links_self: HTML
    html: HTML
    pull_request: HTML

    def __init__(self, links_self: HTML, html: HTML, pull_request: HTML) -> None:
        self.links_self = links_self
        self.html = html
        self.pull_request = pull_request

    @staticmethod
    def from_dict(obj: Any) -> 'CommentLinks':
        assert isinstance(obj, dict)
        links_self = HTML.from_dict(obj.get("self"))
        html = HTML.from_dict(obj.get("html"))
        pull_request = HTML.from_dict(obj.get("pull_request"))
        return CommentLinks(links_self, html, pull_request)

    def to_dict(self) -> dict:
        result: dict = {}
        result["self"] = to_class(HTML, self.links_self)
        result["html"] = to_class(HTML, self.html)
        result["pull_request"] = to_class(HTML, self.pull_request)
        return result


class TypeEnum(Enum):
    ORGANIZATION = "Organization"
    USER = "User"


class Owner:
    login: str
    id: int
    node_id: str
    avatar_url: str
    gravatar_id: str
    url: str
    html_url: str
    followers_url: str
    following_url: str
    gists_url: str
    starred_url: str
    subscriptions_url: str
    organizations_url: str
    repos_url: str
    events_url: str
    received_events_url: str
    type: TypeEnum
    site_admin: bool

    def __init__(self, login: str, id: int, node_id: str, avatar_url: str, gravatar_id: str, url: str, html_url: str, followers_url: str, following_url: str, gists_url: str, starred_url: str, subscriptions_url: str, organizations_url: str, repos_url: str, events_url: str, received_events_url: str, type: TypeEnum, site_admin: bool) -> None:
        self.login = login
        self.id = id
        self.node_id = node_id
        self.avatar_url = avatar_url
        self.gravatar_id = gravatar_id
        self.url = url
        self.html_url = html_url
        self.followers_url = followers_url
        self.following_url = following_url
        self.gists_url = gists_url
        self.starred_url = starred_url
        self.subscriptions_url = subscriptions_url
        self.organizations_url = organizations_url
        self.repos_url = repos_url
        self.events_url = events_url
        self.received_events_url = received_events_url
        self.type = type
        self.site_admin = site_admin

    @staticmethod
    def from_dict(obj: Any) -> 'Owner':
        assert isinstance(obj, dict)
        login = from_str(obj.get("login"))
        id = from_int(obj.get("id"))
        node_id = from_str(obj.get("node_id"))
        avatar_url = from_str(obj.get("avatar_url"))
        gravatar_id = from_str(obj.get("gravatar_id"))
        url = from_str(obj.get("url"))
        html_url = from_str(obj.get("html_url"))
        followers_url = from_str(obj.get("followers_url"))
        following_url = from_str(obj.get("following_url"))
        gists_url = from_str(obj.get("gists_url"))
        starred_url = from_str(obj.get("starred_url"))
        subscriptions_url = from_str(obj.get("subscriptions_url"))
        organizations_url = from_str(obj.get("organizations_url"))
        repos_url = from_str(obj.get("repos_url"))
        events_url = from_str(obj.get("events_url"))
        received_events_url = from_str(obj.get("received_events_url"))
        type = TypeEnum(obj.get("type"))
        site_admin = from_bool(obj.get("site_admin"))
        return Owner(login, id, node_id, avatar_url, gravatar_id, url, html_url, followers_url, following_url, gists_url, starred_url, subscriptions_url, organizations_url, repos_url, events_url, received_events_url, type, site_admin)

    def to_dict(self) -> dict:
        result: dict = {}
        result["login"] = from_str(self.login)
        result["id"] = from_int(self.id)
        result["node_id"] = from_str(self.node_id)
        result["avatar_url"] = from_str(self.avatar_url)
        result["gravatar_id"] = from_str(self.gravatar_id)
        result["url"] = from_str(self.url)
        result["html_url"] = from_str(self.html_url)
        result["followers_url"] = from_str(self.followers_url)
        result["following_url"] = from_str(self.following_url)
        result["gists_url"] = from_str(self.gists_url)
        result["starred_url"] = from_str(self.starred_url)
        result["subscriptions_url"] = from_str(self.subscriptions_url)
        result["organizations_url"] = from_str(self.organizations_url)
        result["repos_url"] = from_str(self.repos_url)
        result["events_url"] = from_str(self.events_url)
        result["received_events_url"] = from_str(self.received_events_url)
        result["type"] = to_enum(TypeEnum, self.type)
        result["site_admin"] = from_bool(self.site_admin)
        return result


class Comment:
    url: str
    pull_request_review_id: int
    id: int
    node_id: str
    diff_hunk: str
    path: str
    position: int
    original_position: int
    commit_id: str
    original_commit_id: str
    user: Owner
    body: str
    created_at: datetime
    updated_at: datetime
    html_url: str
    pull_request_url: str
    author_association: str
    links: CommentLinks

    def __init__(self, url: str, pull_request_review_id: int, id: int, node_id: str, diff_hunk: str, path: str, position: int, original_position: int, commit_id: str, original_commit_id: str, user: Owner, body: str, created_at: datetime, updated_at: datetime, html_url: str, pull_request_url: str, author_association: str, links: CommentLinks) -> None:
        self.url = url
        self.pull_request_review_id = pull_request_review_id
        self.id = id
        self.node_id = node_id
        self.diff_hunk = diff_hunk
        self.path = path
        self.position = position
        self.original_position = original_position
        self.commit_id = commit_id
        self.original_commit_id = original_commit_id
        self.user = user
        self.body = body
        self.created_at = created_at
        self.updated_at = updated_at
        self.html_url = html_url
        self.pull_request_url = pull_request_url
        self.author_association = author_association
        self.links = links

    @staticmethod
    def from_dict(obj: Any) -> 'Comment':
        assert isinstance(obj, dict)
        url = from_str(obj.get("url"))
        pull_request_review_id = from_int(obj.get("pull_request_review_id"))
        id = from_int(obj.get("id"))
        node_id = from_str(obj.get("node_id"))
        diff_hunk = from_str(obj.get("diff_hunk"))
        path = from_str(obj.get("path"))
        position = from_int(obj.get("position"))
        original_position = from_int(obj.get("original_position"))
        commit_id = from_str(obj.get("commit_id"))
        original_commit_id = from_str(obj.get("original_commit_id"))
        user = Owner.from_dict(obj.get("user"))
        body = from_str(obj.get("body"))
        created_at = from_datetime(obj.get("created_at"))
        updated_at = from_datetime(obj.get("updated_at"))
        html_url = from_str(obj.get("html_url"))
        pull_request_url = from_str(obj.get("pull_request_url"))
        author_association = from_str(obj.get("author_association"))
        links = CommentLinks.from_dict(obj.get("_links"))
        return Comment(url, pull_request_review_id, id, node_id, diff_hunk, path, position, original_position, commit_id, original_commit_id, user, body, created_at, updated_at, html_url, pull_request_url, author_association, links)

    def to_dict(self) -> dict:
        result: dict = {}
        result["url"] = from_str(self.url)
        result["pull_request_review_id"] = from_int(self.pull_request_review_id)
        result["id"] = from_int(self.id)
        result["node_id"] = from_str(self.node_id)
        result["diff_hunk"] = from_str(self.diff_hunk)
        result["path"] = from_str(self.path)
        result["position"] = from_int(self.position)
        result["original_position"] = from_int(self.original_position)
        result["commit_id"] = from_str(self.commit_id)
        result["original_commit_id"] = from_str(self.original_commit_id)
        result["user"] = to_class(Owner, self.user)
        result["body"] = from_str(self.body)
        result["created_at"] = self.created_at.isoformat()
        result["updated_at"] = self.updated_at.isoformat()
        result["html_url"] = from_str(self.html_url)
        result["pull_request_url"] = from_str(self.pull_request_url)
        result["author_association"] = from_str(self.author_association)
        result["_links"] = to_class(CommentLinks, self.links)
        return result


class Author:
    email: str
    name: str

    def __init__(self, email: str, name: str) -> None:
        self.email = email
        self.name = name

    @staticmethod
    def from_dict(obj: Any) -> 'Author':
        assert isinstance(obj, dict)
        email = from_str(obj.get("email"))
        name = from_str(obj.get("name"))
        return Author(email, name)

    def to_dict(self) -> dict:
        result: dict = {}
        result["email"] = from_str(self.email)
        result["name"] = from_str(self.name)
        return result


class Commit:
    sha: str
    author: Author
    message: str
    distinct: bool
    url: str

    def __init__(self, sha: str, author: Author, message: str, distinct: bool, url: str) -> None:
        self.sha = sha
        self.author = author
        self.message = message
        self.distinct = distinct
        self.url = url

    @staticmethod
    def from_dict(obj: Any) -> 'Commit':
        assert isinstance(obj, dict)
        sha = from_str(obj.get("sha"))
        author = Author.from_dict(obj.get("author"))
        message = from_str(obj.get("message"))
        distinct = from_bool(obj.get("distinct"))
        url = from_str(obj.get("url"))
        return Commit(sha, author, message, distinct, url)

    def to_dict(self) -> dict:
        result: dict = {}
        result["sha"] = from_str(self.sha)
        result["author"] = to_class(Author, self.author)
        result["message"] = from_str(self.message)
        result["distinct"] = from_bool(self.distinct)
        result["url"] = from_str(self.url)
        return result


class License:
    key: str
    name: str
    spdx_id: Optional[str]
    url: Optional[str]
    node_id: str

    def __init__(self, key: str, name: str, spdx_id: Optional[str], url: Optional[str], node_id: str) -> None:
        self.key = key
        self.name = name
        self.spdx_id = spdx_id
        self.url = url
        self.node_id = node_id

    @staticmethod
    def from_dict(obj: Any) -> 'License':
        assert isinstance(obj, dict)
        key = from_str(obj.get("key"))
        name = from_str(obj.get("name"))
        spdx_id = from_union([from_none, from_str], obj.get("spdx_id"))
        url = from_union([from_none, from_str], obj.get("url"))
        node_id = from_str(obj.get("node_id"))
        return License(key, name, spdx_id, url, node_id)

    def to_dict(self) -> dict:
        result: dict = {}
        result["key"] = from_str(self.key)
        result["name"] = from_str(self.name)
        result["spdx_id"] = from_union([from_none, from_str], self.spdx_id)
        result["url"] = from_union([from_none, from_str], self.url)
        result["node_id"] = from_str(self.node_id)
        return result


class BaseRepo:
    id: int
    node_id: str
    name: str
    full_name: str
    owner: Owner
    private: bool
    html_url: str
    description: Optional[str]
    fork: bool
    url: str
    forks_url: str
    keys_url: str
    collaborators_url: str
    teams_url: str
    hooks_url: str
    issue_events_url: str
    events_url: str
    assignees_url: str
    branches_url: str
    tags_url: str
    blobs_url: str
    git_tags_url: str
    git_refs_url: str
    trees_url: str
    statuses_url: str
    languages_url: str
    stargazers_url: str
    contributors_url: str
    subscribers_url: str
    subscription_url: str
    commits_url: str
    git_commits_url: str
    comments_url: str
    issue_comment_url: str
    contents_url: str
    compare_url: str
    merges_url: str
    archive_url: str
    downloads_url: str
    issues_url: str
    pulls_url: str
    milestones_url: str
    notifications_url: str
    labels_url: str
    releases_url: str
    deployments_url: str
    created_at: datetime
    updated_at: datetime
    pushed_at: datetime
    git_url: str
    ssh_url: str
    clone_url: str
    svn_url: str
    homepage: Optional[str]
    size: int
    stargazers_count: int
    watchers_count: int
    language: str
    has_issues: bool
    has_projects: bool
    has_downloads: bool
    has_wiki: bool
    has_pages: bool
    forks_count: int
    mirror_url: None
    archived: bool
    open_issues_count: int
    license: Optional[License]
    forks: int
    open_issues: int
    watchers: int
    default_branch: str

    def __init__(self, id: int, node_id: str, name: str, full_name: str, owner: Owner, private: bool, html_url: str, description: Optional[str], fork: bool, url: str, forks_url: str, keys_url: str, collaborators_url: str, teams_url: str, hooks_url: str, issue_events_url: str, events_url: str, assignees_url: str, branches_url: str, tags_url: str, blobs_url: str, git_tags_url: str, git_refs_url: str, trees_url: str, statuses_url: str, languages_url: str, stargazers_url: str, contributors_url: str, subscribers_url: str, subscription_url: str, commits_url: str, git_commits_url: str, comments_url: str, issue_comment_url: str, contents_url: str, compare_url: str, merges_url: str, archive_url: str, downloads_url: str, issues_url: str, pulls_url: str, milestones_url: str, notifications_url: str, labels_url: str, releases_url: str, deployments_url: str, created_at: datetime, updated_at: datetime, pushed_at: datetime, git_url: str, ssh_url: str, clone_url: str, svn_url: str, homepage: Optional[str], size: int, stargazers_count: int, watchers_count: int, language: str, has_issues: bool, has_projects: bool, has_downloads: bool, has_wiki: bool, has_pages: bool, forks_count: int, mirror_url: None, archived: bool, open_issues_count: int, license: Optional[License], forks: int, open_issues: int, watchers: int, default_branch: str) -> None:
        self.id = id
        self.node_id = node_id
        self.name = name
        self.full_name = full_name
        self.owner = owner
        self.private = private
        self.html_url = html_url
        self.description = description
        self.fork = fork
        self.url = url
        self.forks_url = forks_url
        self.keys_url = keys_url
        self.collaborators_url = collaborators_url
        self.teams_url = teams_url
        self.hooks_url = hooks_url
        self.issue_events_url = issue_events_url
        self.events_url = events_url
        self.assignees_url = assignees_url
        self.branches_url = branches_url
        self.tags_url = tags_url
        self.blobs_url = blobs_url
        self.git_tags_url = git_tags_url
        self.git_refs_url = git_refs_url
        self.trees_url = trees_url
        self.statuses_url = statuses_url
        self.languages_url = languages_url
        self.stargazers_url = stargazers_url
        self.contributors_url = contributors_url
        self.subscribers_url = subscribers_url
        self.subscription_url = subscription_url
        self.commits_url = commits_url
        self.git_commits_url = git_commits_url
        self.comments_url = comments_url
        self.issue_comment_url = issue_comment_url
        self.contents_url = contents_url
        self.compare_url = compare_url
        self.merges_url = merges_url
        self.archive_url = archive_url
        self.downloads_url = downloads_url
        self.issues_url = issues_url
        self.pulls_url = pulls_url
        self.milestones_url = milestones_url
        self.notifications_url = notifications_url
        self.labels_url = labels_url
        self.releases_url = releases_url
        self.deployments_url = deployments_url
        self.created_at = created_at
        self.updated_at = updated_at
        self.pushed_at = pushed_at
        self.git_url = git_url
        self.ssh_url = ssh_url
        self.clone_url = clone_url
        self.svn_url = svn_url
        self.homepage = homepage
        self.size = size
        self.stargazers_count = stargazers_count
        self.watchers_count = watchers_count
        self.language = language
        self.has_issues = has_issues
        self.has_projects = has_projects
        self.has_downloads = has_downloads
        self.has_wiki = has_wiki
        self.has_pages = has_pages
        self.forks_count = forks_count
        self.mirror_url = mirror_url
        self.archived = archived
        self.open_issues_count = open_issues_count
        self.license = license
        self.forks = forks
        self.open_issues = open_issues
        self.watchers = watchers
        self.default_branch = default_branch

    @staticmethod
    def from_dict(obj: Any) -> 'BaseRepo':
        assert isinstance(obj, dict)
        id = from_int(obj.get("id"))
        node_id = from_str(obj.get("node_id"))
        name = from_str(obj.get("name"))
        full_name = from_str(obj.get("full_name"))
        owner = Owner.from_dict(obj.get("owner"))
        private = from_bool(obj.get("private"))
        html_url = from_str(obj.get("html_url"))
        description = from_union([from_none, from_str], obj.get("description"))
        fork = from_bool(obj.get("fork"))
        url = from_str(obj.get("url"))
        forks_url = from_str(obj.get("forks_url"))
        keys_url = from_str(obj.get("keys_url"))
        collaborators_url = from_str(obj.get("collaborators_url"))
        teams_url = from_str(obj.get("teams_url"))
        hooks_url = from_str(obj.get("hooks_url"))
        issue_events_url = from_str(obj.get("issue_events_url"))
        events_url = from_str(obj.get("events_url"))
        assignees_url = from_str(obj.get("assignees_url"))
        branches_url = from_str(obj.get("branches_url"))
        tags_url = from_str(obj.get("tags_url"))
        blobs_url = from_str(obj.get("blobs_url"))
        git_tags_url = from_str(obj.get("git_tags_url"))
        git_refs_url = from_str(obj.get("git_refs_url"))
        trees_url = from_str(obj.get("trees_url"))
        statuses_url = from_str(obj.get("statuses_url"))
        languages_url = from_str(obj.get("languages_url"))
        stargazers_url = from_str(obj.get("stargazers_url"))
        contributors_url = from_str(obj.get("contributors_url"))
        subscribers_url = from_str(obj.get("subscribers_url"))
        subscription_url = from_str(obj.get("subscription_url"))
        commits_url = from_str(obj.get("commits_url"))
        git_commits_url = from_str(obj.get("git_commits_url"))
        comments_url = from_str(obj.get("comments_url"))
        issue_comment_url = from_str(obj.get("issue_comment_url"))
        contents_url = from_str(obj.get("contents_url"))
        compare_url = from_str(obj.get("compare_url"))
        merges_url = from_str(obj.get("merges_url"))
        archive_url = from_str(obj.get("archive_url"))
        downloads_url = from_str(obj.get("downloads_url"))
        issues_url = from_str(obj.get("issues_url"))
        pulls_url = from_str(obj.get("pulls_url"))
        milestones_url = from_str(obj.get("milestones_url"))
        notifications_url = from_str(obj.get("notifications_url"))
        labels_url = from_str(obj.get("labels_url"))
        releases_url = from_str(obj.get("releases_url"))
        deployments_url = from_str(obj.get("deployments_url"))
        created_at = from_datetime(obj.get("created_at"))
        updated_at = from_datetime(obj.get("updated_at"))
        pushed_at = from_datetime(obj.get("pushed_at"))
        git_url = from_str(obj.get("git_url"))
        ssh_url = from_str(obj.get("ssh_url"))
        clone_url = from_str(obj.get("clone_url"))
        svn_url = from_str(obj.get("svn_url"))
        homepage = from_union([from_none, from_str], obj.get("homepage"))
        size = from_int(obj.get("size"))
        stargazers_count = from_int(obj.get("stargazers_count"))
        watchers_count = from_int(obj.get("watchers_count"))
        language = from_str(obj.get("language"))
        has_issues = from_bool(obj.get("has_issues"))
        has_projects = from_bool(obj.get("has_projects"))
        has_downloads = from_bool(obj.get("has_downloads"))
        has_wiki = from_bool(obj.get("has_wiki"))
        has_pages = from_bool(obj.get("has_pages"))
        forks_count = from_int(obj.get("forks_count"))
        mirror_url = from_none(obj.get("mirror_url"))
        archived = from_bool(obj.get("archived"))
        open_issues_count = from_int(obj.get("open_issues_count"))
        license = from_union([License.from_dict, from_none], obj.get("license"))
        forks = from_int(obj.get("forks"))
        open_issues = from_int(obj.get("open_issues"))
        watchers = from_int(obj.get("watchers"))
        default_branch = from_str(obj.get("default_branch"))
        return BaseRepo(id, node_id, name, full_name, owner, private, html_url, description, fork, url, forks_url, keys_url, collaborators_url, teams_url, hooks_url, issue_events_url, events_url, assignees_url, branches_url, tags_url, blobs_url, git_tags_url, git_refs_url, trees_url, statuses_url, languages_url, stargazers_url, contributors_url, subscribers_url, subscription_url, commits_url, git_commits_url, comments_url, issue_comment_url, contents_url, compare_url, merges_url, archive_url, downloads_url, issues_url, pulls_url, milestones_url, notifications_url, labels_url, releases_url, deployments_url, created_at, updated_at, pushed_at, git_url, ssh_url, clone_url, svn_url, homepage, size, stargazers_count, watchers_count, language, has_issues, has_projects, has_downloads, has_wiki, has_pages, forks_count, mirror_url, archived, open_issues_count, license, forks, open_issues, watchers, default_branch)

    def to_dict(self) -> dict:
        result: dict = {}
        result["id"] = from_int(self.id)
        result["node_id"] = from_str(self.node_id)
        result["name"] = from_str(self.name)
        result["full_name"] = from_str(self.full_name)
        result["owner"] = to_class(Owner, self.owner)
        result["private"] = from_bool(self.private)
        result["html_url"] = from_str(self.html_url)
        result["description"] = from_union([from_none, from_str], self.description)
        result["fork"] = from_bool(self.fork)
        result["url"] = from_str(self.url)
        result["forks_url"] = from_str(self.forks_url)
        result["keys_url"] = from_str(self.keys_url)
        result["collaborators_url"] = from_str(self.collaborators_url)
        result["teams_url"] = from_str(self.teams_url)
        result["hooks_url"] = from_str(self.hooks_url)
        result["issue_events_url"] = from_str(self.issue_events_url)
        result["events_url"] = from_str(self.events_url)
        result["assignees_url"] = from_str(self.assignees_url)
        result["branches_url"] = from_str(self.branches_url)
        result["tags_url"] = from_str(self.tags_url)
        result["blobs_url"] = from_str(self.blobs_url)
        result["git_tags_url"] = from_str(self.git_tags_url)
        result["git_refs_url"] = from_str(self.git_refs_url)
        result["trees_url"] = from_str(self.trees_url)
        result["statuses_url"] = from_str(self.statuses_url)
        result["languages_url"] = from_str(self.languages_url)
        result["stargazers_url"] = from_str(self.stargazers_url)
        result["contributors_url"] = from_str(self.contributors_url)
        result["subscribers_url"] = from_str(self.subscribers_url)
        result["subscription_url"] = from_str(self.subscription_url)
        result["commits_url"] = from_str(self.commits_url)
        result["git_commits_url"] = from_str(self.git_commits_url)
        result["comments_url"] = from_str(self.comments_url)
        result["issue_comment_url"] = from_str(self.issue_comment_url)
        result["contents_url"] = from_str(self.contents_url)
        result["compare_url"] = from_str(self.compare_url)
        result["merges_url"] = from_str(self.merges_url)
        result["archive_url"] = from_str(self.archive_url)
        result["downloads_url"] = from_str(self.downloads_url)
        result["issues_url"] = from_str(self.issues_url)
        result["pulls_url"] = from_str(self.pulls_url)
        result["milestones_url"] = from_str(self.milestones_url)
        result["notifications_url"] = from_str(self.notifications_url)
        result["labels_url"] = from_str(self.labels_url)
        result["releases_url"] = from_str(self.releases_url)
        result["deployments_url"] = from_str(self.deployments_url)
        result["created_at"] = self.created_at.isoformat()
        result["updated_at"] = self.updated_at.isoformat()
        result["pushed_at"] = self.pushed_at.isoformat()
        result["git_url"] = from_str(self.git_url)
        result["ssh_url"] = from_str(self.ssh_url)
        result["clone_url"] = from_str(self.clone_url)
        result["svn_url"] = from_str(self.svn_url)
        result["homepage"] = from_union([from_none, from_str], self.homepage)
        result["size"] = from_int(self.size)
        result["stargazers_count"] = from_int(self.stargazers_count)
        result["watchers_count"] = from_int(self.watchers_count)
        result["language"] = from_str(self.language)
        result["has_issues"] = from_bool(self.has_issues)
        result["has_projects"] = from_bool(self.has_projects)
        result["has_downloads"] = from_bool(self.has_downloads)
        result["has_wiki"] = from_bool(self.has_wiki)
        result["has_pages"] = from_bool(self.has_pages)
        result["forks_count"] = from_int(self.forks_count)
        result["mirror_url"] = from_none(self.mirror_url)
        result["archived"] = from_bool(self.archived)
        result["open_issues_count"] = from_int(self.open_issues_count)
        result["license"] = from_union([lambda x: to_class(License, x), from_none], self.license)
        result["forks"] = from_int(self.forks)
        result["open_issues"] = from_int(self.open_issues)
        result["watchers"] = from_int(self.watchers)
        result["default_branch"] = from_str(self.default_branch)
        return result


class Base:
    label: str
    ref: str
    sha: str
    user: Owner
    repo: BaseRepo

    def __init__(self, label: str, ref: str, sha: str, user: Owner, repo: BaseRepo) -> None:
        self.label = label
        self.ref = ref
        self.sha = sha
        self.user = user
        self.repo = repo

    @staticmethod
    def from_dict(obj: Any) -> 'Base':
        assert isinstance(obj, dict)
        label = from_str(obj.get("label"))
        ref = from_str(obj.get("ref"))
        sha = from_str(obj.get("sha"))
        user = Owner.from_dict(obj.get("user"))
        repo = BaseRepo.from_dict(obj.get("repo"))
        return Base(label, ref, sha, user, repo)

    def to_dict(self) -> dict:
        result: dict = {}
        result["label"] = from_str(self.label)
        result["ref"] = from_str(self.ref)
        result["sha"] = from_str(self.sha)
        result["user"] = to_class(Owner, self.user)
        result["repo"] = to_class(BaseRepo, self.repo)
        return result


class PullRequestLinks:
    links_self: HTML
    html: HTML
    issue: HTML
    comments: HTML
    review_comments: HTML
    review_comment: HTML
    commits: HTML
    statuses: HTML

    def __init__(self, links_self: HTML, html: HTML, issue: HTML, comments: HTML, review_comments: HTML, review_comment: HTML, commits: HTML, statuses: HTML) -> None:
        self.links_self = links_self
        self.html = html
        self.issue = issue
        self.comments = comments
        self.review_comments = review_comments
        self.review_comment = review_comment
        self.commits = commits
        self.statuses = statuses

    @staticmethod
    def from_dict(obj: Any) -> 'PullRequestLinks':
        assert isinstance(obj, dict)
        links_self = HTML.from_dict(obj.get("self"))
        html = HTML.from_dict(obj.get("html"))
        issue = HTML.from_dict(obj.get("issue"))
        comments = HTML.from_dict(obj.get("comments"))
        review_comments = HTML.from_dict(obj.get("review_comments"))
        review_comment = HTML.from_dict(obj.get("review_comment"))
        commits = HTML.from_dict(obj.get("commits"))
        statuses = HTML.from_dict(obj.get("statuses"))
        return PullRequestLinks(links_self, html, issue, comments, review_comments, review_comment, commits, statuses)

    def to_dict(self) -> dict:
        result: dict = {}
        result["self"] = to_class(HTML, self.links_self)
        result["html"] = to_class(HTML, self.html)
        result["issue"] = to_class(HTML, self.issue)
        result["comments"] = to_class(HTML, self.comments)
        result["review_comments"] = to_class(HTML, self.review_comments)
        result["review_comment"] = to_class(HTML, self.review_comment)
        result["commits"] = to_class(HTML, self.commits)
        result["statuses"] = to_class(HTML, self.statuses)
        return result


class PullRequest:
    url: str
    id: int
    node_id: str
    html_url: str
    diff_url: str
    patch_url: str
    issue_url: str
    number: int
    state: str
    locked: bool
    title: str
    user: Owner
    body: Optional[str]
    created_at: datetime
    updated_at: datetime
    closed_at: None
    merged_at: None
    merge_commit_sha: Optional[str]
    assignee: None
    assignees: List[Any]
    requested_reviewers: List[Any]
    requested_teams: List[Any]
    labels: List[Any]
    milestone: None
    commits_url: str
    review_comments_url: str
    review_comment_url: str
    comments_url: str
    statuses_url: str
    head: Base
    base: Base
    links: PullRequestLinks
    author_association: str
    merged: Optional[bool]
    mergeable: None
    rebaseable: None
    mergeable_state: Optional[str]
    merged_by: None
    comments: Optional[int]
    review_comments: Optional[int]
    maintainer_can_modify: Optional[bool]
    commits: Optional[int]
    additions: Optional[int]
    deletions: Optional[int]
    changed_files: Optional[int]

    def __init__(self, url: str, id: int, node_id: str, html_url: str, diff_url: str, patch_url: str, issue_url: str, number: int, state: str, locked: bool, title: str, user: Owner, body: Optional[str], created_at: datetime, updated_at: datetime, closed_at: None, merged_at: None, merge_commit_sha: Optional[str], assignee: None, assignees: List[Any], requested_reviewers: List[Any], requested_teams: List[Any], labels: List[Any], milestone: None, commits_url: str, review_comments_url: str, review_comment_url: str, comments_url: str, statuses_url: str, head: Base, base: Base, links: PullRequestLinks, author_association: str, merged: Optional[bool], mergeable: None, rebaseable: None, mergeable_state: Optional[str], merged_by: None, comments: Optional[int], review_comments: Optional[int], maintainer_can_modify: Optional[bool], commits: Optional[int], additions: Optional[int], deletions: Optional[int], changed_files: Optional[int]) -> None:
        self.url = url
        self.id = id
        self.node_id = node_id
        self.html_url = html_url
        self.diff_url = diff_url
        self.patch_url = patch_url
        self.issue_url = issue_url
        self.number = number
        self.state = state
        self.locked = locked
        self.title = title
        self.user = user
        self.body = body
        self.created_at = created_at
        self.updated_at = updated_at
        self.closed_at = closed_at
        self.merged_at = merged_at
        self.merge_commit_sha = merge_commit_sha
        self.assignee = assignee
        self.assignees = assignees
        self.requested_reviewers = requested_reviewers
        self.requested_teams = requested_teams
        self.labels = labels
        self.milestone = milestone
        self.commits_url = commits_url
        self.review_comments_url = review_comments_url
        self.review_comment_url = review_comment_url
        self.comments_url = comments_url
        self.statuses_url = statuses_url
        self.head = head
        self.base = base
        self.links = links
        self.author_association = author_association
        self.merged = merged
        self.mergeable = mergeable
        self.rebaseable = rebaseable
        self.mergeable_state = mergeable_state
        self.merged_by = merged_by
        self.comments = comments
        self.review_comments = review_comments
        self.maintainer_can_modify = maintainer_can_modify
        self.commits = commits
        self.additions = additions
        self.deletions = deletions
        self.changed_files = changed_files

    @staticmethod
    def from_dict(obj: Any) -> 'PullRequest':
        assert isinstance(obj, dict)
        url = from_str(obj.get("url"))
        id = from_int(obj.get("id"))
        node_id = from_str(obj.get("node_id"))
        html_url = from_str(obj.get("html_url"))
        diff_url = from_str(obj.get("diff_url"))
        patch_url = from_str(obj.get("patch_url"))
        issue_url = from_str(obj.get("issue_url"))
        number = from_int(obj.get("number"))
        state = from_str(obj.get("state"))
        locked = from_bool(obj.get("locked"))
        title = from_str(obj.get("title"))
        user = Owner.from_dict(obj.get("user"))
        body = from_union([from_none, from_str], obj.get("body"))
        created_at = from_datetime(obj.get("created_at"))
        updated_at = from_datetime(obj.get("updated_at"))
        closed_at = from_none(obj.get("closed_at"))
        merged_at = from_none(obj.get("merged_at"))
        merge_commit_sha = from_union([from_none, from_str], obj.get("merge_commit_sha"))
        assignee = from_none(obj.get("assignee"))
        assignees = from_list(lambda x: x, obj.get("assignees"))
        requested_reviewers = from_list(lambda x: x, obj.get("requested_reviewers"))
        requested_teams = from_list(lambda x: x, obj.get("requested_teams"))
        labels = from_list(lambda x: x, obj.get("labels"))
        milestone = from_none(obj.get("milestone"))
        commits_url = from_str(obj.get("commits_url"))
        review_comments_url = from_str(obj.get("review_comments_url"))
        review_comment_url = from_str(obj.get("review_comment_url"))
        comments_url = from_str(obj.get("comments_url"))
        statuses_url = from_str(obj.get("statuses_url"))
        head = Base.from_dict(obj.get("head"))
        base = Base.from_dict(obj.get("base"))
        links = PullRequestLinks.from_dict(obj.get("_links"))
        author_association = from_str(obj.get("author_association"))
        merged = from_union([from_bool, from_none], obj.get("merged"))
        mergeable = from_none(obj.get("mergeable"))
        rebaseable = from_none(obj.get("rebaseable"))
        mergeable_state = from_union([from_str, from_none], obj.get("mergeable_state"))
        merged_by = from_none(obj.get("merged_by"))
        comments = from_union([from_int, from_none], obj.get("comments"))
        review_comments = from_union([from_int, from_none], obj.get("review_comments"))
        maintainer_can_modify = from_union([from_bool, from_none], obj.get("maintainer_can_modify"))
        commits = from_union([from_int, from_none], obj.get("commits"))
        additions = from_union([from_int, from_none], obj.get("additions"))
        deletions = from_union([from_int, from_none], obj.get("deletions"))
        changed_files = from_union([from_int, from_none], obj.get("changed_files"))
        return PullRequest(url, id, node_id, html_url, diff_url, patch_url, issue_url, number, state, locked, title, user, body, created_at, updated_at, closed_at, merged_at, merge_commit_sha, assignee, assignees, requested_reviewers, requested_teams, labels, milestone, commits_url, review_comments_url, review_comment_url, comments_url, statuses_url, head, base, links, author_association, merged, mergeable, rebaseable, mergeable_state, merged_by, comments, review_comments, maintainer_can_modify, commits, additions, deletions, changed_files)

    def to_dict(self) -> dict:
        result: dict = {}
        result["url"] = from_str(self.url)
        result["id"] = from_int(self.id)
        result["node_id"] = from_str(self.node_id)
        result["html_url"] = from_str(self.html_url)
        result["diff_url"] = from_str(self.diff_url)
        result["patch_url"] = from_str(self.patch_url)
        result["issue_url"] = from_str(self.issue_url)
        result["number"] = from_int(self.number)
        result["state"] = from_str(self.state)
        result["locked"] = from_bool(self.locked)
        result["title"] = from_str(self.title)
        result["user"] = to_class(Owner, self.user)
        result["body"] = from_union([from_none, from_str], self.body)
        result["created_at"] = self.created_at.isoformat()
        result["updated_at"] = self.updated_at.isoformat()
        result["closed_at"] = from_none(self.closed_at)
        result["merged_at"] = from_none(self.merged_at)
        result["merge_commit_sha"] = from_union([from_none, from_str], self.merge_commit_sha)
        result["assignee"] = from_none(self.assignee)
        result["assignees"] = from_list(lambda x: x, self.assignees)
        result["requested_reviewers"] = from_list(lambda x: x, self.requested_reviewers)
        result["requested_teams"] = from_list(lambda x: x, self.requested_teams)
        result["labels"] = from_list(lambda x: x, self.labels)
        result["milestone"] = from_none(self.milestone)
        result["commits_url"] = from_str(self.commits_url)
        result["review_comments_url"] = from_str(self.review_comments_url)
        result["review_comment_url"] = from_str(self.review_comment_url)
        result["comments_url"] = from_str(self.comments_url)
        result["statuses_url"] = from_str(self.statuses_url)
        result["head"] = to_class(Base, self.head)
        result["base"] = to_class(Base, self.base)
        result["_links"] = to_class(PullRequestLinks, self.links)
        result["author_association"] = from_str(self.author_association)
        result["merged"] = from_union([from_bool, from_none], self.merged)
        result["mergeable"] = from_none(self.mergeable)
        result["rebaseable"] = from_none(self.rebaseable)
        result["mergeable_state"] = from_union([from_str, from_none], self.mergeable_state)
        result["merged_by"] = from_none(self.merged_by)
        result["comments"] = from_union([from_int, from_none], self.comments)
        result["review_comments"] = from_union([from_int, from_none], self.review_comments)
        result["maintainer_can_modify"] = from_union([from_bool, from_none], self.maintainer_can_modify)
        result["commits"] = from_union([from_int, from_none], self.commits)
        result["additions"] = from_union([from_int, from_none], self.additions)
        result["deletions"] = from_union([from_int, from_none], self.deletions)
        result["changed_files"] = from_union([from_int, from_none], self.changed_files)
        return result


class Payload:
    push_id: Optional[int]
    size: Optional[int]
    distinct_size: Optional[int]
    ref: Optional[str]
    head: Optional[str]
    before: Optional[str]
    commits: Optional[List[Commit]]
    action: Optional[str]
    number: Optional[int]
    pull_request: Optional[PullRequest]
    ref_type: Optional[str]
    master_branch: Optional[str]
    description: Optional[str]
    pusher_type: Optional[str]
    comment: Optional[Comment]

    def __init__(self, push_id: Optional[int], size: Optional[int], distinct_size: Optional[int], ref: Optional[str], head: Optional[str], before: Optional[str], commits: Optional[List[Commit]], action: Optional[str], number: Optional[int], pull_request: Optional[PullRequest], ref_type: Optional[str], master_branch: Optional[str], description: Optional[str], pusher_type: Optional[str], comment: Optional[Comment]) -> None:
        self.push_id = push_id
        self.size = size
        self.distinct_size = distinct_size
        self.ref = ref
        self.head = head
        self.before = before
        self.commits = commits
        self.action = action
        self.number = number
        self.pull_request = pull_request
        self.ref_type = ref_type
        self.master_branch = master_branch
        self.description = description
        self.pusher_type = pusher_type
        self.comment = comment

    @staticmethod
    def from_dict(obj: Any) -> 'Payload':
        assert isinstance(obj, dict)
        push_id = from_union([from_int, from_none], obj.get("push_id"))
        size = from_union([from_int, from_none], obj.get("size"))
        distinct_size = from_union([from_int, from_none], obj.get("distinct_size"))
        ref = from_union([from_none, from_str], obj.get("ref"))
        head = from_union([from_str, from_none], obj.get("head"))
        before = from_union([from_str, from_none], obj.get("before"))
        commits = from_union([lambda x: from_list(Commit.from_dict, x), from_none], obj.get("commits"))
        action = from_union([from_str, from_none], obj.get("action"))
        number = from_union([from_int, from_none], obj.get("number"))
        pull_request = from_union([PullRequest.from_dict, from_none], obj.get("pull_request"))
        ref_type = from_union([from_str, from_none], obj.get("ref_type"))
        master_branch = from_union([from_str, from_none], obj.get("master_branch"))
        description = from_union([from_none, from_str], obj.get("description"))
        pusher_type = from_union([from_str, from_none], obj.get("pusher_type"))
        comment = from_union([Comment.from_dict, from_none], obj.get("comment"))
        return Payload(push_id, size, distinct_size, ref, head, before, commits, action, number, pull_request, ref_type, master_branch, description, pusher_type, comment)

    def to_dict(self) -> dict:
        result: dict = {}
        result["push_id"] = from_union([from_int, from_none], self.push_id)
        result["size"] = from_union([from_int, from_none], self.size)
        result["distinct_size"] = from_union([from_int, from_none], self.distinct_size)
        result["ref"] = from_union([from_none, from_str], self.ref)
        result["head"] = from_union([from_str, from_none], self.head)
        result["before"] = from_union([from_str, from_none], self.before)
        result["commits"] = from_union([lambda x: from_list(lambda x: to_class(Commit, x), x), from_none], self.commits)
        result["action"] = from_union([from_str, from_none], self.action)
        result["number"] = from_union([from_int, from_none], self.number)
        result["pull_request"] = from_union([lambda x: to_class(PullRequest, x), from_none], self.pull_request)
        result["ref_type"] = from_union([from_str, from_none], self.ref_type)
        result["master_branch"] = from_union([from_str, from_none], self.master_branch)
        result["description"] = from_union([from_none, from_str], self.description)
        result["pusher_type"] = from_union([from_str, from_none], self.pusher_type)
        result["comment"] = from_union([lambda x: to_class(Comment, x), from_none], self.comment)
        return result


class EventRepo:
    id: int
    name: str
    url: str

    def __init__(self, id: int, name: str, url: str) -> None:
        self.id = id
        self.name = name
        self.url = url

    @staticmethod
    def from_dict(obj: Any) -> 'EventRepo':
        assert isinstance(obj, dict)
        id = from_int(obj.get("id"))
        name = from_str(obj.get("name"))
        url = from_str(obj.get("url"))
        return EventRepo(id, name, url)

    def to_dict(self) -> dict:
        result: dict = {}
        result["id"] = from_int(self.id)
        result["name"] = from_str(self.name)
        result["url"] = from_str(self.url)
        return result


class Event:
    id: str
    type: str
    actor: Actor
    repo: EventRepo
    payload: Payload
    public: bool
    created_at: datetime
    org: Optional[Actor]

    def __init__(self, id: str, type: str, actor: Actor, repo: EventRepo, payload: Payload, public: bool, created_at: datetime, org: Optional[Actor]) -> None:
        self.id = id
        self.type = type
        self.actor = actor
        self.repo = repo
        self.payload = payload
        self.public = public
        self.created_at = created_at
        self.org = org

    @staticmethod
    def from_dict(obj: Any) -> 'Event':
        assert isinstance(obj, dict)
        id = from_str(obj.get("id"))
        type = from_str(obj.get("type"))
        actor = Actor.from_dict(obj.get("actor"))
        repo = EventRepo.from_dict(obj.get("repo"))
        payload = Payload.from_dict(obj.get("payload"))
        public = from_bool(obj.get("public"))
        created_at = from_datetime(obj.get("created_at"))
        org = from_union([Actor.from_dict, from_none], obj.get("org"))
        return Event(id, type, actor, repo, payload, public, created_at, org)

    def to_dict(self) -> dict:
        result: dict = {}
        result["id"] = from_str(self.id)
        result["type"] = from_str(self.type)
        result["actor"] = to_class(Actor, self.actor)
        result["repo"] = to_class(EventRepo, self.repo)
        result["payload"] = to_class(Payload, self.payload)
        result["public"] = from_bool(self.public)
        result["created_at"] = self.created_at.isoformat()
        result["org"] = from_union([lambda x: to_class(Actor, x), from_none], self.org)
        return result


class File:
    filename: str
    type: str
    language: Optional[str]
    raw_url: str
    size: int

    def __init__(self, filename: str, type: str, language: Optional[str], raw_url: str, size: int) -> None:
        self.filename = filename
        self.type = type
        self.language = language
        self.raw_url = raw_url
        self.size = size

    @staticmethod
    def from_dict(obj: Any) -> 'File':
        assert isinstance(obj, dict)
        filename = from_str(obj.get("filename"))
        type = from_str(obj.get("type"))
        language = from_union([from_none, from_str], obj.get("language"))
        raw_url = from_str(obj.get("raw_url"))
        size = from_int(obj.get("size"))
        return File(filename, type, language, raw_url, size)

    def to_dict(self) -> dict:
        result: dict = {}
        result["filename"] = from_str(self.filename)
        result["type"] = from_str(self.type)
        result["language"] = from_union([from_none, from_str], self.language)
        result["raw_url"] = from_str(self.raw_url)
        result["size"] = from_int(self.size)
        return result


class Gist:
    url: str
    forks_url: str
    commits_url: str
    id: str
    node_id: str
    git_pull_url: str
    git_push_url: str
    html_url: str
    files: Dict[str, File]
    public: bool
    created_at: datetime
    updated_at: datetime
    description: Optional[str]
    comments: int
    user: None
    comments_url: str
    owner: Owner
    truncated: bool

    def __init__(self, url: str, forks_url: str, commits_url: str, id: str, node_id: str, git_pull_url: str, git_push_url: str, html_url: str, files: Dict[str, File], public: bool, created_at: datetime, updated_at: datetime, description: Optional[str], comments: int, user: None, comments_url: str, owner: Owner, truncated: bool) -> None:
        self.url = url
        self.forks_url = forks_url
        self.commits_url = commits_url
        self.id = id
        self.node_id = node_id
        self.git_pull_url = git_pull_url
        self.git_push_url = git_push_url
        self.html_url = html_url
        self.files = files
        self.public = public
        self.created_at = created_at
        self.updated_at = updated_at
        self.description = description
        self.comments = comments
        self.user = user
        self.comments_url = comments_url
        self.owner = owner
        self.truncated = truncated

    @staticmethod
    def from_dict(obj: Any) -> 'Gist':
        assert isinstance(obj, dict)
        url = from_str(obj.get("url"))
        forks_url = from_str(obj.get("forks_url"))
        commits_url = from_str(obj.get("commits_url"))
        id = from_str(obj.get("id"))
        node_id = from_str(obj.get("node_id"))
        git_pull_url = from_str(obj.get("git_pull_url"))
        git_push_url = from_str(obj.get("git_push_url"))
        html_url = from_str(obj.get("html_url"))
        files = from_dict(File.from_dict, obj.get("files"))
        public = from_bool(obj.get("public"))
        created_at = from_datetime(obj.get("created_at"))
        updated_at = from_datetime(obj.get("updated_at"))
        description = from_union([from_none, from_str], obj.get("description"))
        comments = from_int(obj.get("comments"))
        user = from_none(obj.get("user"))
        comments_url = from_str(obj.get("comments_url"))
        owner = Owner.from_dict(obj.get("owner"))
        truncated = from_bool(obj.get("truncated"))
        return Gist(url, forks_url, commits_url, id, node_id, git_pull_url, git_push_url, html_url, files, public, created_at, updated_at, description, comments, user, comments_url, owner, truncated)

    def to_dict(self) -> dict:
        result: dict = {}
        result["url"] = from_str(self.url)
        result["forks_url"] = from_str(self.forks_url)
        result["commits_url"] = from_str(self.commits_url)
        result["id"] = from_str(self.id)
        result["node_id"] = from_str(self.node_id)
        result["git_pull_url"] = from_str(self.git_pull_url)
        result["git_push_url"] = from_str(self.git_push_url)
        result["html_url"] = from_str(self.html_url)
        result["files"] = from_dict(lambda x: to_class(File, x), self.files)
        result["public"] = from_bool(self.public)
        result["created_at"] = self.created_at.isoformat()
        result["updated_at"] = self.updated_at.isoformat()
        result["description"] = from_union([from_none, from_str], self.description)
        result["comments"] = from_int(self.comments)
        result["user"] = from_none(self.user)
        result["comments_url"] = from_str(self.comments_url)
        result["owner"] = to_class(Owner, self.owner)
        result["truncated"] = from_bool(self.truncated)
        return result


class Meta:
    verifiable_password_authentication: bool
    github_services_sha: str
    hooks: List[str]
    git: List[str]
    pages: List[str]
    importer: List[str]

    def __init__(self, verifiable_password_authentication: bool, github_services_sha: str, hooks: List[str], git: List[str], pages: List[str], importer: List[str]) -> None:
        self.verifiable_password_authentication = verifiable_password_authentication
        self.github_services_sha = github_services_sha
        self.hooks = hooks
        self.git = git
        self.pages = pages
        self.importer = importer

    @staticmethod
    def from_dict(obj: Any) -> 'Meta':
        assert isinstance(obj, dict)
        verifiable_password_authentication = from_bool(obj.get("verifiable_password_authentication"))
        github_services_sha = from_str(obj.get("github_services_sha"))
        hooks = from_list(from_str, obj.get("hooks"))
        git = from_list(from_str, obj.get("git"))
        pages = from_list(from_str, obj.get("pages"))
        importer = from_list(from_str, obj.get("importer"))
        return Meta(verifiable_password_authentication, github_services_sha, hooks, git, pages, importer)

    def to_dict(self) -> dict:
        result: dict = {}
        result["verifiable_password_authentication"] = from_bool(self.verifiable_password_authentication)
        result["github_services_sha"] = from_str(self.github_services_sha)
        result["hooks"] = from_list(from_str, self.hooks)
        result["git"] = from_list(from_str, self.git)
        result["pages"] = from_list(from_str, self.pages)
        result["importer"] = from_list(from_str, self.importer)
        return result


def api_data_from_dict(s: Any) -> Dict[str, str]:
    return from_dict(from_str, s)


def api_data_to_dict(x: Dict[str, str]) -> Any:
    return from_dict(from_str, x)


def emojis_from_dict(s: Any) -> Dict[str, str]:
    return from_dict(from_str, s)


def emojis_to_dict(x: Dict[str, str]) -> Any:
    return from_dict(from_str, x)


def events_from_dict(s: Any) -> List[Event]:
    return from_list(Event.from_dict, s)


def events_to_dict(x: List[Event]) -> Any:
    return from_list(lambda x: to_class(Event, x), x)


def gists_from_dict(s: Any) -> List[Gist]:
    return from_list(Gist.from_dict, s)


def gists_to_dict(x: List[Gist]) -> Any:
    return from_list(lambda x: to_class(Gist, x), x)


def meta_from_dict(s: Any) -> Meta:
    return Meta.from_dict(s)


def meta_to_dict(x: Meta) -> Any:
    return to_class(Meta, x)
