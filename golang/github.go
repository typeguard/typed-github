// To parse and unparse this JSON data, add this code to your project and do:
//
//    r, err := UnmarshalAPIData(bytes)
//    bytes, err = r.Marshal()
//
//    r, err := UnmarshalEmojis(bytes)
//    bytes, err = r.Marshal()
//
//    r, err := UnmarshalEvents(bytes)
//    bytes, err = r.Marshal()
//
//    r, err := UnmarshalGists(bytes)
//    bytes, err = r.Marshal()
//
//    r, err := UnmarshalMeta(bytes)
//    bytes, err = r.Marshal()

package main

import "encoding/json"

type APIData map[string]string

func UnmarshalAPIData(data []byte) (APIData, error) {
	var r APIData
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *APIData) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

type Emojis map[string]string

func UnmarshalEmojis(data []byte) (Emojis, error) {
	var r Emojis
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *Emojis) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

type Events []Event

func UnmarshalEvents(data []byte) (Events, error) {
	var r Events
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *Events) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

type Gists []Gist

func UnmarshalGists(data []byte) (Gists, error) {
	var r Gists
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *Gists) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

func UnmarshalMeta(data []byte) (Meta, error) {
	var r Meta
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *Meta) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

type Event struct {
	ID        string  `json:"id"`
	Type      string  `json:"type"`
	Actor     Actor   `json:"actor"`
	Repo      Repo    `json:"repo"`
	Payload   Payload `json:"payload"`
	Public    bool    `json:"public"`
	CreatedAt string  `json:"created_at"`
	Org       *Actor  `json:"org"`
}

type Actor struct {
	ID           int64      `json:"id"`
	Login        string     `json:"login"`
	DisplayLogin *string    `json:"display_login"`
	GravatarID   GravatarID `json:"gravatar_id"`
	URL          string     `json:"url"`
	AvatarURL    string     `json:"avatar_url"`
}

type Payload struct {
	Action       *string  `json:"action"`
	Issue        *Issue   `json:"issue"`
	Comment      *Comment `json:"comment"`
	PushID       *int64   `json:"push_id"`
	Size         *int64   `json:"size"`
	DistinctSize *int64   `json:"distinct_size"`
	Ref          *string  `json:"ref"`
	Head         *string  `json:"head"`
	Before       *string  `json:"before"`
	Commits      []Commit `json:"commits"`
	RefType      *string  `json:"ref_type"`
	MasterBranch *string  `json:"master_branch"`
	Description  *string  `json:"description"`
	PusherType   *string  `json:"pusher_type"`
	Forkee       *Forkee  `json:"forkee"`
	Pages        []Page   `json:"pages"`
}

type Comment struct {
	URL               string `json:"url"`
	HTMLURL           string `json:"html_url"`
	IssueURL          string `json:"issue_url"`
	ID                int64  `json:"id"`
	User              User   `json:"user"`
	CreatedAt         string `json:"created_at"`
	UpdatedAt         string `json:"updated_at"`
	AuthorAssociation string `json:"author_association"`
	Body              string `json:"body"`
}

type User struct {
	Login             string     `json:"login"`
	ID                int64      `json:"id"`
	AvatarURL         string     `json:"avatar_url"`
	GravatarID        GravatarID `json:"gravatar_id"`
	URL               string     `json:"url"`
	HTMLURL           string     `json:"html_url"`
	FollowersURL      string     `json:"followers_url"`
	FollowingURL      string     `json:"following_url"`
	GistsURL          string     `json:"gists_url"`
	StarredURL        string     `json:"starred_url"`
	SubscriptionsURL  string     `json:"subscriptions_url"`
	OrganizationsURL  string     `json:"organizations_url"`
	ReposURL          string     `json:"repos_url"`
	EventsURL         string     `json:"events_url"`
	ReceivedEventsURL string     `json:"received_events_url"`
	Type              UserType   `json:"type"`
	SiteAdmin         bool       `json:"site_admin"`
}

type Commit struct {
	SHA      string `json:"sha"`
	Author   Author `json:"author"`
	Message  string `json:"message"`
	Distinct bool   `json:"distinct"`
	URL      string `json:"url"`
}

type Author struct {
	Email string `json:"email"`
	Name  string `json:"name"`
}

type Forkee struct {
	ID               int64       `json:"id"`
	Name             string      `json:"name"`
	FullName         string      `json:"full_name"`
	Owner            User        `json:"owner"`
	Private          bool        `json:"private"`
	HTMLURL          string      `json:"html_url"`
	Description      string      `json:"description"`
	Fork             bool        `json:"fork"`
	URL              string      `json:"url"`
	ForksURL         string      `json:"forks_url"`
	KeysURL          string      `json:"keys_url"`
	CollaboratorsURL string      `json:"collaborators_url"`
	TeamsURL         string      `json:"teams_url"`
	HooksURL         string      `json:"hooks_url"`
	IssueEventsURL   string      `json:"issue_events_url"`
	EventsURL        string      `json:"events_url"`
	AssigneesURL     string      `json:"assignees_url"`
	BranchesURL      string      `json:"branches_url"`
	TagsURL          string      `json:"tags_url"`
	BlobsURL         string      `json:"blobs_url"`
	GitTagsURL       string      `json:"git_tags_url"`
	GitRefsURL       string      `json:"git_refs_url"`
	TreesURL         string      `json:"trees_url"`
	StatusesURL      string      `json:"statuses_url"`
	LanguagesURL     string      `json:"languages_url"`
	StargazersURL    string      `json:"stargazers_url"`
	ContributorsURL  string      `json:"contributors_url"`
	SubscribersURL   string      `json:"subscribers_url"`
	SubscriptionURL  string      `json:"subscription_url"`
	CommitsURL       string      `json:"commits_url"`
	GitCommitsURL    string      `json:"git_commits_url"`
	CommentsURL      string      `json:"comments_url"`
	IssueCommentURL  string      `json:"issue_comment_url"`
	ContentsURL      string      `json:"contents_url"`
	CompareURL       string      `json:"compare_url"`
	MergesURL        string      `json:"merges_url"`
	ArchiveURL       string      `json:"archive_url"`
	DownloadsURL     string      `json:"downloads_url"`
	IssuesURL        string      `json:"issues_url"`
	PullsURL         string      `json:"pulls_url"`
	MilestonesURL    string      `json:"milestones_url"`
	NotificationsURL string      `json:"notifications_url"`
	LabelsURL        string      `json:"labels_url"`
	ReleasesURL      string      `json:"releases_url"`
	DeploymentsURL   string      `json:"deployments_url"`
	CreatedAt        string      `json:"created_at"`
	UpdatedAt        string      `json:"updated_at"`
	PushedAt         string      `json:"pushed_at"`
	GitURL           string      `json:"git_url"`
	SSHURL           string      `json:"ssh_url"`
	CloneURL         string      `json:"clone_url"`
	SvnURL           string      `json:"svn_url"`
	Homepage         string      `json:"homepage"`
	Size             int64       `json:"size"`
	StargazersCount  int64       `json:"stargazers_count"`
	WatchersCount    int64       `json:"watchers_count"`
	Language         interface{} `json:"language"`
	HasIssues        bool        `json:"has_issues"`
	HasProjects      bool        `json:"has_projects"`
	HasDownloads     bool        `json:"has_downloads"`
	HasWiki          bool        `json:"has_wiki"`
	HasPages         bool        `json:"has_pages"`
	ForksCount       int64       `json:"forks_count"`
	MirrorURL        interface{} `json:"mirror_url"`
	Archived         bool        `json:"archived"`
	OpenIssuesCount  int64       `json:"open_issues_count"`
	License          interface{} `json:"license"`
	Forks            int64       `json:"forks"`
	OpenIssues       int64       `json:"open_issues"`
	Watchers         int64       `json:"watchers"`
	DefaultBranch    string      `json:"default_branch"`
	Public           bool        `json:"public"`
}

type Issue struct {
	URL               string        `json:"url"`
	RepositoryURL     string        `json:"repository_url"`
	LabelsURL         string        `json:"labels_url"`
	CommentsURL       string        `json:"comments_url"`
	EventsURL         string        `json:"events_url"`
	HTMLURL           string        `json:"html_url"`
	ID                int64         `json:"id"`
	Number            int64         `json:"number"`
	Title             string        `json:"title"`
	User              User          `json:"user"`
	Labels            []Label       `json:"labels"`
	State             string        `json:"state"`
	Locked            bool          `json:"locked"`
	Assignee          interface{}   `json:"assignee"`
	Assignees         []interface{} `json:"assignees"`
	Milestone         interface{}   `json:"milestone"`
	Comments          int64         `json:"comments"`
	CreatedAt         string        `json:"created_at"`
	UpdatedAt         string        `json:"updated_at"`
	ClosedAt          *string       `json:"closed_at"`
	AuthorAssociation string        `json:"author_association"`
	PullRequest       *PullRequest  `json:"pull_request"`
	Body              string        `json:"body"`
}

type Label struct {
	ID      int64  `json:"id"`
	URL     string `json:"url"`
	Name    string `json:"name"`
	Color   string `json:"color"`
	Default bool   `json:"default"`
}

type PullRequest struct {
	URL      string `json:"url"`
	HTMLURL  string `json:"html_url"`
	DiffURL  string `json:"diff_url"`
	PatchURL string `json:"patch_url"`
}

type Page struct {
	PageName string      `json:"page_name"`
	Title    string      `json:"title"`
	Summary  interface{} `json:"summary"`
	Action   string      `json:"action"`
	SHA      string      `json:"sha"`
	HTMLURL  string      `json:"html_url"`
}

type Repo struct {
	ID   int64  `json:"id"`
	Name string `json:"name"`
	URL  string `json:"url"`
}

type Gist struct {
	URL         string          `json:"url"`
	ForksURL    string          `json:"forks_url"`
	CommitsURL  string          `json:"commits_url"`
	ID          string          `json:"id"`
	GitPullURL  string          `json:"git_pull_url"`
	GitPushURL  string          `json:"git_push_url"`
	HTMLURL     string          `json:"html_url"`
	Files       map[string]File `json:"files"`
	Public      bool            `json:"public"`
	CreatedAt   string          `json:"created_at"`
	UpdatedAt   string          `json:"updated_at"`
	Description *string         `json:"description"`
	Comments    int64           `json:"comments"`
	User        interface{}     `json:"user"`
	CommentsURL string          `json:"comments_url"`
	Truncated   bool            `json:"truncated"`
	Owner       *User           `json:"owner"`
}

type File struct {
	Filename string   `json:"filename"`
	Type     FileType `json:"type"`
	Language *string  `json:"language"`
	RawURL   string   `json:"raw_url"`
	Size     int64    `json:"size"`
}

type Meta struct {
	VerifiablePasswordAuthentication bool     `json:"verifiable_password_authentication"`
	GithubServicesSHA                string   `json:"github_services_sha"`
	Hooks                            []string `json:"hooks"`
	Git                              []string `json:"git"`
	Pages                            []string `json:"pages"`
	Importer                         []string `json:"importer"`
}

type GravatarID string
const (
	Empty GravatarID = ""
)

type UserType string
const (
	Bot UserType = "Bot"
	PurpleUser UserType = "User"
)

type FileType string
const (
	ApplicationJSON FileType = "application/json"
	ApplicationJavascript FileType = "application/javascript"
	ApplicationXML FileType = "application/xml"
	TextHTML FileType = "text/html"
	TextPlain FileType = "text/plain"
	TextXYAML FileType = "text/x-yaml"
)
