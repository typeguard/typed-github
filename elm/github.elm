-- To decode the JSON data, add this file to your project, run
--
--     elm-package install NoRedInk/elm-decode-pipeline
--
-- add these imports
--
--     import Json.Decode exposing (decodeString)`);
--     import QuickType exposing (apiData, emojis, events, gists, meta)
--
-- and you're off to the races with
--
--     decodeString apiData myJsonString
--     decodeString emojis myJsonString
--     decodeString events myJsonString
--     decodeString gists myJsonString
--     decodeString meta myJsonString

module QuickType exposing
    ( APIData
    , apiDataToString
    , apiData
    , Emojis
    , emojisToString
    , emojis
    , Events
    , eventsToString
    , events
    , Gists
    , gistsToString
    , gists
    , Meta
    , metaToString
    , meta
    , Event
    , Actor
    , Payload
    , Comment
    , CommentLinks
    , HTML
    , User
    , Commit
    , Author
    , Forkee
    , License
    , Issue
    , Label
    , PullRequest
    , Base
    , PullRequestLinks
    , Repo
    , Gist
    , Files
    , Empty
    , GravatarID(..)
    , UserType(..)
    , Type(..)
    )

import Json.Decode as Jdec
import Json.Decode.Pipeline as Jpipe
import Json.Encode as Jenc
import Dict exposing (Dict, map, toList)
import Array exposing (Array, map)

type alias APIData = Dict String String

type alias Emojis = Dict String String

type alias Events = Array Event

type alias Gists = Array Gist

type alias Event =
    { id : String
    , purpleType : String
    , actor : Actor
    , repo : Repo
    , payload : Payload
    , public : Bool
    , createdAt : String
    , org : Maybe Actor
    }

type alias Actor =
    { id : Int
    , login : String
    , displayLogin : Maybe String
    , gravatarID : GravatarID
    , url : String
    , avatarURL : String
    }

type GravatarID
    = Purple

type alias Payload =
    { ref : Maybe String
    , refType : Maybe String
    , masterBranch : Maybe String
    , description : Maybe String
    , pusherType : Maybe String
    , pushID : Maybe Int
    , size : Maybe Int
    , distinctSize : Maybe Int
    , head : Maybe String
    , before : Maybe String
    , commits : Maybe (Array Commit)
    , forkee : Maybe Forkee
    , action : Maybe String
    , issue : Maybe Issue
    , number : Maybe Int
    , pullRequest : Maybe PullRequest
    , comment : Maybe Comment
    }

type alias Comment =
    { url : String
    , pullRequestReviewID : Int
    , id : Int
    , diffHunk : String
    , path : String
    , position : Int
    , originalPosition : Int
    , commitID : String
    , originalCommitID : String
    , user : User
    , body : String
    , createdAt : String
    , updatedAt : String
    , htmlURL : String
    , pullRequestURL : String
    , authorAssociation : String
    , links : CommentLinks
    }

type alias CommentLinks =
    { self : HTML
    , html : HTML
    , pullRequest : HTML
    }

type alias HTML =
    { href : String
    }

type alias User =
    { login : String
    , id : Int
    , avatarURL : String
    , gravatarID : GravatarID
    , url : String
    , htmlURL : String
    , followersURL : String
    , followingURL : String
    , gistsURL : String
    , starredURL : String
    , subscriptionsURL : String
    , organizationsURL : String
    , reposURL : String
    , eventsURL : String
    , receivedEventsURL : String
    , purpleType : UserType
    , siteAdmin : Bool
    }

type UserType
    = Organization
    | PurpleUser

type alias Commit =
    { sha : String
    , author : Author
    , message : String
    , distinct : Bool
    , url : String
    }

type alias Author =
    { email : String
    , name : String
    }

type alias Forkee =
    { id : Int
    , name : String
    , fullName : String
    , owner : User
    , private : Bool
    , htmlURL : String
    , description : Maybe String
    , fork : Bool
    , url : String
    , forksURL : String
    , keysURL : String
    , collaboratorsURL : String
    , teamsURL : String
    , hooksURL : String
    , issueEventsURL : String
    , eventsURL : String
    , assigneesURL : String
    , branchesURL : String
    , tagsURL : String
    , blobsURL : String
    , gitTagsURL : String
    , gitRefsURL : String
    , treesURL : String
    , statusesURL : String
    , languagesURL : String
    , stargazersURL : String
    , contributorsURL : String
    , subscribersURL : String
    , subscriptionURL : String
    , commitsURL : String
    , gitCommitsURL : String
    , commentsURL : String
    , issueCommentURL : String
    , contentsURL : String
    , compareURL : String
    , mergesURL : String
    , archiveURL : String
    , downloadsURL : String
    , issuesURL : String
    , pullsURL : String
    , milestonesURL : String
    , notificationsURL : String
    , labelsURL : String
    , releasesURL : String
    , deploymentsURL : String
    , createdAt : String
    , updatedAt : String
    , pushedAt : String
    , gitURL : String
    , sshURL : String
    , cloneURL : String
    , svnURL : String
    , homepage : Maybe String
    , size : Int
    , stargazersCount : Int
    , watchersCount : Int
    , language : Maybe String
    , hasIssues : Bool
    , hasProjects : Bool
    , hasDownloads : Bool
    , hasWiki : Bool
    , hasPages : Bool
    , forksCount : Int
    , mirrorURL : ()
    , archived : Bool
    , openIssuesCount : Int
    , license : Maybe License
    , forks : Int
    , openIssues : Int
    , watchers : Int
    , defaultBranch : String
    , public : Maybe Bool
    }

type alias License =
    { key : String
    , name : String
    , spdxID : Maybe String
    , url : Maybe String
    }

type alias Issue =
    { url : String
    , repositoryURL : String
    , labelsURL : String
    , commentsURL : String
    , eventsURL : String
    , htmlURL : String
    , id : Int
    , number : Int
    , title : String
    , user : User
    , labels : Array Label
    , state : String
    , locked : Bool
    , assignee : Maybe User
    , assignees : Array User
    , milestone : ()
    , comments : Int
    , createdAt : String
    , updatedAt : String
    , closedAt : Maybe String
    , authorAssociation : String
    , body : String
    }

type alias Label =
    { id : Int
    , url : String
    , name : String
    , color : String
    , default : Bool
    }

type alias PullRequest =
    { url : String
    , id : Int
    , htmlURL : String
    , diffURL : String
    , patchURL : String
    , issueURL : String
    , number : Int
    , state : String
    , locked : Bool
    , title : String
    , user : User
    , body : String
    , createdAt : String
    , updatedAt : String
    , closedAt : ()
    , mergedAt : ()
    , mergeCommitSHA : Maybe String
    , assignee : ()
    , assignees : Array Jdec.Value
    , requestedReviewers : Array Jdec.Value
    , requestedTeams : Array Jdec.Value
    , milestone : ()
    , commitsURL : String
    , reviewCommentsURL : String
    , reviewCommentURL : String
    , commentsURL : String
    , statusesURL : String
    , head : Base
    , base : Base
    , links : PullRequestLinks
    , authorAssociation : String
    , merged : Maybe Bool
    , mergeable : Maybe ()
    , rebaseable : Maybe ()
    , mergeableState : Maybe String
    , mergedBy : Maybe ()
    , comments : Maybe Int
    , reviewComments : Maybe Int
    , maintainerCanModify : Maybe Bool
    , commits : Maybe Int
    , additions : Maybe Int
    , deletions : Maybe Int
    , changedFiles : Maybe Int
    }

type alias Base =
    { label : String
    , ref : String
    , sha : String
    , user : User
    , repo : Forkee
    }

type alias PullRequestLinks =
    { self : HTML
    , html : HTML
    , issue : HTML
    , comments : HTML
    , reviewComments : HTML
    , reviewComment : HTML
    , commits : HTML
    , statuses : HTML
    }

type alias Repo =
    { id : Int
    , name : String
    , url : String
    }

type alias Gist =
    { url : String
    , forksURL : String
    , commitsURL : String
    , id : String
    , gitPullURL : String
    , gitPushURL : String
    , htmlURL : String
    , files : Files
    , public : Bool
    , createdAt : String
    , updatedAt : String
    , description : Maybe String
    , comments : Int
    , user : ()
    , commentsURL : String
    , truncated : Bool
    , owner : Maybe User
    }

type alias Files =
    { gistfile1Txt : Maybe Empty
    , ruwikiruscorporaUposSkipgram300_2_2018_B2B090A678A3D66B62Ddf890Eefe5F26ConfigJSON : Maybe Empty
    , ruwikiruscorporaUposSkipgram300_2_2018_B2B090A678A3D66B62Ddf890Eefe5F26MetadataTsv : Maybe Empty
    , ruwikiruscorporaUposSkipgram300_2_2018_B2B090A678A3D66B62Ddf890Eefe5F26TensorTsv : Maybe Empty
    , configJSON : Maybe Empty
    , empty : Maybe Empty
    , the6MnUZy7Z : Maybe Empty
    , leDbreatheIno : Maybe Empty
    , i3BlocksSpotify : Maybe Empty
    , readmeMd : Maybe Empty
    , decryptFileSh : Maybe Empty
    , encryptFileSh : Maybe Empty
    , limitedNoOfRecordsJava : Maybe Empty
    , clientApp : Maybe Empty
    , serverAp : Maybe Empty
    , ruwikiruscorporaUposSkipgram300_2_2018_Fafdb1F6D6866Fb229E806Fc354B7458ConfigJSON : Maybe Empty
    }

type alias Empty =
    { filename : String
    , purpleType : Type
    , language : Maybe String
    , rawURL : String
    , size : Int
    }

type Type
    = ApplicationJSON
    | ApplicationXSh
    | TextPlain
    | TextTabSeparatedValues

type alias User =
    { login : String
    , id : Int
    , avatarURL : String
    , gravatarID : GravatarID
    , url : String
    , htmlURL : String
    , followersURL : String
    , followingURL : String
    , gistsURL : String
    , starredURL : String
    , subscriptionsURL : String
    , organizationsURL : String
    , reposURL : String
    , eventsURL : String
    , receivedEventsURL : String
    , purpleType : UserType
    , siteAdmin : Bool
    }

type GravatarID
    = Purple

type UserType
    = Organization
    | PurpleUser

type alias Meta =
    { verifiablePasswordAuthentication : Bool
    , githubServicesSHA : String
    , hooks : Array String
    , git : Array String
    , pages : Array String
    , importer : Array String
    }

-- decoders and encoders

apiData : Jdec.Decoder APIData
apiData = Jdec.dict Jdec.string

apiDataToString : APIData -> String
apiDataToString r = Jenc.encode 0 (makeDictEncoder Jenc.string r)

emojis : Jdec.Decoder Emojis
emojis = Jdec.dict Jdec.string

emojisToString : Emojis -> String
emojisToString r = Jenc.encode 0 (makeDictEncoder Jenc.string r)

events : Jdec.Decoder Events
events = Jdec.array event

eventsToString : Events -> String
eventsToString r = Jenc.encode 0 (makeArrayEncoder encodeEvent r)

gists : Jdec.Decoder Gists
gists = Jdec.array gist

gistsToString : Gists -> String
gistsToString r = Jenc.encode 0 (makeArrayEncoder encodeGist r)

metaToString : Meta -> String
metaToString r = Jenc.encode 0 (encodeMeta r)

event : Jdec.Decoder Event
event =
    Jpipe.decode Event
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.required "type" Jdec.string
        |> Jpipe.required "actor" actor
        |> Jpipe.required "repo" repo
        |> Jpipe.required "payload" payload
        |> Jpipe.required "public" Jdec.bool
        |> Jpipe.required "created_at" Jdec.string
        |> Jpipe.optional "org" (Jdec.nullable actor) Nothing

encodeEvent : Event -> Jenc.Value
encodeEvent x =
    Jenc.object
        [ ("id", Jenc.string x.id)
        , ("type", Jenc.string x.purpleType)
        , ("actor", encodeActor x.actor)
        , ("repo", encodeRepo x.repo)
        , ("payload", encodePayload x.payload)
        , ("public", Jenc.bool x.public)
        , ("created_at", Jenc.string x.createdAt)
        , ("org", makeNullableEncoder encodeActor x.org)
        ]

actor : Jdec.Decoder Actor
actor =
    Jpipe.decode Actor
        |> Jpipe.required "id" Jdec.int
        |> Jpipe.required "login" Jdec.string
        |> Jpipe.optional "display_login" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.required "gravatar_id" gravatarID
        |> Jpipe.required "url" Jdec.string
        |> Jpipe.required "avatar_url" Jdec.string

encodeActor : Actor -> Jenc.Value
encodeActor x =
    Jenc.object
        [ ("id", Jenc.int x.id)
        , ("login", Jenc.string x.login)
        , ("display_login", makeNullableEncoder Jenc.string x.displayLogin)
        , ("gravatar_id", encodeGravatarID x.gravatarID)
        , ("url", Jenc.string x.url)
        , ("avatar_url", Jenc.string x.avatarURL)
        ]

gravatarID : Jdec.Decoder GravatarID
gravatarID =
    Jdec.string
        |> Jdec.andThen (\str ->
            case str of
                "" -> Jdec.succeed Purple
                somethingElse -> Jdec.fail <| "Invalid GravatarID: " ++ somethingElse
        )

encodeGravatarID : GravatarID -> Jenc.Value
encodeGravatarID x = case x of
    Purple -> Jenc.string ""

payload : Jdec.Decoder Payload
payload =
    Jpipe.decode Payload
        |> Jpipe.optional "ref" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "ref_type" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "master_branch" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "description" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "pusher_type" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "push_id" (Jdec.nullable Jdec.int) Nothing
        |> Jpipe.optional "size" (Jdec.nullable Jdec.int) Nothing
        |> Jpipe.optional "distinct_size" (Jdec.nullable Jdec.int) Nothing
        |> Jpipe.optional "head" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "before" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "commits" (Jdec.nullable (Jdec.array commit)) Nothing
        |> Jpipe.optional "forkee" (Jdec.nullable forkee) Nothing
        |> Jpipe.optional "action" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "issue" (Jdec.nullable issue) Nothing
        |> Jpipe.optional "number" (Jdec.nullable Jdec.int) Nothing
        |> Jpipe.optional "pull_request" (Jdec.nullable pullRequest) Nothing
        |> Jpipe.optional "comment" (Jdec.nullable comment) Nothing

encodePayload : Payload -> Jenc.Value
encodePayload x =
    Jenc.object
        [ ("ref", makeNullableEncoder Jenc.string x.ref)
        , ("ref_type", makeNullableEncoder Jenc.string x.refType)
        , ("master_branch", makeNullableEncoder Jenc.string x.masterBranch)
        , ("description", makeNullableEncoder Jenc.string x.description)
        , ("pusher_type", makeNullableEncoder Jenc.string x.pusherType)
        , ("push_id", makeNullableEncoder Jenc.int x.pushID)
        , ("size", makeNullableEncoder Jenc.int x.size)
        , ("distinct_size", makeNullableEncoder Jenc.int x.distinctSize)
        , ("head", makeNullableEncoder Jenc.string x.head)
        , ("before", makeNullableEncoder Jenc.string x.before)
        , ("commits", makeNullableEncoder (makeArrayEncoder encodeCommit) x.commits)
        , ("forkee", makeNullableEncoder encodeForkee x.forkee)
        , ("action", makeNullableEncoder Jenc.string x.action)
        , ("issue", makeNullableEncoder encodeIssue x.issue)
        , ("number", makeNullableEncoder Jenc.int x.number)
        , ("pull_request", makeNullableEncoder encodePullRequest x.pullRequest)
        , ("comment", makeNullableEncoder encodeComment x.comment)
        ]

comment : Jdec.Decoder Comment
comment =
    Jpipe.decode Comment
        |> Jpipe.required "url" Jdec.string
        |> Jpipe.required "pull_request_review_id" Jdec.int
        |> Jpipe.required "id" Jdec.int
        |> Jpipe.required "diff_hunk" Jdec.string
        |> Jpipe.required "path" Jdec.string
        |> Jpipe.required "position" Jdec.int
        |> Jpipe.required "original_position" Jdec.int
        |> Jpipe.required "commit_id" Jdec.string
        |> Jpipe.required "original_commit_id" Jdec.string
        |> Jpipe.required "user" user
        |> Jpipe.required "body" Jdec.string
        |> Jpipe.required "created_at" Jdec.string
        |> Jpipe.required "updated_at" Jdec.string
        |> Jpipe.required "html_url" Jdec.string
        |> Jpipe.required "pull_request_url" Jdec.string
        |> Jpipe.required "author_association" Jdec.string
        |> Jpipe.required "_links" commentLinks

encodeComment : Comment -> Jenc.Value
encodeComment x =
    Jenc.object
        [ ("url", Jenc.string x.url)
        , ("pull_request_review_id", Jenc.int x.pullRequestReviewID)
        , ("id", Jenc.int x.id)
        , ("diff_hunk", Jenc.string x.diffHunk)
        , ("path", Jenc.string x.path)
        , ("position", Jenc.int x.position)
        , ("original_position", Jenc.int x.originalPosition)
        , ("commit_id", Jenc.string x.commitID)
        , ("original_commit_id", Jenc.string x.originalCommitID)
        , ("user", encodeUser x.user)
        , ("body", Jenc.string x.body)
        , ("created_at", Jenc.string x.createdAt)
        , ("updated_at", Jenc.string x.updatedAt)
        , ("html_url", Jenc.string x.htmlURL)
        , ("pull_request_url", Jenc.string x.pullRequestURL)
        , ("author_association", Jenc.string x.authorAssociation)
        , ("_links", encodeCommentLinks x.links)
        ]

commentLinks : Jdec.Decoder CommentLinks
commentLinks =
    Jpipe.decode CommentLinks
        |> Jpipe.required "self" html
        |> Jpipe.required "html" html
        |> Jpipe.required "pull_request" html

encodeCommentLinks : CommentLinks -> Jenc.Value
encodeCommentLinks x =
    Jenc.object
        [ ("self", encodeHTML x.self)
        , ("html", encodeHTML x.html)
        , ("pull_request", encodeHTML x.pullRequest)
        ]

html : Jdec.Decoder HTML
html =
    Jpipe.decode HTML
        |> Jpipe.required "href" Jdec.string

encodeHTML : HTML -> Jenc.Value
encodeHTML x =
    Jenc.object
        [ ("href", Jenc.string x.href)
        ]

user : Jdec.Decoder User
user =
    Jpipe.decode User
        |> Jpipe.required "login" Jdec.string
        |> Jpipe.required "id" Jdec.int
        |> Jpipe.required "avatar_url" Jdec.string
        |> Jpipe.required "gravatar_id" gravatarID
        |> Jpipe.required "url" Jdec.string
        |> Jpipe.required "html_url" Jdec.string
        |> Jpipe.required "followers_url" Jdec.string
        |> Jpipe.required "following_url" Jdec.string
        |> Jpipe.required "gists_url" Jdec.string
        |> Jpipe.required "starred_url" Jdec.string
        |> Jpipe.required "subscriptions_url" Jdec.string
        |> Jpipe.required "organizations_url" Jdec.string
        |> Jpipe.required "repos_url" Jdec.string
        |> Jpipe.required "events_url" Jdec.string
        |> Jpipe.required "received_events_url" Jdec.string
        |> Jpipe.required "type" userType
        |> Jpipe.required "site_admin" Jdec.bool

encodeUser : User -> Jenc.Value
encodeUser x =
    Jenc.object
        [ ("login", Jenc.string x.login)
        , ("id", Jenc.int x.id)
        , ("avatar_url", Jenc.string x.avatarURL)
        , ("gravatar_id", encodeGravatarID x.gravatarID)
        , ("url", Jenc.string x.url)
        , ("html_url", Jenc.string x.htmlURL)
        , ("followers_url", Jenc.string x.followersURL)
        , ("following_url", Jenc.string x.followingURL)
        , ("gists_url", Jenc.string x.gistsURL)
        , ("starred_url", Jenc.string x.starredURL)
        , ("subscriptions_url", Jenc.string x.subscriptionsURL)
        , ("organizations_url", Jenc.string x.organizationsURL)
        , ("repos_url", Jenc.string x.reposURL)
        , ("events_url", Jenc.string x.eventsURL)
        , ("received_events_url", Jenc.string x.receivedEventsURL)
        , ("type", encodeUserType x.purpleType)
        , ("site_admin", Jenc.bool x.siteAdmin)
        ]

userType : Jdec.Decoder UserType
userType =
    Jdec.string
        |> Jdec.andThen (\str ->
            case str of
                "Organization" -> Jdec.succeed Organization
                "User" -> Jdec.succeed PurpleUser
                somethingElse -> Jdec.fail <| "Invalid UserType: " ++ somethingElse
        )

encodeUserType : UserType -> Jenc.Value
encodeUserType x = case x of
    Organization -> Jenc.string "Organization"
    PurpleUser -> Jenc.string "User"

commit : Jdec.Decoder Commit
commit =
    Jpipe.decode Commit
        |> Jpipe.required "sha" Jdec.string
        |> Jpipe.required "author" author
        |> Jpipe.required "message" Jdec.string
        |> Jpipe.required "distinct" Jdec.bool
        |> Jpipe.required "url" Jdec.string

encodeCommit : Commit -> Jenc.Value
encodeCommit x =
    Jenc.object
        [ ("sha", Jenc.string x.sha)
        , ("author", encodeAuthor x.author)
        , ("message", Jenc.string x.message)
        , ("distinct", Jenc.bool x.distinct)
        , ("url", Jenc.string x.url)
        ]

author : Jdec.Decoder Author
author =
    Jpipe.decode Author
        |> Jpipe.required "email" Jdec.string
        |> Jpipe.required "name" Jdec.string

encodeAuthor : Author -> Jenc.Value
encodeAuthor x =
    Jenc.object
        [ ("email", Jenc.string x.email)
        , ("name", Jenc.string x.name)
        ]

forkee : Jdec.Decoder Forkee
forkee =
    Jpipe.decode Forkee
        |> Jpipe.required "id" Jdec.int
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "full_name" Jdec.string
        |> Jpipe.required "owner" user
        |> Jpipe.required "private" Jdec.bool
        |> Jpipe.required "html_url" Jdec.string
        |> Jpipe.optional "description" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.required "fork" Jdec.bool
        |> Jpipe.required "url" Jdec.string
        |> Jpipe.required "forks_url" Jdec.string
        |> Jpipe.required "keys_url" Jdec.string
        |> Jpipe.required "collaborators_url" Jdec.string
        |> Jpipe.required "teams_url" Jdec.string
        |> Jpipe.required "hooks_url" Jdec.string
        |> Jpipe.required "issue_events_url" Jdec.string
        |> Jpipe.required "events_url" Jdec.string
        |> Jpipe.required "assignees_url" Jdec.string
        |> Jpipe.required "branches_url" Jdec.string
        |> Jpipe.required "tags_url" Jdec.string
        |> Jpipe.required "blobs_url" Jdec.string
        |> Jpipe.required "git_tags_url" Jdec.string
        |> Jpipe.required "git_refs_url" Jdec.string
        |> Jpipe.required "trees_url" Jdec.string
        |> Jpipe.required "statuses_url" Jdec.string
        |> Jpipe.required "languages_url" Jdec.string
        |> Jpipe.required "stargazers_url" Jdec.string
        |> Jpipe.required "contributors_url" Jdec.string
        |> Jpipe.required "subscribers_url" Jdec.string
        |> Jpipe.required "subscription_url" Jdec.string
        |> Jpipe.required "commits_url" Jdec.string
        |> Jpipe.required "git_commits_url" Jdec.string
        |> Jpipe.required "comments_url" Jdec.string
        |> Jpipe.required "issue_comment_url" Jdec.string
        |> Jpipe.required "contents_url" Jdec.string
        |> Jpipe.required "compare_url" Jdec.string
        |> Jpipe.required "merges_url" Jdec.string
        |> Jpipe.required "archive_url" Jdec.string
        |> Jpipe.required "downloads_url" Jdec.string
        |> Jpipe.required "issues_url" Jdec.string
        |> Jpipe.required "pulls_url" Jdec.string
        |> Jpipe.required "milestones_url" Jdec.string
        |> Jpipe.required "notifications_url" Jdec.string
        |> Jpipe.required "labels_url" Jdec.string
        |> Jpipe.required "releases_url" Jdec.string
        |> Jpipe.required "deployments_url" Jdec.string
        |> Jpipe.required "created_at" Jdec.string
        |> Jpipe.required "updated_at" Jdec.string
        |> Jpipe.required "pushed_at" Jdec.string
        |> Jpipe.required "git_url" Jdec.string
        |> Jpipe.required "ssh_url" Jdec.string
        |> Jpipe.required "clone_url" Jdec.string
        |> Jpipe.required "svn_url" Jdec.string
        |> Jpipe.optional "homepage" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.required "size" Jdec.int
        |> Jpipe.required "stargazers_count" Jdec.int
        |> Jpipe.required "watchers_count" Jdec.int
        |> Jpipe.optional "language" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.required "has_issues" Jdec.bool
        |> Jpipe.required "has_projects" Jdec.bool
        |> Jpipe.required "has_downloads" Jdec.bool
        |> Jpipe.required "has_wiki" Jdec.bool
        |> Jpipe.required "has_pages" Jdec.bool
        |> Jpipe.required "forks_count" Jdec.int
        |> Jpipe.optional "mirror_url" (Jdec.null ()) ()
        |> Jpipe.required "archived" Jdec.bool
        |> Jpipe.required "open_issues_count" Jdec.int
        |> Jpipe.optional "license" (Jdec.nullable license) Nothing
        |> Jpipe.required "forks" Jdec.int
        |> Jpipe.required "open_issues" Jdec.int
        |> Jpipe.required "watchers" Jdec.int
        |> Jpipe.required "default_branch" Jdec.string
        |> Jpipe.optional "public" (Jdec.nullable Jdec.bool) Nothing

encodeForkee : Forkee -> Jenc.Value
encodeForkee x =
    Jenc.object
        [ ("id", Jenc.int x.id)
        , ("name", Jenc.string x.name)
        , ("full_name", Jenc.string x.fullName)
        , ("owner", encodeUser x.owner)
        , ("private", Jenc.bool x.private)
        , ("html_url", Jenc.string x.htmlURL)
        , ("description", makeNullableEncoder Jenc.string x.description)
        , ("fork", Jenc.bool x.fork)
        , ("url", Jenc.string x.url)
        , ("forks_url", Jenc.string x.forksURL)
        , ("keys_url", Jenc.string x.keysURL)
        , ("collaborators_url", Jenc.string x.collaboratorsURL)
        , ("teams_url", Jenc.string x.teamsURL)
        , ("hooks_url", Jenc.string x.hooksURL)
        , ("issue_events_url", Jenc.string x.issueEventsURL)
        , ("events_url", Jenc.string x.eventsURL)
        , ("assignees_url", Jenc.string x.assigneesURL)
        , ("branches_url", Jenc.string x.branchesURL)
        , ("tags_url", Jenc.string x.tagsURL)
        , ("blobs_url", Jenc.string x.blobsURL)
        , ("git_tags_url", Jenc.string x.gitTagsURL)
        , ("git_refs_url", Jenc.string x.gitRefsURL)
        , ("trees_url", Jenc.string x.treesURL)
        , ("statuses_url", Jenc.string x.statusesURL)
        , ("languages_url", Jenc.string x.languagesURL)
        , ("stargazers_url", Jenc.string x.stargazersURL)
        , ("contributors_url", Jenc.string x.contributorsURL)
        , ("subscribers_url", Jenc.string x.subscribersURL)
        , ("subscription_url", Jenc.string x.subscriptionURL)
        , ("commits_url", Jenc.string x.commitsURL)
        , ("git_commits_url", Jenc.string x.gitCommitsURL)
        , ("comments_url", Jenc.string x.commentsURL)
        , ("issue_comment_url", Jenc.string x.issueCommentURL)
        , ("contents_url", Jenc.string x.contentsURL)
        , ("compare_url", Jenc.string x.compareURL)
        , ("merges_url", Jenc.string x.mergesURL)
        , ("archive_url", Jenc.string x.archiveURL)
        , ("downloads_url", Jenc.string x.downloadsURL)
        , ("issues_url", Jenc.string x.issuesURL)
        , ("pulls_url", Jenc.string x.pullsURL)
        , ("milestones_url", Jenc.string x.milestonesURL)
        , ("notifications_url", Jenc.string x.notificationsURL)
        , ("labels_url", Jenc.string x.labelsURL)
        , ("releases_url", Jenc.string x.releasesURL)
        , ("deployments_url", Jenc.string x.deploymentsURL)
        , ("created_at", Jenc.string x.createdAt)
        , ("updated_at", Jenc.string x.updatedAt)
        , ("pushed_at", Jenc.string x.pushedAt)
        , ("git_url", Jenc.string x.gitURL)
        , ("ssh_url", Jenc.string x.sshURL)
        , ("clone_url", Jenc.string x.cloneURL)
        , ("svn_url", Jenc.string x.svnURL)
        , ("homepage", makeNullableEncoder Jenc.string x.homepage)
        , ("size", Jenc.int x.size)
        , ("stargazers_count", Jenc.int x.stargazersCount)
        , ("watchers_count", Jenc.int x.watchersCount)
        , ("language", makeNullableEncoder Jenc.string x.language)
        , ("has_issues", Jenc.bool x.hasIssues)
        , ("has_projects", Jenc.bool x.hasProjects)
        , ("has_downloads", Jenc.bool x.hasDownloads)
        , ("has_wiki", Jenc.bool x.hasWiki)
        , ("has_pages", Jenc.bool x.hasPages)
        , ("forks_count", Jenc.int x.forksCount)
        , ("mirror_url", always Jenc.null x.mirrorURL)
        , ("archived", Jenc.bool x.archived)
        , ("open_issues_count", Jenc.int x.openIssuesCount)
        , ("license", makeNullableEncoder encodeLicense x.license)
        , ("forks", Jenc.int x.forks)
        , ("open_issues", Jenc.int x.openIssues)
        , ("watchers", Jenc.int x.watchers)
        , ("default_branch", Jenc.string x.defaultBranch)
        , ("public", makeNullableEncoder Jenc.bool x.public)
        ]

license : Jdec.Decoder License
license =
    Jpipe.decode License
        |> Jpipe.required "key" Jdec.string
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.optional "spdx_id" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "url" (Jdec.nullable Jdec.string) Nothing

encodeLicense : License -> Jenc.Value
encodeLicense x =
    Jenc.object
        [ ("key", Jenc.string x.key)
        , ("name", Jenc.string x.name)
        , ("spdx_id", makeNullableEncoder Jenc.string x.spdxID)
        , ("url", makeNullableEncoder Jenc.string x.url)
        ]

issue : Jdec.Decoder Issue
issue =
    Jpipe.decode Issue
        |> Jpipe.required "url" Jdec.string
        |> Jpipe.required "repository_url" Jdec.string
        |> Jpipe.required "labels_url" Jdec.string
        |> Jpipe.required "comments_url" Jdec.string
        |> Jpipe.required "events_url" Jdec.string
        |> Jpipe.required "html_url" Jdec.string
        |> Jpipe.required "id" Jdec.int
        |> Jpipe.required "number" Jdec.int
        |> Jpipe.required "title" Jdec.string
        |> Jpipe.required "user" user
        |> Jpipe.required "labels" (Jdec.array label)
        |> Jpipe.required "state" Jdec.string
        |> Jpipe.required "locked" Jdec.bool
        |> Jpipe.optional "assignee" (Jdec.nullable user) Nothing
        |> Jpipe.required "assignees" (Jdec.array user)
        |> Jpipe.optional "milestone" (Jdec.null ()) ()
        |> Jpipe.required "comments" Jdec.int
        |> Jpipe.required "created_at" Jdec.string
        |> Jpipe.required "updated_at" Jdec.string
        |> Jpipe.optional "closed_at" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.required "author_association" Jdec.string
        |> Jpipe.required "body" Jdec.string

encodeIssue : Issue -> Jenc.Value
encodeIssue x =
    Jenc.object
        [ ("url", Jenc.string x.url)
        , ("repository_url", Jenc.string x.repositoryURL)
        , ("labels_url", Jenc.string x.labelsURL)
        , ("comments_url", Jenc.string x.commentsURL)
        , ("events_url", Jenc.string x.eventsURL)
        , ("html_url", Jenc.string x.htmlURL)
        , ("id", Jenc.int x.id)
        , ("number", Jenc.int x.number)
        , ("title", Jenc.string x.title)
        , ("user", encodeUser x.user)
        , ("labels", makeArrayEncoder encodeLabel x.labels)
        , ("state", Jenc.string x.state)
        , ("locked", Jenc.bool x.locked)
        , ("assignee", makeNullableEncoder encodeUser x.assignee)
        , ("assignees", makeArrayEncoder encodeUser x.assignees)
        , ("milestone", always Jenc.null x.milestone)
        , ("comments", Jenc.int x.comments)
        , ("created_at", Jenc.string x.createdAt)
        , ("updated_at", Jenc.string x.updatedAt)
        , ("closed_at", makeNullableEncoder Jenc.string x.closedAt)
        , ("author_association", Jenc.string x.authorAssociation)
        , ("body", Jenc.string x.body)
        ]

label : Jdec.Decoder Label
label =
    Jpipe.decode Label
        |> Jpipe.required "id" Jdec.int
        |> Jpipe.required "url" Jdec.string
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "color" Jdec.string
        |> Jpipe.required "default" Jdec.bool

encodeLabel : Label -> Jenc.Value
encodeLabel x =
    Jenc.object
        [ ("id", Jenc.int x.id)
        , ("url", Jenc.string x.url)
        , ("name", Jenc.string x.name)
        , ("color", Jenc.string x.color)
        , ("default", Jenc.bool x.default)
        ]

pullRequest : Jdec.Decoder PullRequest
pullRequest =
    Jpipe.decode PullRequest
        |> Jpipe.required "url" Jdec.string
        |> Jpipe.required "id" Jdec.int
        |> Jpipe.required "html_url" Jdec.string
        |> Jpipe.required "diff_url" Jdec.string
        |> Jpipe.required "patch_url" Jdec.string
        |> Jpipe.required "issue_url" Jdec.string
        |> Jpipe.required "number" Jdec.int
        |> Jpipe.required "state" Jdec.string
        |> Jpipe.required "locked" Jdec.bool
        |> Jpipe.required "title" Jdec.string
        |> Jpipe.required "user" user
        |> Jpipe.required "body" Jdec.string
        |> Jpipe.required "created_at" Jdec.string
        |> Jpipe.required "updated_at" Jdec.string
        |> Jpipe.optional "closed_at" (Jdec.null ()) ()
        |> Jpipe.optional "merged_at" (Jdec.null ()) ()
        |> Jpipe.optional "merge_commit_sha" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "assignee" (Jdec.null ()) ()
        |> Jpipe.required "assignees" (Jdec.array Jdec.value)
        |> Jpipe.required "requested_reviewers" (Jdec.array Jdec.value)
        |> Jpipe.required "requested_teams" (Jdec.array Jdec.value)
        |> Jpipe.optional "milestone" (Jdec.null ()) ()
        |> Jpipe.required "commits_url" Jdec.string
        |> Jpipe.required "review_comments_url" Jdec.string
        |> Jpipe.required "review_comment_url" Jdec.string
        |> Jpipe.required "comments_url" Jdec.string
        |> Jpipe.required "statuses_url" Jdec.string
        |> Jpipe.required "head" base
        |> Jpipe.required "base" base
        |> Jpipe.required "_links" pullRequestLinks
        |> Jpipe.required "author_association" Jdec.string
        |> Jpipe.optional "merged" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "mergeable" (Jdec.nullable (Jdec.null ())) Nothing
        |> Jpipe.optional "rebaseable" (Jdec.nullable (Jdec.null ())) Nothing
        |> Jpipe.optional "mergeable_state" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "merged_by" (Jdec.nullable (Jdec.null ())) Nothing
        |> Jpipe.optional "comments" (Jdec.nullable Jdec.int) Nothing
        |> Jpipe.optional "review_comments" (Jdec.nullable Jdec.int) Nothing
        |> Jpipe.optional "maintainer_can_modify" (Jdec.nullable Jdec.bool) Nothing
        |> Jpipe.optional "commits" (Jdec.nullable Jdec.int) Nothing
        |> Jpipe.optional "additions" (Jdec.nullable Jdec.int) Nothing
        |> Jpipe.optional "deletions" (Jdec.nullable Jdec.int) Nothing
        |> Jpipe.optional "changed_files" (Jdec.nullable Jdec.int) Nothing

encodePullRequest : PullRequest -> Jenc.Value
encodePullRequest x =
    Jenc.object
        [ ("url", Jenc.string x.url)
        , ("id", Jenc.int x.id)
        , ("html_url", Jenc.string x.htmlURL)
        , ("diff_url", Jenc.string x.diffURL)
        , ("patch_url", Jenc.string x.patchURL)
        , ("issue_url", Jenc.string x.issueURL)
        , ("number", Jenc.int x.number)
        , ("state", Jenc.string x.state)
        , ("locked", Jenc.bool x.locked)
        , ("title", Jenc.string x.title)
        , ("user", encodeUser x.user)
        , ("body", Jenc.string x.body)
        , ("created_at", Jenc.string x.createdAt)
        , ("updated_at", Jenc.string x.updatedAt)
        , ("closed_at", always Jenc.null x.closedAt)
        , ("merged_at", always Jenc.null x.mergedAt)
        , ("merge_commit_sha", makeNullableEncoder Jenc.string x.mergeCommitSHA)
        , ("assignee", always Jenc.null x.assignee)
        , ("assignees", makeArrayEncoder identity x.assignees)
        , ("requested_reviewers", makeArrayEncoder identity x.requestedReviewers)
        , ("requested_teams", makeArrayEncoder identity x.requestedTeams)
        , ("milestone", always Jenc.null x.milestone)
        , ("commits_url", Jenc.string x.commitsURL)
        , ("review_comments_url", Jenc.string x.reviewCommentsURL)
        , ("review_comment_url", Jenc.string x.reviewCommentURL)
        , ("comments_url", Jenc.string x.commentsURL)
        , ("statuses_url", Jenc.string x.statusesURL)
        , ("head", encodeBase x.head)
        , ("base", encodeBase x.base)
        , ("_links", encodePullRequestLinks x.links)
        , ("author_association", Jenc.string x.authorAssociation)
        , ("merged", makeNullableEncoder Jenc.bool x.merged)
        , ("mergeable", makeNullableEncoder (always Jenc.null) x.mergeable)
        , ("rebaseable", makeNullableEncoder (always Jenc.null) x.rebaseable)
        , ("mergeable_state", makeNullableEncoder Jenc.string x.mergeableState)
        , ("merged_by", makeNullableEncoder (always Jenc.null) x.mergedBy)
        , ("comments", makeNullableEncoder Jenc.int x.comments)
        , ("review_comments", makeNullableEncoder Jenc.int x.reviewComments)
        , ("maintainer_can_modify", makeNullableEncoder Jenc.bool x.maintainerCanModify)
        , ("commits", makeNullableEncoder Jenc.int x.commits)
        , ("additions", makeNullableEncoder Jenc.int x.additions)
        , ("deletions", makeNullableEncoder Jenc.int x.deletions)
        , ("changed_files", makeNullableEncoder Jenc.int x.changedFiles)
        ]

base : Jdec.Decoder Base
base =
    Jpipe.decode Base
        |> Jpipe.required "label" Jdec.string
        |> Jpipe.required "ref" Jdec.string
        |> Jpipe.required "sha" Jdec.string
        |> Jpipe.required "user" user
        |> Jpipe.required "repo" forkee

encodeBase : Base -> Jenc.Value
encodeBase x =
    Jenc.object
        [ ("label", Jenc.string x.label)
        , ("ref", Jenc.string x.ref)
        , ("sha", Jenc.string x.sha)
        , ("user", encodeUser x.user)
        , ("repo", encodeForkee x.repo)
        ]

pullRequestLinks : Jdec.Decoder PullRequestLinks
pullRequestLinks =
    Jpipe.decode PullRequestLinks
        |> Jpipe.required "self" html
        |> Jpipe.required "html" html
        |> Jpipe.required "issue" html
        |> Jpipe.required "comments" html
        |> Jpipe.required "review_comments" html
        |> Jpipe.required "review_comment" html
        |> Jpipe.required "commits" html
        |> Jpipe.required "statuses" html

encodePullRequestLinks : PullRequestLinks -> Jenc.Value
encodePullRequestLinks x =
    Jenc.object
        [ ("self", encodeHTML x.self)
        , ("html", encodeHTML x.html)
        , ("issue", encodeHTML x.issue)
        , ("comments", encodeHTML x.comments)
        , ("review_comments", encodeHTML x.reviewComments)
        , ("review_comment", encodeHTML x.reviewComment)
        , ("commits", encodeHTML x.commits)
        , ("statuses", encodeHTML x.statuses)
        ]

repo : Jdec.Decoder Repo
repo =
    Jpipe.decode Repo
        |> Jpipe.required "id" Jdec.int
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "url" Jdec.string

encodeRepo : Repo -> Jenc.Value
encodeRepo x =
    Jenc.object
        [ ("id", Jenc.int x.id)
        , ("name", Jenc.string x.name)
        , ("url", Jenc.string x.url)
        ]

gist : Jdec.Decoder Gist
gist =
    Jpipe.decode Gist
        |> Jpipe.required "url" Jdec.string
        |> Jpipe.required "forks_url" Jdec.string
        |> Jpipe.required "commits_url" Jdec.string
        |> Jpipe.required "id" Jdec.string
        |> Jpipe.required "git_pull_url" Jdec.string
        |> Jpipe.required "git_push_url" Jdec.string
        |> Jpipe.required "html_url" Jdec.string
        |> Jpipe.required "files" files
        |> Jpipe.required "public" Jdec.bool
        |> Jpipe.required "created_at" Jdec.string
        |> Jpipe.required "updated_at" Jdec.string
        |> Jpipe.optional "description" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.required "comments" Jdec.int
        |> Jpipe.optional "user" (Jdec.null ()) ()
        |> Jpipe.required "comments_url" Jdec.string
        |> Jpipe.required "truncated" Jdec.bool
        |> Jpipe.optional "owner" (Jdec.nullable user) Nothing

encodeGist : Gist -> Jenc.Value
encodeGist x =
    Jenc.object
        [ ("url", Jenc.string x.url)
        , ("forks_url", Jenc.string x.forksURL)
        , ("commits_url", Jenc.string x.commitsURL)
        , ("id", Jenc.string x.id)
        , ("git_pull_url", Jenc.string x.gitPullURL)
        , ("git_push_url", Jenc.string x.gitPushURL)
        , ("html_url", Jenc.string x.htmlURL)
        , ("files", encodeFiles x.files)
        , ("public", Jenc.bool x.public)
        , ("created_at", Jenc.string x.createdAt)
        , ("updated_at", Jenc.string x.updatedAt)
        , ("description", makeNullableEncoder Jenc.string x.description)
        , ("comments", Jenc.int x.comments)
        , ("user", always Jenc.null x.user)
        , ("comments_url", Jenc.string x.commentsURL)
        , ("truncated", Jenc.bool x.truncated)
        , ("owner", makeNullableEncoder encodeUser x.owner)
        ]

files : Jdec.Decoder Files
files =
    Jpipe.decode Files
        |> Jpipe.optional "gistfile1.txt" (Jdec.nullable empty) Nothing
        |> Jpipe.optional "ruwikiruscorpora_upos_skipgram_300_2_2018_b2b090a678a3d66b62ddf890eefe5f26_config.json" (Jdec.nullable empty) Nothing
        |> Jpipe.optional "ruwikiruscorpora_upos_skipgram_300_2_2018_b2b090a678a3d66b62ddf890eefe5f26_metadata.tsv" (Jdec.nullable empty) Nothing
        |> Jpipe.optional "ruwikiruscorpora_upos_skipgram_300_2_2018_b2b090a678a3d66b62ddf890eefe5f26_tensor.tsv" (Jdec.nullable empty) Nothing
        |> Jpipe.optional "config.json" (Jdec.nullable empty) Nothing
        |> Jpipe.optional "-" (Jdec.nullable empty) Nothing
        |> Jpipe.optional "6mnUZy7z" (Jdec.nullable empty) Nothing
        |> Jpipe.optional "LEDbreathe.ino" (Jdec.nullable empty) Nothing
        |> Jpipe.optional "i3blocks-spotify" (Jdec.nullable empty) Nothing
        |> Jpipe.optional "_README.md" (Jdec.nullable empty) Nothing
        |> Jpipe.optional "decryptFile.sh" (Jdec.nullable empty) Nothing
        |> Jpipe.optional "encryptFile.sh" (Jdec.nullable empty) Nothing
        |> Jpipe.optional "limitedNoOfRecords.java" (Jdec.nullable empty) Nothing
        |> Jpipe.optional "CLIENT APP" (Jdec.nullable empty) Nothing
        |> Jpipe.optional "SERVER AP" (Jdec.nullable empty) Nothing
        |> Jpipe.optional "ruwikiruscorpora_upos_skipgram_300_2_2018_fafdb1f6d6866fb229e806fc354b7458_config.json" (Jdec.nullable empty) Nothing

encodeFiles : Files -> Jenc.Value
encodeFiles x =
    Jenc.object
        [ ("gistfile1.txt", makeNullableEncoder encodeEmpty x.gistfile1Txt)
        , ("ruwikiruscorpora_upos_skipgram_300_2_2018_b2b090a678a3d66b62ddf890eefe5f26_config.json", makeNullableEncoder encodeEmpty x.ruwikiruscorporaUposSkipgram300_2_2018_B2B090A678A3D66B62Ddf890Eefe5F26ConfigJSON)
        , ("ruwikiruscorpora_upos_skipgram_300_2_2018_b2b090a678a3d66b62ddf890eefe5f26_metadata.tsv", makeNullableEncoder encodeEmpty x.ruwikiruscorporaUposSkipgram300_2_2018_B2B090A678A3D66B62Ddf890Eefe5F26MetadataTsv)
        , ("ruwikiruscorpora_upos_skipgram_300_2_2018_b2b090a678a3d66b62ddf890eefe5f26_tensor.tsv", makeNullableEncoder encodeEmpty x.ruwikiruscorporaUposSkipgram300_2_2018_B2B090A678A3D66B62Ddf890Eefe5F26TensorTsv)
        , ("config.json", makeNullableEncoder encodeEmpty x.configJSON)
        , ("-", makeNullableEncoder encodeEmpty x.empty)
        , ("6mnUZy7z", makeNullableEncoder encodeEmpty x.the6MnUZy7Z)
        , ("LEDbreathe.ino", makeNullableEncoder encodeEmpty x.leDbreatheIno)
        , ("i3blocks-spotify", makeNullableEncoder encodeEmpty x.i3BlocksSpotify)
        , ("_README.md", makeNullableEncoder encodeEmpty x.readmeMd)
        , ("decryptFile.sh", makeNullableEncoder encodeEmpty x.decryptFileSh)
        , ("encryptFile.sh", makeNullableEncoder encodeEmpty x.encryptFileSh)
        , ("limitedNoOfRecords.java", makeNullableEncoder encodeEmpty x.limitedNoOfRecordsJava)
        , ("CLIENT APP", makeNullableEncoder encodeEmpty x.clientApp)
        , ("SERVER AP", makeNullableEncoder encodeEmpty x.serverAp)
        , ("ruwikiruscorpora_upos_skipgram_300_2_2018_fafdb1f6d6866fb229e806fc354b7458_config.json", makeNullableEncoder encodeEmpty x.ruwikiruscorporaUposSkipgram300_2_2018_Fafdb1F6D6866Fb229E806Fc354B7458ConfigJSON)
        ]

empty : Jdec.Decoder Empty
empty =
    Jpipe.decode Empty
        |> Jpipe.required "filename" Jdec.string
        |> Jpipe.required "type" purpleType
        |> Jpipe.optional "language" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.required "raw_url" Jdec.string
        |> Jpipe.required "size" Jdec.int

encodeEmpty : Empty -> Jenc.Value
encodeEmpty x =
    Jenc.object
        [ ("filename", Jenc.string x.filename)
        , ("type", encodeType x.purpleType)
        , ("language", makeNullableEncoder Jenc.string x.language)
        , ("raw_url", Jenc.string x.rawURL)
        , ("size", Jenc.int x.size)
        ]

purpleType : Jdec.Decoder Type
purpleType =
    Jdec.string
        |> Jdec.andThen (\str ->
            case str of
                "application/json" -> Jdec.succeed ApplicationJSON
                "application/x-sh" -> Jdec.succeed ApplicationXSh
                "text/plain" -> Jdec.succeed TextPlain
                "text/tab-separated-values" -> Jdec.succeed TextTabSeparatedValues
                somethingElse -> Jdec.fail <| "Invalid Type: " ++ somethingElse
        )

encodeType : Type -> Jenc.Value
encodeType x = case x of
    ApplicationJSON -> Jenc.string "application/json"
    ApplicationXSh -> Jenc.string "application/x-sh"
    TextPlain -> Jenc.string "text/plain"
    TextTabSeparatedValues -> Jenc.string "text/tab-separated-values"

user : Jdec.Decoder User
user =
    Jpipe.decode User
        |> Jpipe.required "login" Jdec.string
        |> Jpipe.required "id" Jdec.int
        |> Jpipe.required "avatar_url" Jdec.string
        |> Jpipe.required "gravatar_id" gravatarID
        |> Jpipe.required "url" Jdec.string
        |> Jpipe.required "html_url" Jdec.string
        |> Jpipe.required "followers_url" Jdec.string
        |> Jpipe.required "following_url" Jdec.string
        |> Jpipe.required "gists_url" Jdec.string
        |> Jpipe.required "starred_url" Jdec.string
        |> Jpipe.required "subscriptions_url" Jdec.string
        |> Jpipe.required "organizations_url" Jdec.string
        |> Jpipe.required "repos_url" Jdec.string
        |> Jpipe.required "events_url" Jdec.string
        |> Jpipe.required "received_events_url" Jdec.string
        |> Jpipe.required "type" userType
        |> Jpipe.required "site_admin" Jdec.bool

encodeUser : User -> Jenc.Value
encodeUser x =
    Jenc.object
        [ ("login", Jenc.string x.login)
        , ("id", Jenc.int x.id)
        , ("avatar_url", Jenc.string x.avatarURL)
        , ("gravatar_id", encodeGravatarID x.gravatarID)
        , ("url", Jenc.string x.url)
        , ("html_url", Jenc.string x.htmlURL)
        , ("followers_url", Jenc.string x.followersURL)
        , ("following_url", Jenc.string x.followingURL)
        , ("gists_url", Jenc.string x.gistsURL)
        , ("starred_url", Jenc.string x.starredURL)
        , ("subscriptions_url", Jenc.string x.subscriptionsURL)
        , ("organizations_url", Jenc.string x.organizationsURL)
        , ("repos_url", Jenc.string x.reposURL)
        , ("events_url", Jenc.string x.eventsURL)
        , ("received_events_url", Jenc.string x.receivedEventsURL)
        , ("type", encodeUserType x.purpleType)
        , ("site_admin", Jenc.bool x.siteAdmin)
        ]

gravatarID : Jdec.Decoder GravatarID
gravatarID =
    Jdec.string
        |> Jdec.andThen (\str ->
            case str of
                "" -> Jdec.succeed Purple
                somethingElse -> Jdec.fail <| "Invalid GravatarID: " ++ somethingElse
        )

encodeGravatarID : GravatarID -> Jenc.Value
encodeGravatarID x = case x of
    Purple -> Jenc.string ""

userType : Jdec.Decoder UserType
userType =
    Jdec.string
        |> Jdec.andThen (\str ->
            case str of
                "Organization" -> Jdec.succeed Organization
                "User" -> Jdec.succeed PurpleUser
                somethingElse -> Jdec.fail <| "Invalid UserType: " ++ somethingElse
        )

encodeUserType : UserType -> Jenc.Value
encodeUserType x = case x of
    Organization -> Jenc.string "Organization"
    PurpleUser -> Jenc.string "User"

meta : Jdec.Decoder Meta
meta =
    Jpipe.decode Meta
        |> Jpipe.required "verifiable_password_authentication" Jdec.bool
        |> Jpipe.required "github_services_sha" Jdec.string
        |> Jpipe.required "hooks" (Jdec.array Jdec.string)
        |> Jpipe.required "git" (Jdec.array Jdec.string)
        |> Jpipe.required "pages" (Jdec.array Jdec.string)
        |> Jpipe.required "importer" (Jdec.array Jdec.string)

encodeMeta : Meta -> Jenc.Value
encodeMeta x =
    Jenc.object
        [ ("verifiable_password_authentication", Jenc.bool x.verifiablePasswordAuthentication)
        , ("github_services_sha", Jenc.string x.githubServicesSHA)
        , ("hooks", makeArrayEncoder Jenc.string x.hooks)
        , ("git", makeArrayEncoder Jenc.string x.git)
        , ("pages", makeArrayEncoder Jenc.string x.pages)
        , ("importer", makeArrayEncoder Jenc.string x.importer)
        ]

--- encoder helpers

makeArrayEncoder : (a -> Jenc.Value) -> Array a -> Jenc.Value
makeArrayEncoder f arr =
    Jenc.array (Array.map f arr)

makeDictEncoder : (a -> Jenc.Value) -> Dict String a -> Jenc.Value
makeDictEncoder f dict =
    Jenc.object (toList (Dict.map (\k -> f) dict))

makeNullableEncoder : (a -> Jenc.Value) -> Maybe a -> Jenc.Value
makeNullableEncoder f m =
    case m of
    Just x -> f x
    Nothing -> Jenc.null
