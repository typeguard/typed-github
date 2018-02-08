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
    , User
    , Commit
    , Author
    , Issue
    , IssuePullRequest
    , PayloadPullRequest
    , Base
    , BaseRepo
    , Links
    , Comments
    , EventRepo
    , Gist
    , File
    , GravatarID(..)
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
    , repo : EventRepo
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
    = Empty

type alias Payload =
    { ref : Maybe String
    , refType : Maybe String
    , pusherType : Maybe String
    , action : Maybe String
    , number : Maybe Int
    , pullRequest : Maybe PayloadPullRequest
    , pushID : Maybe Int
    , size : Maybe Int
    , distinctSize : Maybe Int
    , head : Maybe String
    , before : Maybe String
    , commits : Maybe (Array Commit)
    , issue : Maybe Issue
    , comment : Maybe Comment
    , masterBranch : Maybe String
    , description : Maybe String
    }

type alias Comment =
    { url : String
    , htmlURL : String
    , issueURL : Maybe String
    , id : Int
    , user : User
    , createdAt : String
    , updatedAt : String
    , authorAssociation : String
    , body : String
    , position : Maybe Int
    , line : Maybe Int
    , path : Maybe String
    , commitID : Maybe String
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
    , purpleType : Type
    , siteAdmin : Bool
    }

type Type
    = PurpleUser

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
    , labels : Array Jdec.Value
    , state : String
    , locked : Bool
    , assignee : ()
    , assignees : Array Jdec.Value
    , milestone : ()
    , comments : Int
    , createdAt : String
    , updatedAt : String
    , closedAt : ()
    , authorAssociation : String
    , body : String
    , pullRequest : Maybe IssuePullRequest
    }

type alias IssuePullRequest =
    { url : String
    , htmlURL : String
    , diffURL : String
    , patchURL : String
    }

type alias PayloadPullRequest =
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
    , mergeCommitSHA : ()
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
    , links : Links
    , authorAssociation : String
    , merged : Bool
    , mergeable : ()
    , rebaseable : ()
    , mergeableState : String
    , mergedBy : ()
    , comments : Int
    , reviewComments : Int
    , maintainerCanModify : Bool
    , commits : Int
    , additions : Int
    , deletions : Int
    , changedFiles : Int
    }

type alias Base =
    { label : String
    , ref : String
    , sha : String
    , user : User
    , repo : BaseRepo
    }

type alias BaseRepo =
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
    , homepage : ()
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
    , license : ()
    , forks : Int
    , openIssues : Int
    , watchers : Int
    , defaultBranch : String
    }

type alias Links =
    { self : Comments
    , html : Comments
    , issue : Comments
    , comments : Comments
    , reviewComments : Comments
    , reviewComment : Comments
    , commits : Comments
    , statuses : Comments
    }

type alias Comments =
    { href : String
    }

type alias EventRepo =
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
    , files : Dict String File
    , public : Bool
    , createdAt : String
    , updatedAt : String
    , description : Maybe String
    , comments : Int
    , user : ()
    , commentsURL : String
    , owner : Maybe User
    , truncated : Bool
    }

type alias File =
    { filename : String
    , purpleType : String
    , language : Maybe String
    , rawURL : String
    , size : Int
    }

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
        |> Jpipe.required "repo" eventRepo
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
        , ("repo", encodeEventRepo x.repo)
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
                "" -> Jdec.succeed Empty
                somethingElse -> Jdec.fail <| "Invalid GravatarID: " ++ somethingElse
        )

encodeGravatarID : GravatarID -> Jenc.Value
encodeGravatarID x = case x of
    Empty -> Jenc.string ""

payload : Jdec.Decoder Payload
payload =
    Jpipe.decode Payload
        |> Jpipe.optional "ref" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "ref_type" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "pusher_type" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "action" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "number" (Jdec.nullable Jdec.int) Nothing
        |> Jpipe.optional "pull_request" (Jdec.nullable payloadPullRequest) Nothing
        |> Jpipe.optional "push_id" (Jdec.nullable Jdec.int) Nothing
        |> Jpipe.optional "size" (Jdec.nullable Jdec.int) Nothing
        |> Jpipe.optional "distinct_size" (Jdec.nullable Jdec.int) Nothing
        |> Jpipe.optional "head" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "before" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "commits" (Jdec.nullable (Jdec.array commit)) Nothing
        |> Jpipe.optional "issue" (Jdec.nullable issue) Nothing
        |> Jpipe.optional "comment" (Jdec.nullable comment) Nothing
        |> Jpipe.optional "master_branch" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "description" (Jdec.nullable Jdec.string) Nothing

encodePayload : Payload -> Jenc.Value
encodePayload x =
    Jenc.object
        [ ("ref", makeNullableEncoder Jenc.string x.ref)
        , ("ref_type", makeNullableEncoder Jenc.string x.refType)
        , ("pusher_type", makeNullableEncoder Jenc.string x.pusherType)
        , ("action", makeNullableEncoder Jenc.string x.action)
        , ("number", makeNullableEncoder Jenc.int x.number)
        , ("pull_request", makeNullableEncoder encodePayloadPullRequest x.pullRequest)
        , ("push_id", makeNullableEncoder Jenc.int x.pushID)
        , ("size", makeNullableEncoder Jenc.int x.size)
        , ("distinct_size", makeNullableEncoder Jenc.int x.distinctSize)
        , ("head", makeNullableEncoder Jenc.string x.head)
        , ("before", makeNullableEncoder Jenc.string x.before)
        , ("commits", makeNullableEncoder (makeArrayEncoder encodeCommit) x.commits)
        , ("issue", makeNullableEncoder encodeIssue x.issue)
        , ("comment", makeNullableEncoder encodeComment x.comment)
        , ("master_branch", makeNullableEncoder Jenc.string x.masterBranch)
        , ("description", makeNullableEncoder Jenc.string x.description)
        ]

comment : Jdec.Decoder Comment
comment =
    Jpipe.decode Comment
        |> Jpipe.required "url" Jdec.string
        |> Jpipe.required "html_url" Jdec.string
        |> Jpipe.optional "issue_url" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.required "id" Jdec.int
        |> Jpipe.required "user" user
        |> Jpipe.required "created_at" Jdec.string
        |> Jpipe.required "updated_at" Jdec.string
        |> Jpipe.required "author_association" Jdec.string
        |> Jpipe.required "body" Jdec.string
        |> Jpipe.optional "position" (Jdec.nullable Jdec.int) Nothing
        |> Jpipe.optional "line" (Jdec.nullable Jdec.int) Nothing
        |> Jpipe.optional "path" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.optional "commit_id" (Jdec.nullable Jdec.string) Nothing

encodeComment : Comment -> Jenc.Value
encodeComment x =
    Jenc.object
        [ ("url", Jenc.string x.url)
        , ("html_url", Jenc.string x.htmlURL)
        , ("issue_url", makeNullableEncoder Jenc.string x.issueURL)
        , ("id", Jenc.int x.id)
        , ("user", encodeUser x.user)
        , ("created_at", Jenc.string x.createdAt)
        , ("updated_at", Jenc.string x.updatedAt)
        , ("author_association", Jenc.string x.authorAssociation)
        , ("body", Jenc.string x.body)
        , ("position", makeNullableEncoder Jenc.int x.position)
        , ("line", makeNullableEncoder Jenc.int x.line)
        , ("path", makeNullableEncoder Jenc.string x.path)
        , ("commit_id", makeNullableEncoder Jenc.string x.commitID)
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
        |> Jpipe.required "type" purpleType
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
        , ("type", encodeType x.purpleType)
        , ("site_admin", Jenc.bool x.siteAdmin)
        ]

purpleType : Jdec.Decoder Type
purpleType =
    Jdec.string
        |> Jdec.andThen (\str ->
            case str of
                "User" -> Jdec.succeed PurpleUser
                somethingElse -> Jdec.fail <| "Invalid Type: " ++ somethingElse
        )

encodeType : Type -> Jenc.Value
encodeType x = case x of
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
        |> Jpipe.required "labels" (Jdec.array Jdec.value)
        |> Jpipe.required "state" Jdec.string
        |> Jpipe.required "locked" Jdec.bool
        |> Jpipe.optional "assignee" (Jdec.null ()) ()
        |> Jpipe.required "assignees" (Jdec.array Jdec.value)
        |> Jpipe.optional "milestone" (Jdec.null ()) ()
        |> Jpipe.required "comments" Jdec.int
        |> Jpipe.required "created_at" Jdec.string
        |> Jpipe.required "updated_at" Jdec.string
        |> Jpipe.optional "closed_at" (Jdec.null ()) ()
        |> Jpipe.required "author_association" Jdec.string
        |> Jpipe.required "body" Jdec.string
        |> Jpipe.optional "pull_request" (Jdec.nullable issuePullRequest) Nothing

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
        , ("labels", makeArrayEncoder identity x.labels)
        , ("state", Jenc.string x.state)
        , ("locked", Jenc.bool x.locked)
        , ("assignee", always Jenc.null x.assignee)
        , ("assignees", makeArrayEncoder identity x.assignees)
        , ("milestone", always Jenc.null x.milestone)
        , ("comments", Jenc.int x.comments)
        , ("created_at", Jenc.string x.createdAt)
        , ("updated_at", Jenc.string x.updatedAt)
        , ("closed_at", always Jenc.null x.closedAt)
        , ("author_association", Jenc.string x.authorAssociation)
        , ("body", Jenc.string x.body)
        , ("pull_request", makeNullableEncoder encodeIssuePullRequest x.pullRequest)
        ]

issuePullRequest : Jdec.Decoder IssuePullRequest
issuePullRequest =
    Jpipe.decode IssuePullRequest
        |> Jpipe.required "url" Jdec.string
        |> Jpipe.required "html_url" Jdec.string
        |> Jpipe.required "diff_url" Jdec.string
        |> Jpipe.required "patch_url" Jdec.string

encodeIssuePullRequest : IssuePullRequest -> Jenc.Value
encodeIssuePullRequest x =
    Jenc.object
        [ ("url", Jenc.string x.url)
        , ("html_url", Jenc.string x.htmlURL)
        , ("diff_url", Jenc.string x.diffURL)
        , ("patch_url", Jenc.string x.patchURL)
        ]

payloadPullRequest : Jdec.Decoder PayloadPullRequest
payloadPullRequest =
    Jpipe.decode PayloadPullRequest
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
        |> Jpipe.optional "merge_commit_sha" (Jdec.null ()) ()
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
        |> Jpipe.required "_links" links
        |> Jpipe.required "author_association" Jdec.string
        |> Jpipe.required "merged" Jdec.bool
        |> Jpipe.optional "mergeable" (Jdec.null ()) ()
        |> Jpipe.optional "rebaseable" (Jdec.null ()) ()
        |> Jpipe.required "mergeable_state" Jdec.string
        |> Jpipe.optional "merged_by" (Jdec.null ()) ()
        |> Jpipe.required "comments" Jdec.int
        |> Jpipe.required "review_comments" Jdec.int
        |> Jpipe.required "maintainer_can_modify" Jdec.bool
        |> Jpipe.required "commits" Jdec.int
        |> Jpipe.required "additions" Jdec.int
        |> Jpipe.required "deletions" Jdec.int
        |> Jpipe.required "changed_files" Jdec.int

encodePayloadPullRequest : PayloadPullRequest -> Jenc.Value
encodePayloadPullRequest x =
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
        , ("merge_commit_sha", always Jenc.null x.mergeCommitSHA)
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
        , ("_links", encodeLinks x.links)
        , ("author_association", Jenc.string x.authorAssociation)
        , ("merged", Jenc.bool x.merged)
        , ("mergeable", always Jenc.null x.mergeable)
        , ("rebaseable", always Jenc.null x.rebaseable)
        , ("mergeable_state", Jenc.string x.mergeableState)
        , ("merged_by", always Jenc.null x.mergedBy)
        , ("comments", Jenc.int x.comments)
        , ("review_comments", Jenc.int x.reviewComments)
        , ("maintainer_can_modify", Jenc.bool x.maintainerCanModify)
        , ("commits", Jenc.int x.commits)
        , ("additions", Jenc.int x.additions)
        , ("deletions", Jenc.int x.deletions)
        , ("changed_files", Jenc.int x.changedFiles)
        ]

base : Jdec.Decoder Base
base =
    Jpipe.decode Base
        |> Jpipe.required "label" Jdec.string
        |> Jpipe.required "ref" Jdec.string
        |> Jpipe.required "sha" Jdec.string
        |> Jpipe.required "user" user
        |> Jpipe.required "repo" baseRepo

encodeBase : Base -> Jenc.Value
encodeBase x =
    Jenc.object
        [ ("label", Jenc.string x.label)
        , ("ref", Jenc.string x.ref)
        , ("sha", Jenc.string x.sha)
        , ("user", encodeUser x.user)
        , ("repo", encodeBaseRepo x.repo)
        ]

baseRepo : Jdec.Decoder BaseRepo
baseRepo =
    Jpipe.decode BaseRepo
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
        |> Jpipe.optional "homepage" (Jdec.null ()) ()
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
        |> Jpipe.optional "license" (Jdec.null ()) ()
        |> Jpipe.required "forks" Jdec.int
        |> Jpipe.required "open_issues" Jdec.int
        |> Jpipe.required "watchers" Jdec.int
        |> Jpipe.required "default_branch" Jdec.string

encodeBaseRepo : BaseRepo -> Jenc.Value
encodeBaseRepo x =
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
        , ("homepage", always Jenc.null x.homepage)
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
        , ("license", always Jenc.null x.license)
        , ("forks", Jenc.int x.forks)
        , ("open_issues", Jenc.int x.openIssues)
        , ("watchers", Jenc.int x.watchers)
        , ("default_branch", Jenc.string x.defaultBranch)
        ]

links : Jdec.Decoder Links
links =
    Jpipe.decode Links
        |> Jpipe.required "self" comments
        |> Jpipe.required "html" comments
        |> Jpipe.required "issue" comments
        |> Jpipe.required "comments" comments
        |> Jpipe.required "review_comments" comments
        |> Jpipe.required "review_comment" comments
        |> Jpipe.required "commits" comments
        |> Jpipe.required "statuses" comments

encodeLinks : Links -> Jenc.Value
encodeLinks x =
    Jenc.object
        [ ("self", encodeComments x.self)
        , ("html", encodeComments x.html)
        , ("issue", encodeComments x.issue)
        , ("comments", encodeComments x.comments)
        , ("review_comments", encodeComments x.reviewComments)
        , ("review_comment", encodeComments x.reviewComment)
        , ("commits", encodeComments x.commits)
        , ("statuses", encodeComments x.statuses)
        ]

comments : Jdec.Decoder Comments
comments =
    Jpipe.decode Comments
        |> Jpipe.required "href" Jdec.string

encodeComments : Comments -> Jenc.Value
encodeComments x =
    Jenc.object
        [ ("href", Jenc.string x.href)
        ]

eventRepo : Jdec.Decoder EventRepo
eventRepo =
    Jpipe.decode EventRepo
        |> Jpipe.required "id" Jdec.int
        |> Jpipe.required "name" Jdec.string
        |> Jpipe.required "url" Jdec.string

encodeEventRepo : EventRepo -> Jenc.Value
encodeEventRepo x =
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
        |> Jpipe.required "files" (Jdec.dict file)
        |> Jpipe.required "public" Jdec.bool
        |> Jpipe.required "created_at" Jdec.string
        |> Jpipe.required "updated_at" Jdec.string
        |> Jpipe.optional "description" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.required "comments" Jdec.int
        |> Jpipe.optional "user" (Jdec.null ()) ()
        |> Jpipe.required "comments_url" Jdec.string
        |> Jpipe.optional "owner" (Jdec.nullable user) Nothing
        |> Jpipe.required "truncated" Jdec.bool

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
        , ("files", makeDictEncoder encodeFile x.files)
        , ("public", Jenc.bool x.public)
        , ("created_at", Jenc.string x.createdAt)
        , ("updated_at", Jenc.string x.updatedAt)
        , ("description", makeNullableEncoder Jenc.string x.description)
        , ("comments", Jenc.int x.comments)
        , ("user", always Jenc.null x.user)
        , ("comments_url", Jenc.string x.commentsURL)
        , ("owner", makeNullableEncoder encodeUser x.owner)
        , ("truncated", Jenc.bool x.truncated)
        ]

file : Jdec.Decoder File
file =
    Jpipe.decode File
        |> Jpipe.required "filename" Jdec.string
        |> Jpipe.required "type" Jdec.string
        |> Jpipe.optional "language" (Jdec.nullable Jdec.string) Nothing
        |> Jpipe.required "raw_url" Jdec.string
        |> Jpipe.required "size" Jdec.int

encodeFile : File -> Jenc.Value
encodeFile x =
    Jenc.object
        [ ("filename", Jenc.string x.filename)
        , ("type", Jenc.string x.purpleType)
        , ("language", makeNullableEncoder Jenc.string x.language)
        , ("raw_url", Jenc.string x.rawURL)
        , ("size", Jenc.int x.size)
        ]

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
