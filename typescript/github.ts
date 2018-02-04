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
    repo:       Repo;
    payload:    Payload;
    public:     boolean;
    created_at: string;
    org?:       Actor;
}

export interface Actor {
    id:             number;
    login:          string;
    display_login?: string;
    gravatar_id:    GravatarID;
    url:            string;
    avatar_url:     string;
}

export enum GravatarID {
    Empty = "",
}

export interface Payload {
    action?:        string;
    issue?:         Issue;
    comment?:       Comment;
    push_id?:       number;
    size?:          number;
    distinct_size?: number;
    ref?:           string;
    head?:          string;
    before?:        string;
    commits?:       Commit[];
    ref_type?:      string;
    master_branch?: string;
    description?:   string;
    pusher_type?:   string;
    forkee?:        Forkee;
    pages?:         Page[];
}

export interface Comment {
    url:                string;
    html_url:           string;
    issue_url:          string;
    id:                 number;
    user:               User;
    created_at:         string;
    updated_at:         string;
    author_association: string;
    body:               string;
}

export interface User {
    login:               string;
    id:                  number;
    avatar_url:          string;
    gravatar_id:         GravatarID;
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
    type:                UserType;
    site_admin:          boolean;
}

export enum UserType {
    Bot = "Bot",
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

export interface Forkee {
    id:                number;
    name:              string;
    full_name:         string;
    owner:             User;
    private:           boolean;
    html_url:          string;
    description:       string;
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
    homepage:          string;
    size:              number;
    stargazers_count:  number;
    watchers_count:    number;
    language:          null;
    has_issues:        boolean;
    has_projects:      boolean;
    has_downloads:     boolean;
    has_wiki:          boolean;
    has_pages:         boolean;
    forks_count:       number;
    mirror_url:        null;
    archived:          boolean;
    open_issues_count: number;
    license:           null;
    forks:             number;
    open_issues:       number;
    watchers:          number;
    default_branch:    string;
    public:            boolean;
}

export interface Issue {
    url:                string;
    repository_url:     string;
    labels_url:         string;
    comments_url:       string;
    events_url:         string;
    html_url:           string;
    id:                 number;
    number:             number;
    title:              string;
    user:               User;
    labels:             Label[];
    state:              string;
    locked:             boolean;
    assignee:           null;
    assignees:          any[];
    milestone:          null;
    comments:           number;
    created_at:         string;
    updated_at:         string;
    closed_at?:         string;
    author_association: string;
    pull_request?:      PullRequest;
    body:               string;
}

export interface Label {
    id:      number;
    url:     string;
    name:    string;
    color:   string;
    default: boolean;
}

export interface PullRequest {
    url:       string;
    html_url:  string;
    diff_url:  string;
    patch_url: string;
}

export interface Page {
    page_name: string;
    title:     string;
    summary:   null;
    action:    string;
    sha:       string;
    html_url:  string;
}

export interface Repo {
    id:   number;
    name: string;
    url:  string;
}

export interface Gists {
    url:          string;
    forks_url:    string;
    commits_url:  string;
    id:           string;
    git_pull_url: string;
    git_push_url: string;
    html_url:     string;
    files:        { [key: string]: File };
    public:       boolean;
    created_at:   string;
    updated_at:   string;
    description?: string;
    comments:     number;
    user:         null;
    comments_url: string;
    truncated:    boolean;
    owner?:       User;
}

export interface File {
    filename:  string;
    type:      FileType;
    language?: string;
    raw_url:   string;
    size:      number;
}

export enum FileType {
    ApplicationJSON = "application/json",
    ApplicationJavascript = "application/javascript",
    ApplicationXML = "application/xml",
    TextHTML = "text/html",
    TextPlain = "text/plain",
    TextXYAML = "text/x-yaml",
}

export interface User {
    login:               string;
    id:                  number;
    avatar_url:          string;
    gravatar_id:         GravatarID;
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
    type:                UserType;
    site_admin:          boolean;
}

export enum GravatarID {
    Empty = "",
}

export enum UserType {
    Bot = "Bot",
    User = "User",
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
export module Convert {
    export function toAPIData(json: string): { [key: string]: string } {
        return cast(JSON.parse(json), M(""));
    }

    export function aPIDataToJson(value: { [key: string]: string }): string {
        return JSON.stringify(value, null, 2);
    }

    export function toEmojis(json: string): { [key: string]: string } {
        return cast(JSON.parse(json), M(""));
    }

    export function emojisToJson(value: { [key: string]: string }): string {
        return JSON.stringify(value, null, 2);
    }

    export function toEvents(json: string): Events[] {
        return cast(JSON.parse(json), A(O("Events")));
    }

    export function eventsToJson(value: Events[]): string {
        return JSON.stringify(value, null, 2);
    }

    export function toGists(json: string): Gists[] {
        return cast(JSON.parse(json), A(O("Gists")));
    }

    export function gistsToJson(value: Gists[]): string {
        return JSON.stringify(value, null, 2);
    }

    export function toMeta(json: string): Meta {
        return cast(JSON.parse(json), O("Meta"));
    }

    export function metaToJson(value: Meta): string {
        return JSON.stringify(value, null, 2);
    }
    
    function cast<T>(obj: any, typ: any): T {
        if (!isValid(typ, obj)) {
            throw `Invalid value`;
        }
        return obj;
    }

    function isValid(typ: any, val: any): boolean {
        if (typ === undefined) return true;
        if (typ === null) return val === null || val === undefined;
        return typ.isUnion  ? isValidUnion(typ.typs, val)
                : typ.isArray  ? isValidArray(typ.typ, val)
                : typ.isMap    ? isValidMap(typ.typ, val)
                : typ.isEnum   ? isValidEnum(typ.name, val)
                : typ.isObject ? isValidObject(typ.cls, val)
                :                isValidPrimitive(typ, val);
    }

    function isValidPrimitive(typ: string, val: any) {
        return typeof typ === typeof val;
    }

    function isValidUnion(typs: any[], val: any): boolean {
        // val must validate against one typ in typs
        return typs.find(typ => isValid(typ, val)) !== undefined;
    }

    function isValidEnum(enumName: string, val: any): boolean {
        const cases = typeMap[enumName];
        return cases.indexOf(val) !== -1;
    }

    function isValidArray(typ: any, val: any): boolean {
        // val must be an array with no invalid elements
        return Array.isArray(val) && val.every((element, i) => {
            return isValid(typ, element);
        });
    }

    function isValidMap(typ: any, val: any): boolean {
        if (val === null || typeof val !== "object" || Array.isArray(val)) return false;
        // all values in the map must be typ
        return Object.keys(val).every(prop => {
            if (!Object.prototype.hasOwnProperty.call(val, prop)) return true;
            return isValid(typ, val[prop]);
        });
    }

    function isValidObject(className: string, val: any): boolean {
        if (val === null || typeof val !== "object" || Array.isArray(val)) return false;
        let typeRep = typeMap[className];
        return Object.keys(typeRep).every(prop => {
            if (!Object.prototype.hasOwnProperty.call(typeRep, prop)) return true;
            return isValid(typeRep[prop], val[prop]);
        });
    }

    function A(typ: any) {
        return { typ, isArray: true };
    }

    function E(name: string) {
        return { name, isEnum: true };
    }

    function U(...typs: any[]) {
        return { typs, isUnion: true };
    }

    function M(typ: any) {
        return { typ, isMap: true };
    }

    function O(className: string) {
        return { cls: className, isObject: true };
    }

    const typeMap: any = {
        "Events": {
            id: "",
            type: "",
            actor: O("Actor"),
            repo: O("Repo"),
            payload: O("Payload"),
            public: false,
            created_at: "",
            org: U(null, O("Actor")),
        },
        "Actor": {
            id: 0,
            login: "",
            display_login: U(null, ""),
            gravatar_id: E("GravatarID"),
            url: "",
            avatar_url: "",
        },
        "Payload": {
            action: U(null, ""),
            issue: U(null, O("Issue")),
            comment: U(null, O("Comment")),
            push_id: U(null, 0),
            size: U(null, 0),
            distinct_size: U(null, 0),
            ref: U(null, ""),
            head: U(null, ""),
            before: U(null, ""),
            commits: U(null, A(O("Commit"))),
            ref_type: U(null, ""),
            master_branch: U(null, ""),
            description: U(null, ""),
            pusher_type: U(null, ""),
            forkee: U(null, O("Forkee")),
            pages: U(null, A(O("Page"))),
        },
        "Comment": {
            url: "",
            html_url: "",
            issue_url: "",
            id: 0,
            user: O("User"),
            created_at: "",
            updated_at: "",
            author_association: "",
            body: "",
        },
        "User": {
            login: "",
            id: 0,
            avatar_url: "",
            gravatar_id: E("GravatarID"),
            url: "",
            html_url: "",
            followers_url: "",
            following_url: "",
            gists_url: "",
            starred_url: "",
            subscriptions_url: "",
            organizations_url: "",
            repos_url: "",
            events_url: "",
            received_events_url: "",
            type: E("UserType"),
            site_admin: false,
        },
        "Commit": {
            sha: "",
            author: O("Author"),
            message: "",
            distinct: false,
            url: "",
        },
        "Author": {
            email: "",
            name: "",
        },
        "Forkee": {
            id: 0,
            name: "",
            full_name: "",
            owner: O("User"),
            private: false,
            html_url: "",
            description: "",
            fork: false,
            url: "",
            forks_url: "",
            keys_url: "",
            collaborators_url: "",
            teams_url: "",
            hooks_url: "",
            issue_events_url: "",
            events_url: "",
            assignees_url: "",
            branches_url: "",
            tags_url: "",
            blobs_url: "",
            git_tags_url: "",
            git_refs_url: "",
            trees_url: "",
            statuses_url: "",
            languages_url: "",
            stargazers_url: "",
            contributors_url: "",
            subscribers_url: "",
            subscription_url: "",
            commits_url: "",
            git_commits_url: "",
            comments_url: "",
            issue_comment_url: "",
            contents_url: "",
            compare_url: "",
            merges_url: "",
            archive_url: "",
            downloads_url: "",
            issues_url: "",
            pulls_url: "",
            milestones_url: "",
            notifications_url: "",
            labels_url: "",
            releases_url: "",
            deployments_url: "",
            created_at: "",
            updated_at: "",
            pushed_at: "",
            git_url: "",
            ssh_url: "",
            clone_url: "",
            svn_url: "",
            homepage: "",
            size: 0,
            stargazers_count: 0,
            watchers_count: 0,
            language: null,
            has_issues: false,
            has_projects: false,
            has_downloads: false,
            has_wiki: false,
            has_pages: false,
            forks_count: 0,
            mirror_url: null,
            archived: false,
            open_issues_count: 0,
            license: null,
            forks: 0,
            open_issues: 0,
            watchers: 0,
            default_branch: "",
            public: false,
        },
        "Issue": {
            url: "",
            repository_url: "",
            labels_url: "",
            comments_url: "",
            events_url: "",
            html_url: "",
            id: 0,
            number: 0,
            title: "",
            user: O("User"),
            labels: A(O("Label")),
            state: "",
            locked: false,
            assignee: null,
            assignees: A(undefined),
            milestone: null,
            comments: 0,
            created_at: "",
            updated_at: "",
            closed_at: U(null, ""),
            author_association: "",
            pull_request: U(null, O("PullRequest")),
            body: "",
        },
        "Label": {
            id: 0,
            url: "",
            name: "",
            color: "",
            default: false,
        },
        "PullRequest": {
            url: "",
            html_url: "",
            diff_url: "",
            patch_url: "",
        },
        "Page": {
            page_name: "",
            title: "",
            summary: null,
            action: "",
            sha: "",
            html_url: "",
        },
        "Repo": {
            id: 0,
            name: "",
            url: "",
        },
        "Gists": {
            url: "",
            forks_url: "",
            commits_url: "",
            id: "",
            git_pull_url: "",
            git_push_url: "",
            html_url: "",
            files: M(O("File")),
            public: false,
            created_at: "",
            updated_at: "",
            description: U(null, ""),
            comments: 0,
            user: null,
            comments_url: "",
            truncated: false,
            owner: U(null, O("User")),
        },
        "File": {
            filename: "",
            type: E("FileType"),
            language: U(null, ""),
            raw_url: "",
            size: 0,
        },
        "Meta": {
            verifiable_password_authentication: false,
            github_services_sha: "",
            hooks: A(""),
            git: A(""),
            pages: A(""),
            importer: A(""),
        },
        "GravatarID": [
            GravatarID.Empty,
        ],
        "UserType": [
            UserType.Bot,
            UserType.User,
        ],
        "FileType": [
            FileType.ApplicationJSON,
            FileType.ApplicationJavascript,
            FileType.ApplicationXML,
            FileType.TextHTML,
            FileType.TextPlain,
            FileType.TextXYAML,
        ],
    };
}