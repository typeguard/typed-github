// To parse this data:
//
//   import { Convert, Meta } from "./file";
//
//   const aPIData = Convert.toAPIData(json);
//   const emojis = Convert.toEmojis(json);
//   const events = Convert.toEvents(json);
//   const gists = Convert.toGists(json);
//   const meta = Convert.toMeta(json);
//
// These functions will throw an error if the JSON doesn't
// match the expected interface, even if the JSON is valid.

export interface Events {
    id:         string;
    type:       string;
    actor:      Actor;
    repo:       EventRepo;
    payload:    Payload;
    public:     boolean;
    created_at: string;
    org?:       Actor;
}

export interface Actor {
    id:             number;
    login:          string;
    display_login?: string;
    gravatar_id:    string;
    url:            string;
    avatar_url:     string;
}

export interface Payload {
    push_id?:       number;
    size?:          number;
    distinct_size?: number;
    ref?:           null | string;
    head?:          string;
    before?:        string;
    commits?:       Commit[];
    action?:        string;
    number?:        number;
    pull_request?:  PullRequest;
    ref_type?:      string;
    master_branch?: string;
    description?:   null | string;
    pusher_type?:   string;
    comment?:       Comment;
}

export interface Comment {
    url:                    string;
    pull_request_review_id: number;
    id:                     number;
    node_id:                string;
    diff_hunk:              string;
    path:                   string;
    position:               number;
    original_position:      number;
    commit_id:              string;
    original_commit_id:     string;
    user:                   Owner;
    body:                   string;
    created_at:             string;
    updated_at:             string;
    html_url:               string;
    pull_request_url:       string;
    author_association:     string;
    _links:                 CommentLinks;
}

export interface CommentLinks {
    self:         HTML;
    html:         HTML;
    pull_request: HTML;
}

export interface HTML {
    href: string;
}

export interface Owner {
    login:               string;
    id:                  number;
    node_id:             string;
    avatar_url:          string;
    gravatar_id:         string;
    url:                 string;
    html_url:            string;
    followers_url:       string;
    following_url:       string;
    gists_url:           string;
    starred_url:         string;
    subscriptions_url:   string;
    organizations_url:   string;
    repos_url:           string;
    events_url:          string;
    received_events_url: string;
    type:                Type;
    site_admin:          boolean;
}

export enum Type {
    Organization = "Organization",
    User = "User",
}

export interface Commit {
    sha:      string;
    author:   Author;
    message:  string;
    distinct: boolean;
    url:      string;
}

export interface Author {
    email: string;
    name:  string;
}

export interface PullRequest {
    url:                    string;
    id:                     number;
    node_id:                string;
    html_url:               string;
    diff_url:               string;
    patch_url:              string;
    issue_url:              string;
    number:                 number;
    state:                  string;
    locked:                 boolean;
    title:                  string;
    user:                   Owner;
    body:                   null | string;
    created_at:             string;
    updated_at:             string;
    closed_at:              null;
    merged_at:              null;
    merge_commit_sha:       null | string;
    assignee:               null;
    assignees:              any[];
    requested_reviewers:    any[];
    requested_teams:        any[];
    labels:                 any[];
    milestone:              null;
    commits_url:            string;
    review_comments_url:    string;
    review_comment_url:     string;
    comments_url:           string;
    statuses_url:           string;
    head:                   Base;
    base:                   Base;
    _links:                 PullRequestLinks;
    author_association:     string;
    merged?:                boolean;
    mergeable?:             null;
    rebaseable?:            null;
    mergeable_state?:       string;
    merged_by?:             null;
    comments?:              number;
    review_comments?:       number;
    maintainer_can_modify?: boolean;
    commits?:               number;
    additions?:             number;
    deletions?:             number;
    changed_files?:         number;
}

export interface PullRequestLinks {
    self:            HTML;
    html:            HTML;
    issue:           HTML;
    comments:        HTML;
    review_comments: HTML;
    review_comment:  HTML;
    commits:         HTML;
    statuses:        HTML;
}

export interface Base {
    label: string;
    ref:   string;
    sha:   string;
    user:  Owner;
    repo:  BaseRepo;
}

export interface BaseRepo {
    id:                number;
    node_id:           string;
    name:              string;
    full_name:         string;
    owner:             Owner;
    private:           boolean;
    html_url:          string;
    description:       null | string;
    fork:              boolean;
    url:               string;
    forks_url:         string;
    keys_url:          string;
    collaborators_url: string;
    teams_url:         string;
    hooks_url:         string;
    issue_events_url:  string;
    events_url:        string;
    assignees_url:     string;
    branches_url:      string;
    tags_url:          string;
    blobs_url:         string;
    git_tags_url:      string;
    git_refs_url:      string;
    trees_url:         string;
    statuses_url:      string;
    languages_url:     string;
    stargazers_url:    string;
    contributors_url:  string;
    subscribers_url:   string;
    subscription_url:  string;
    commits_url:       string;
    git_commits_url:   string;
    comments_url:      string;
    issue_comment_url: string;
    contents_url:      string;
    compare_url:       string;
    merges_url:        string;
    archive_url:       string;
    downloads_url:     string;
    issues_url:        string;
    pulls_url:         string;
    milestones_url:    string;
    notifications_url: string;
    labels_url:        string;
    releases_url:      string;
    deployments_url:   string;
    created_at:        string;
    updated_at:        string;
    pushed_at:         string;
    git_url:           string;
    ssh_url:           string;
    clone_url:         string;
    svn_url:           string;
    homepage:          null | string;
    size:              number;
    stargazers_count:  number;
    watchers_count:    number;
    language:          string;
    has_issues:        boolean;
    has_projects:      boolean;
    has_downloads:     boolean;
    has_wiki:          boolean;
    has_pages:         boolean;
    forks_count:       number;
    mirror_url:        null;
    archived:          boolean;
    open_issues_count: number;
    license:           License | null;
    forks:             number;
    open_issues:       number;
    watchers:          number;
    default_branch:    string;
}

export interface License {
    key:     string;
    name:    string;
    spdx_id: null | string;
    url:     null | string;
    node_id: string;
}

export interface EventRepo {
    id:   number;
    name: string;
    url:  string;
}

export interface Gists {
    url:          string;
    forks_url:    string;
    commits_url:  string;
    id:           string;
    node_id:      string;
    git_pull_url: string;
    git_push_url: string;
    html_url:     string;
    files:        { [key: string]: File };
    public:       boolean;
    created_at:   string;
    updated_at:   string;
    description:  null | string;
    comments:     number;
    user:         null;
    comments_url: string;
    owner:        Owner;
    truncated:    boolean;
}

export interface File {
    filename: string;
    type:     string;
    language: null | string;
    raw_url:  string;
    size:     number;
}

export interface Meta {
    verifiable_password_authentication: boolean;
    github_services_sha:                string;
    hooks:                              string[];
    git:                                string[];
    pages:                              string[];
    importer:                           string[];
}

// Converts JSON strings to/from your types
// and asserts the results of JSON.parse at runtime
export namespace Convert {
    export function toAPIData(json: string): { [key: string]: string } {
        return cast(JSON.parse(json), m(""));
    }

    export function aPIDataToJson(value: { [key: string]: string }): string {
        return JSON.stringify(uncast(value, m("")), null, 2);
    }

    export function toEmojis(json: string): { [key: string]: string } {
        return cast(JSON.parse(json), m(""));
    }

    export function emojisToJson(value: { [key: string]: string }): string {
        return JSON.stringify(uncast(value, m("")), null, 2);
    }

    export function toEvents(json: string): Events[] {
        return cast(JSON.parse(json), a(r("Events")));
    }

    export function eventsToJson(value: Events[]): string {
        return JSON.stringify(uncast(value, a(r("Events"))), null, 2);
    }

    export function toGists(json: string): Gists[] {
        return cast(JSON.parse(json), a(r("Gists")));
    }

    export function gistsToJson(value: Gists[]): string {
        return JSON.stringify(uncast(value, a(r("Gists"))), null, 2);
    }

    export function toMeta(json: string): Meta {
        return cast(JSON.parse(json), r("Meta"));
    }

    export function metaToJson(value: Meta): string {
        return JSON.stringify(uncast(value, r("Meta")), null, 2);
    }

    function invalidValue(typ: any, val: any): never {
        throw Error(`Invalid value ${JSON.stringify(val)} for type ${JSON.stringify(typ)}`);
    }

    function jsonToJSProps(typ: any): any {
        if (typ.jsonToJS === undefined) {
            var map: any = {};
            typ.props.forEach((p: any) => map[p.json] = { key: p.js, typ: p.typ });
            typ.jsonToJS = map;
        }
        return typ.jsonToJS;
    }

    function jsToJSONProps(typ: any): any {
        if (typ.jsToJSON === undefined) {
            var map: any = {};
            typ.props.forEach((p: any) => map[p.js] = { key: p.json, typ: p.typ });
            typ.jsToJSON = map;
        }
        return typ.jsToJSON;
    }

    function transform(val: any, typ: any, getProps: any): any {
        function transformPrimitive(typ: string, val: any): any {
            if (typeof typ === typeof val) return val;
            return invalidValue(typ, val);
        }

        function transformUnion(typs: any[], val: any): any {
            // val must validate against one typ in typs
            var l = typs.length;
            for (var i = 0; i < l; i++) {
                var typ = typs[i];
                try {
                    return transform(val, typ, getProps);
                } catch (_) {}
            }
            return invalidValue(typs, val);
        }

        function transformEnum(cases: string[], val: any): any {
            if (cases.indexOf(val) !== -1) return val;
            return invalidValue(cases, val);
        }

        function transformArray(typ: any, val: any): any {
            // val must be an array with no invalid elements
            if (!Array.isArray(val)) return invalidValue("array", val);
            return val.map(el => transform(el, typ, getProps));
        }

        function transformObject(props: { [k: string]: any }, additional: any, val: any): any {
            if (val === null || typeof val !== "object" || Array.isArray(val)) {
                return invalidValue("object", val);
            }
            var result: any = {};
            Object.getOwnPropertyNames(props).forEach(key => {
                const prop = props[key];
                const v = Object.prototype.hasOwnProperty.call(val, key) ? val[key] : undefined;
                result[prop.key] = transform(v, prop.typ, getProps);
            });
            Object.getOwnPropertyNames(val).forEach(key => {
                if (!Object.prototype.hasOwnProperty.call(props, key)) {
                    result[key] = transform(val[key], additional, getProps);
                }
            });
            return result;
        }

        if (typ === "any") return val;
        if (typ === null) {
            if (val === null) return val;
            return invalidValue(typ, val);
        }
        if (typ === false) return invalidValue(typ, val);
        while (typeof typ === "object" && typ.ref !== undefined) {
            typ = typeMap[typ.ref];
        }
        if (Array.isArray(typ)) return transformEnum(typ, val);
        if (typeof typ === "object") {
            return typ.hasOwnProperty("unionMembers") ? transformUnion(typ.unionMembers, val)
                : typ.hasOwnProperty("arrayItems")    ? transformArray(typ.arrayItems, val)
                : typ.hasOwnProperty("props")         ? transformObject(getProps(typ), typ.additional, val)
                : invalidValue(typ, val);
        }
        return transformPrimitive(typ, val);
    }

    function cast<T>(val: any, typ: any): T {
        return transform(val, typ, jsonToJSProps);
    }

    function uncast<T>(val: T, typ: any): any {
        return transform(val, typ, jsToJSONProps);
    }

    function a(typ: any) {
        return { arrayItems: typ };
    }

    function u(...typs: any[]) {
        return { unionMembers: typs };
    }

    function o(props: any[], additional: any) {
        return { props, additional };
    }

    function m(additional: any) {
        return { props: [], additional };
    }

    function r(name: string) {
        return { ref: name };
    }

    const typeMap: any = {
        "Events": o([
            { json: "id", js: "id", typ: "" },
            { json: "type", js: "type", typ: "" },
            { json: "actor", js: "actor", typ: r("Actor") },
            { json: "repo", js: "repo", typ: r("EventRepo") },
            { json: "payload", js: "payload", typ: r("Payload") },
            { json: "public", js: "public", typ: true },
            { json: "created_at", js: "created_at", typ: "" },
            { json: "org", js: "org", typ: u(undefined, r("Actor")) },
        ], false),
        "Actor": o([
            { json: "id", js: "id", typ: 0 },
            { json: "login", js: "login", typ: "" },
            { json: "display_login", js: "display_login", typ: u(undefined, "") },
            { json: "gravatar_id", js: "gravatar_id", typ: "" },
            { json: "url", js: "url", typ: "" },
            { json: "avatar_url", js: "avatar_url", typ: "" },
        ], false),
        "Payload": o([
            { json: "push_id", js: "push_id", typ: u(undefined, 0) },
            { json: "size", js: "size", typ: u(undefined, 0) },
            { json: "distinct_size", js: "distinct_size", typ: u(undefined, 0) },
            { json: "ref", js: "ref", typ: u(undefined, u(null, "")) },
            { json: "head", js: "head", typ: u(undefined, "") },
            { json: "before", js: "before", typ: u(undefined, "") },
            { json: "commits", js: "commits", typ: u(undefined, a(r("Commit"))) },
            { json: "action", js: "action", typ: u(undefined, "") },
            { json: "number", js: "number", typ: u(undefined, 0) },
            { json: "pull_request", js: "pull_request", typ: u(undefined, r("PullRequest")) },
            { json: "ref_type", js: "ref_type", typ: u(undefined, "") },
            { json: "master_branch", js: "master_branch", typ: u(undefined, "") },
            { json: "description", js: "description", typ: u(undefined, u(null, "")) },
            { json: "pusher_type", js: "pusher_type", typ: u(undefined, "") },
            { json: "comment", js: "comment", typ: u(undefined, r("Comment")) },
        ], false),
        "Comment": o([
            { json: "url", js: "url", typ: "" },
            { json: "pull_request_review_id", js: "pull_request_review_id", typ: 0 },
            { json: "id", js: "id", typ: 0 },
            { json: "node_id", js: "node_id", typ: "" },
            { json: "diff_hunk", js: "diff_hunk", typ: "" },
            { json: "path", js: "path", typ: "" },
            { json: "position", js: "position", typ: 0 },
            { json: "original_position", js: "original_position", typ: 0 },
            { json: "commit_id", js: "commit_id", typ: "" },
            { json: "original_commit_id", js: "original_commit_id", typ: "" },
            { json: "user", js: "user", typ: r("Owner") },
            { json: "body", js: "body", typ: "" },
            { json: "created_at", js: "created_at", typ: "" },
            { json: "updated_at", js: "updated_at", typ: "" },
            { json: "html_url", js: "html_url", typ: "" },
            { json: "pull_request_url", js: "pull_request_url", typ: "" },
            { json: "author_association", js: "author_association", typ: "" },
            { json: "_links", js: "_links", typ: r("CommentLinks") },
        ], false),
        "CommentLinks": o([
            { json: "self", js: "self", typ: r("HTML") },
            { json: "html", js: "html", typ: r("HTML") },
            { json: "pull_request", js: "pull_request", typ: r("HTML") },
        ], false),
        "HTML": o([
            { json: "href", js: "href", typ: "" },
        ], false),
        "Owner": o([
            { json: "login", js: "login", typ: "" },
            { json: "id", js: "id", typ: 0 },
            { json: "node_id", js: "node_id", typ: "" },
            { json: "avatar_url", js: "avatar_url", typ: "" },
            { json: "gravatar_id", js: "gravatar_id", typ: "" },
            { json: "url", js: "url", typ: "" },
            { json: "html_url", js: "html_url", typ: "" },
            { json: "followers_url", js: "followers_url", typ: "" },
            { json: "following_url", js: "following_url", typ: "" },
            { json: "gists_url", js: "gists_url", typ: "" },
            { json: "starred_url", js: "starred_url", typ: "" },
            { json: "subscriptions_url", js: "subscriptions_url", typ: "" },
            { json: "organizations_url", js: "organizations_url", typ: "" },
            { json: "repos_url", js: "repos_url", typ: "" },
            { json: "events_url", js: "events_url", typ: "" },
            { json: "received_events_url", js: "received_events_url", typ: "" },
            { json: "type", js: "type", typ: r("Type") },
            { json: "site_admin", js: "site_admin", typ: true },
        ], false),
        "Commit": o([
            { json: "sha", js: "sha", typ: "" },
            { json: "author", js: "author", typ: r("Author") },
            { json: "message", js: "message", typ: "" },
            { json: "distinct", js: "distinct", typ: true },
            { json: "url", js: "url", typ: "" },
        ], false),
        "Author": o([
            { json: "email", js: "email", typ: "" },
            { json: "name", js: "name", typ: "" },
        ], false),
        "PullRequest": o([
            { json: "url", js: "url", typ: "" },
            { json: "id", js: "id", typ: 0 },
            { json: "node_id", js: "node_id", typ: "" },
            { json: "html_url", js: "html_url", typ: "" },
            { json: "diff_url", js: "diff_url", typ: "" },
            { json: "patch_url", js: "patch_url", typ: "" },
            { json: "issue_url", js: "issue_url", typ: "" },
            { json: "number", js: "number", typ: 0 },
            { json: "state", js: "state", typ: "" },
            { json: "locked", js: "locked", typ: true },
            { json: "title", js: "title", typ: "" },
            { json: "user", js: "user", typ: r("Owner") },
            { json: "body", js: "body", typ: u(null, "") },
            { json: "created_at", js: "created_at", typ: "" },
            { json: "updated_at", js: "updated_at", typ: "" },
            { json: "closed_at", js: "closed_at", typ: null },
            { json: "merged_at", js: "merged_at", typ: null },
            { json: "merge_commit_sha", js: "merge_commit_sha", typ: u(null, "") },
            { json: "assignee", js: "assignee", typ: null },
            { json: "assignees", js: "assignees", typ: a("any") },
            { json: "requested_reviewers", js: "requested_reviewers", typ: a("any") },
            { json: "requested_teams", js: "requested_teams", typ: a("any") },
            { json: "labels", js: "labels", typ: a("any") },
            { json: "milestone", js: "milestone", typ: null },
            { json: "commits_url", js: "commits_url", typ: "" },
            { json: "review_comments_url", js: "review_comments_url", typ: "" },
            { json: "review_comment_url", js: "review_comment_url", typ: "" },
            { json: "comments_url", js: "comments_url", typ: "" },
            { json: "statuses_url", js: "statuses_url", typ: "" },
            { json: "head", js: "head", typ: r("Base") },
            { json: "base", js: "base", typ: r("Base") },
            { json: "_links", js: "_links", typ: r("PullRequestLinks") },
            { json: "author_association", js: "author_association", typ: "" },
            { json: "merged", js: "merged", typ: u(undefined, true) },
            { json: "mergeable", js: "mergeable", typ: u(undefined, null) },
            { json: "rebaseable", js: "rebaseable", typ: u(undefined, null) },
            { json: "mergeable_state", js: "mergeable_state", typ: u(undefined, "") },
            { json: "merged_by", js: "merged_by", typ: u(undefined, null) },
            { json: "comments", js: "comments", typ: u(undefined, 0) },
            { json: "review_comments", js: "review_comments", typ: u(undefined, 0) },
            { json: "maintainer_can_modify", js: "maintainer_can_modify", typ: u(undefined, true) },
            { json: "commits", js: "commits", typ: u(undefined, 0) },
            { json: "additions", js: "additions", typ: u(undefined, 0) },
            { json: "deletions", js: "deletions", typ: u(undefined, 0) },
            { json: "changed_files", js: "changed_files", typ: u(undefined, 0) },
        ], false),
        "PullRequestLinks": o([
            { json: "self", js: "self", typ: r("HTML") },
            { json: "html", js: "html", typ: r("HTML") },
            { json: "issue", js: "issue", typ: r("HTML") },
            { json: "comments", js: "comments", typ: r("HTML") },
            { json: "review_comments", js: "review_comments", typ: r("HTML") },
            { json: "review_comment", js: "review_comment", typ: r("HTML") },
            { json: "commits", js: "commits", typ: r("HTML") },
            { json: "statuses", js: "statuses", typ: r("HTML") },
        ], false),
        "Base": o([
            { json: "label", js: "label", typ: "" },
            { json: "ref", js: "ref", typ: "" },
            { json: "sha", js: "sha", typ: "" },
            { json: "user", js: "user", typ: r("Owner") },
            { json: "repo", js: "repo", typ: r("BaseRepo") },
        ], false),
        "BaseRepo": o([
            { json: "id", js: "id", typ: 0 },
            { json: "node_id", js: "node_id", typ: "" },
            { json: "name", js: "name", typ: "" },
            { json: "full_name", js: "full_name", typ: "" },
            { json: "owner", js: "owner", typ: r("Owner") },
            { json: "private", js: "private", typ: true },
            { json: "html_url", js: "html_url", typ: "" },
            { json: "description", js: "description", typ: u(null, "") },
            { json: "fork", js: "fork", typ: true },
            { json: "url", js: "url", typ: "" },
            { json: "forks_url", js: "forks_url", typ: "" },
            { json: "keys_url", js: "keys_url", typ: "" },
            { json: "collaborators_url", js: "collaborators_url", typ: "" },
            { json: "teams_url", js: "teams_url", typ: "" },
            { json: "hooks_url", js: "hooks_url", typ: "" },
            { json: "issue_events_url", js: "issue_events_url", typ: "" },
            { json: "events_url", js: "events_url", typ: "" },
            { json: "assignees_url", js: "assignees_url", typ: "" },
            { json: "branches_url", js: "branches_url", typ: "" },
            { json: "tags_url", js: "tags_url", typ: "" },
            { json: "blobs_url", js: "blobs_url", typ: "" },
            { json: "git_tags_url", js: "git_tags_url", typ: "" },
            { json: "git_refs_url", js: "git_refs_url", typ: "" },
            { json: "trees_url", js: "trees_url", typ: "" },
            { json: "statuses_url", js: "statuses_url", typ: "" },
            { json: "languages_url", js: "languages_url", typ: "" },
            { json: "stargazers_url", js: "stargazers_url", typ: "" },
            { json: "contributors_url", js: "contributors_url", typ: "" },
            { json: "subscribers_url", js: "subscribers_url", typ: "" },
            { json: "subscription_url", js: "subscription_url", typ: "" },
            { json: "commits_url", js: "commits_url", typ: "" },
            { json: "git_commits_url", js: "git_commits_url", typ: "" },
            { json: "comments_url", js: "comments_url", typ: "" },
            { json: "issue_comment_url", js: "issue_comment_url", typ: "" },
            { json: "contents_url", js: "contents_url", typ: "" },
            { json: "compare_url", js: "compare_url", typ: "" },
            { json: "merges_url", js: "merges_url", typ: "" },
            { json: "archive_url", js: "archive_url", typ: "" },
            { json: "downloads_url", js: "downloads_url", typ: "" },
            { json: "issues_url", js: "issues_url", typ: "" },
            { json: "pulls_url", js: "pulls_url", typ: "" },
            { json: "milestones_url", js: "milestones_url", typ: "" },
            { json: "notifications_url", js: "notifications_url", typ: "" },
            { json: "labels_url", js: "labels_url", typ: "" },
            { json: "releases_url", js: "releases_url", typ: "" },
            { json: "deployments_url", js: "deployments_url", typ: "" },
            { json: "created_at", js: "created_at", typ: "" },
            { json: "updated_at", js: "updated_at", typ: "" },
            { json: "pushed_at", js: "pushed_at", typ: "" },
            { json: "git_url", js: "git_url", typ: "" },
            { json: "ssh_url", js: "ssh_url", typ: "" },
            { json: "clone_url", js: "clone_url", typ: "" },
            { json: "svn_url", js: "svn_url", typ: "" },
            { json: "homepage", js: "homepage", typ: u(null, "") },
            { json: "size", js: "size", typ: 0 },
            { json: "stargazers_count", js: "stargazers_count", typ: 0 },
            { json: "watchers_count", js: "watchers_count", typ: 0 },
            { json: "language", js: "language", typ: "" },
            { json: "has_issues", js: "has_issues", typ: true },
            { json: "has_projects", js: "has_projects", typ: true },
            { json: "has_downloads", js: "has_downloads", typ: true },
            { json: "has_wiki", js: "has_wiki", typ: true },
            { json: "has_pages", js: "has_pages", typ: true },
            { json: "forks_count", js: "forks_count", typ: 0 },
            { json: "mirror_url", js: "mirror_url", typ: null },
            { json: "archived", js: "archived", typ: true },
            { json: "open_issues_count", js: "open_issues_count", typ: 0 },
            { json: "license", js: "license", typ: u(r("License"), null) },
            { json: "forks", js: "forks", typ: 0 },
            { json: "open_issues", js: "open_issues", typ: 0 },
            { json: "watchers", js: "watchers", typ: 0 },
            { json: "default_branch", js: "default_branch", typ: "" },
        ], false),
        "License": o([
            { json: "key", js: "key", typ: "" },
            { json: "name", js: "name", typ: "" },
            { json: "spdx_id", js: "spdx_id", typ: u(null, "") },
            { json: "url", js: "url", typ: u(null, "") },
            { json: "node_id", js: "node_id", typ: "" },
        ], false),
        "EventRepo": o([
            { json: "id", js: "id", typ: 0 },
            { json: "name", js: "name", typ: "" },
            { json: "url", js: "url", typ: "" },
        ], false),
        "Gists": o([
            { json: "url", js: "url", typ: "" },
            { json: "forks_url", js: "forks_url", typ: "" },
            { json: "commits_url", js: "commits_url", typ: "" },
            { json: "id", js: "id", typ: "" },
            { json: "node_id", js: "node_id", typ: "" },
            { json: "git_pull_url", js: "git_pull_url", typ: "" },
            { json: "git_push_url", js: "git_push_url", typ: "" },
            { json: "html_url", js: "html_url", typ: "" },
            { json: "files", js: "files", typ: m(r("File")) },
            { json: "public", js: "public", typ: true },
            { json: "created_at", js: "created_at", typ: "" },
            { json: "updated_at", js: "updated_at", typ: "" },
            { json: "description", js: "description", typ: u(null, "") },
            { json: "comments", js: "comments", typ: 0 },
            { json: "user", js: "user", typ: null },
            { json: "comments_url", js: "comments_url", typ: "" },
            { json: "owner", js: "owner", typ: r("Owner") },
            { json: "truncated", js: "truncated", typ: true },
        ], false),
        "File": o([
            { json: "filename", js: "filename", typ: "" },
            { json: "type", js: "type", typ: "" },
            { json: "language", js: "language", typ: u(null, "") },
            { json: "raw_url", js: "raw_url", typ: "" },
            { json: "size", js: "size", typ: 0 },
        ], false),
        "Meta": o([
            { json: "verifiable_password_authentication", js: "verifiable_password_authentication", typ: true },
            { json: "github_services_sha", js: "github_services_sha", typ: "" },
            { json: "hooks", js: "hooks", typ: a("") },
            { json: "git", js: "git", typ: a("") },
            { json: "pages", js: "pages", typ: a("") },
            { json: "importer", js: "importer", typ: a("") },
        ], false),
        "Type": [
            "Organization",
            "User",
        ],
    };
}
