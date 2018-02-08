// To parse this JSON:
//
//   NSError *error;
//   APIData *data = APIDataFromJSON(json, NSUTF8Encoding, &error);
//   APIEmojis *emojis = APIEmojisFromJSON(json, NSUTF8Encoding, &error);
//   APIEvents *events = APIEventsFromJSON(json, NSUTF8Encoding, &error);
//   APIGists *gists = APIGistsFromJSON(json, NSUTF8Encoding, &error);
//   APIMeta *meta = [APIMeta fromJSON:json encoding:NSUTF8Encoding error:&error]

#import <Foundation/Foundation.h>

@class APIEvent;
@class APIActor;
@class APIGravatarID;
@class APIPayload;
@class APIComment;
@class APIUser;
@class APIType;
@class APICommit;
@class APIAuthor;
@class APIIssue;
@class APIIssuePullRequest;
@class APIPayloadPullRequest;
@class APIBase;
@class APIBaseRepo;
@class APILinks;
@class APIComments;
@class APIEventRepo;
@class APIGist;
@class APIFile;
@class APIMeta;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Boxed enums

@interface APIGravatarID : NSObject
@property (nonatomic, readonly, copy) NSString *value;
+ (instancetype _Nullable)withValue:(NSString *)value;
+ (APIGravatarID *)empty;
@end

@interface APIType : NSObject
@property (nonatomic, readonly, copy) NSString *value;
+ (instancetype _Nullable)withValue:(NSString *)value;
+ (APIType *)user;
@end

typedef NSDictionary<NSString *, NSString *> APIData;

typedef NSDictionary<NSString *, NSString *> APIEmojis;

typedef NSArray<APIEvent *> APIEvents;

typedef NSArray<APIGist *> APIGists;

#pragma mark - Top-level marshaling functions

APIData *_Nullable APIDataFromData(NSData *data, NSError **error);
APIData *_Nullable APIDataFromJSON(NSString *json, NSStringEncoding encoding, NSError **error);
NSData  *_Nullable APIDataToData(APIData *data, NSError **error);
NSString *_Nullable APIDataToJSON(APIData *data, NSStringEncoding encoding, NSError **error);

APIEmojis *_Nullable APIEmojisFromData(NSData *data, NSError **error);
APIEmojis *_Nullable APIEmojisFromJSON(NSString *json, NSStringEncoding encoding, NSError **error);
NSData    *_Nullable APIEmojisToData(APIEmojis *emojis, NSError **error);
NSString  *_Nullable APIEmojisToJSON(APIEmojis *emojis, NSStringEncoding encoding, NSError **error);

APIEvents *_Nullable APIEventsFromData(NSData *data, NSError **error);
APIEvents *_Nullable APIEventsFromJSON(NSString *json, NSStringEncoding encoding, NSError **error);
NSData    *_Nullable APIEventsToData(APIEvents *events, NSError **error);
NSString  *_Nullable APIEventsToJSON(APIEvents *events, NSStringEncoding encoding, NSError **error);

APIGists *_Nullable APIGistsFromData(NSData *data, NSError **error);
APIGists *_Nullable APIGistsFromJSON(NSString *json, NSStringEncoding encoding, NSError **error);
NSData   *_Nullable APIGistsToData(APIGists *gists, NSError **error);
NSString *_Nullable APIGistsToJSON(APIGists *gists, NSStringEncoding encoding, NSError **error);

#pragma mark - Object interfaces

@interface APIEvent : NSObject
@property (nonatomic, copy)             NSString *identifier;
@property (nonatomic, copy)             NSString *type;
@property (nonatomic, strong)           APIActor *actor;
@property (nonatomic, strong)           APIEventRepo *repo;
@property (nonatomic, strong)           APIPayload *payload;
@property (nonatomic, assign)           BOOL isPublic;
@property (nonatomic, copy)             NSString *createdAt;
@property (nonatomic, nullable, strong) APIActor *org;
@end

@interface APIActor : NSObject
@property (nonatomic, assign)         NSInteger identifier;
@property (nonatomic, copy)           NSString *login;
@property (nonatomic, nullable, copy) NSString *displayLogin;
@property (nonatomic, assign)         APIGravatarID *gravatarID;
@property (nonatomic, copy)           NSString *url;
@property (nonatomic, copy)           NSString *avatarURL;
@end

@interface APIPayload : NSObject
@property (nonatomic, nullable, copy)   NSString *ref;
@property (nonatomic, nullable, copy)   NSString *refType;
@property (nonatomic, nullable, copy)   NSString *pusherType;
@property (nonatomic, nullable, copy)   NSString *action;
@property (nonatomic, nullable, strong) NSNumber *number;
@property (nonatomic, nullable, strong) APIPayloadPullRequest *pullRequest;
@property (nonatomic, nullable, strong) NSNumber *pushID;
@property (nonatomic, nullable, strong) NSNumber *size;
@property (nonatomic, nullable, strong) NSNumber *distinctSize;
@property (nonatomic, nullable, copy)   NSString *head;
@property (nonatomic, nullable, copy)   NSString *before;
@property (nonatomic, nullable, copy)   NSArray<APICommit *> *commits;
@property (nonatomic, nullable, strong) APIIssue *issue;
@property (nonatomic, nullable, strong) APIComment *comment;
@property (nonatomic, nullable, copy)   NSString *masterBranch;
@property (nonatomic, nullable, copy)   NSString *theDescription;
@end

@interface APIComment : NSObject
@property (nonatomic, copy)             NSString *url;
@property (nonatomic, copy)             NSString *htmlURL;
@property (nonatomic, nullable, copy)   NSString *issueURL;
@property (nonatomic, assign)           NSInteger identifier;
@property (nonatomic, strong)           APIUser *user;
@property (nonatomic, copy)             NSString *createdAt;
@property (nonatomic, copy)             NSString *updatedAt;
@property (nonatomic, copy)             NSString *authorAssociation;
@property (nonatomic, copy)             NSString *body;
@property (nonatomic, nullable, strong) NSNumber *position;
@property (nonatomic, nullable, strong) NSNumber *line;
@property (nonatomic, nullable, copy)   NSString *path;
@property (nonatomic, nullable, copy)   NSString *commitID;
@end

@interface APIUser : NSObject
@property (nonatomic, copy)   NSString *login;
@property (nonatomic, assign) NSInteger identifier;
@property (nonatomic, copy)   NSString *avatarURL;
@property (nonatomic, assign) APIGravatarID *gravatarID;
@property (nonatomic, copy)   NSString *url;
@property (nonatomic, copy)   NSString *htmlURL;
@property (nonatomic, copy)   NSString *followersURL;
@property (nonatomic, copy)   NSString *followingURL;
@property (nonatomic, copy)   NSString *gistsURL;
@property (nonatomic, copy)   NSString *starredURL;
@property (nonatomic, copy)   NSString *subscriptionsURL;
@property (nonatomic, copy)   NSString *organizationsURL;
@property (nonatomic, copy)   NSString *reposURL;
@property (nonatomic, copy)   NSString *eventsURL;
@property (nonatomic, copy)   NSString *receivedEventsURL;
@property (nonatomic, assign) APIType *type;
@property (nonatomic, assign) BOOL isSiteAdmin;
@end

@interface APICommit : NSObject
@property (nonatomic, copy)   NSString *sha;
@property (nonatomic, strong) APIAuthor *author;
@property (nonatomic, copy)   NSString *message;
@property (nonatomic, assign) BOOL isDistinct;
@property (nonatomic, copy)   NSString *url;
@end

@interface APIAuthor : NSObject
@property (nonatomic, copy) NSString *email;
@property (nonatomic, copy) NSString *name;
@end

@interface APIIssue : NSObject
@property (nonatomic, copy)             NSString *url;
@property (nonatomic, copy)             NSString *repositoryURL;
@property (nonatomic, copy)             NSString *labelsURL;
@property (nonatomic, copy)             NSString *commentsURL;
@property (nonatomic, copy)             NSString *eventsURL;
@property (nonatomic, copy)             NSString *htmlURL;
@property (nonatomic, assign)           NSInteger identifier;
@property (nonatomic, assign)           NSInteger number;
@property (nonatomic, copy)             NSString *title;
@property (nonatomic, strong)           APIUser *user;
@property (nonatomic, copy)             NSArray *labels;
@property (nonatomic, copy)             NSString *state;
@property (nonatomic, assign)           BOOL isLocked;
@property (nonatomic, nullable, copy)   id assignee;
@property (nonatomic, copy)             NSArray *assignees;
@property (nonatomic, nullable, copy)   id milestone;
@property (nonatomic, assign)           NSInteger comments;
@property (nonatomic, copy)             NSString *createdAt;
@property (nonatomic, copy)             NSString *updatedAt;
@property (nonatomic, nullable, copy)   id closedAt;
@property (nonatomic, copy)             NSString *authorAssociation;
@property (nonatomic, copy)             NSString *body;
@property (nonatomic, nullable, strong) APIIssuePullRequest *pullRequest;
@end

@interface APIIssuePullRequest : NSObject
@property (nonatomic, copy) NSString *url;
@property (nonatomic, copy) NSString *htmlURL;
@property (nonatomic, copy) NSString *diffURL;
@property (nonatomic, copy) NSString *patchURL;
@end

@interface APIPayloadPullRequest : NSObject
@property (nonatomic, copy)           NSString *url;
@property (nonatomic, assign)         NSInteger identifier;
@property (nonatomic, copy)           NSString *htmlURL;
@property (nonatomic, copy)           NSString *diffURL;
@property (nonatomic, copy)           NSString *patchURL;
@property (nonatomic, copy)           NSString *issueURL;
@property (nonatomic, assign)         NSInteger number;
@property (nonatomic, copy)           NSString *state;
@property (nonatomic, assign)         BOOL isLocked;
@property (nonatomic, copy)           NSString *title;
@property (nonatomic, strong)         APIUser *user;
@property (nonatomic, copy)           NSString *body;
@property (nonatomic, copy)           NSString *createdAt;
@property (nonatomic, copy)           NSString *updatedAt;
@property (nonatomic, nullable, copy) id closedAt;
@property (nonatomic, nullable, copy) id mergedAt;
@property (nonatomic, nullable, copy) id mergeCommitSHA;
@property (nonatomic, nullable, copy) id assignee;
@property (nonatomic, copy)           NSArray *assignees;
@property (nonatomic, copy)           NSArray *requestedReviewers;
@property (nonatomic, copy)           NSArray *requestedTeams;
@property (nonatomic, nullable, copy) id milestone;
@property (nonatomic, copy)           NSString *commitsURL;
@property (nonatomic, copy)           NSString *reviewCommentsURL;
@property (nonatomic, copy)           NSString *reviewCommentURL;
@property (nonatomic, copy)           NSString *commentsURL;
@property (nonatomic, copy)           NSString *statusesURL;
@property (nonatomic, strong)         APIBase *head;
@property (nonatomic, strong)         APIBase *base;
@property (nonatomic, strong)         APILinks *links;
@property (nonatomic, copy)           NSString *authorAssociation;
@property (nonatomic, assign)         BOOL isMerged;
@property (nonatomic, nullable, copy) id mergeable;
@property (nonatomic, nullable, copy) id rebaseable;
@property (nonatomic, copy)           NSString *mergeableState;
@property (nonatomic, nullable, copy) id mergedBy;
@property (nonatomic, assign)         NSInteger comments;
@property (nonatomic, assign)         NSInteger reviewComments;
@property (nonatomic, assign)         BOOL isMaintainerCanModify;
@property (nonatomic, assign)         NSInteger commits;
@property (nonatomic, assign)         NSInteger additions;
@property (nonatomic, assign)         NSInteger deletions;
@property (nonatomic, assign)         NSInteger changedFiles;
@end

@interface APIBase : NSObject
@property (nonatomic, copy)   NSString *label;
@property (nonatomic, copy)   NSString *ref;
@property (nonatomic, copy)   NSString *sha;
@property (nonatomic, strong) APIUser *user;
@property (nonatomic, strong) APIBaseRepo *repo;
@end

@interface APIBaseRepo : NSObject
@property (nonatomic, assign)         NSInteger identifier;
@property (nonatomic, copy)           NSString *name;
@property (nonatomic, copy)           NSString *fullName;
@property (nonatomic, strong)         APIUser *owner;
@property (nonatomic, assign)         BOOL isPrivate;
@property (nonatomic, copy)           NSString *htmlURL;
@property (nonatomic, nullable, copy) NSString *theDescription;
@property (nonatomic, assign)         BOOL isFork;
@property (nonatomic, copy)           NSString *url;
@property (nonatomic, copy)           NSString *forksURL;
@property (nonatomic, copy)           NSString *keysURL;
@property (nonatomic, copy)           NSString *collaboratorsURL;
@property (nonatomic, copy)           NSString *teamsURL;
@property (nonatomic, copy)           NSString *hooksURL;
@property (nonatomic, copy)           NSString *issueEventsURL;
@property (nonatomic, copy)           NSString *eventsURL;
@property (nonatomic, copy)           NSString *assigneesURL;
@property (nonatomic, copy)           NSString *branchesURL;
@property (nonatomic, copy)           NSString *tagsURL;
@property (nonatomic, copy)           NSString *blobsURL;
@property (nonatomic, copy)           NSString *gitTagsURL;
@property (nonatomic, copy)           NSString *gitRefsURL;
@property (nonatomic, copy)           NSString *treesURL;
@property (nonatomic, copy)           NSString *statusesURL;
@property (nonatomic, copy)           NSString *languagesURL;
@property (nonatomic, copy)           NSString *stargazersURL;
@property (nonatomic, copy)           NSString *contributorsURL;
@property (nonatomic, copy)           NSString *subscribersURL;
@property (nonatomic, copy)           NSString *subscriptionURL;
@property (nonatomic, copy)           NSString *commitsURL;
@property (nonatomic, copy)           NSString *gitCommitsURL;
@property (nonatomic, copy)           NSString *commentsURL;
@property (nonatomic, copy)           NSString *issueCommentURL;
@property (nonatomic, copy)           NSString *contentsURL;
@property (nonatomic, copy)           NSString *compareURL;
@property (nonatomic, copy)           NSString *mergesURL;
@property (nonatomic, copy)           NSString *archiveURL;
@property (nonatomic, copy)           NSString *downloadsURL;
@property (nonatomic, copy)           NSString *issuesURL;
@property (nonatomic, copy)           NSString *pullsURL;
@property (nonatomic, copy)           NSString *milestonesURL;
@property (nonatomic, copy)           NSString *notificationsURL;
@property (nonatomic, copy)           NSString *labelsURL;
@property (nonatomic, copy)           NSString *releasesURL;
@property (nonatomic, copy)           NSString *deploymentsURL;
@property (nonatomic, copy)           NSString *createdAt;
@property (nonatomic, copy)           NSString *updatedAt;
@property (nonatomic, copy)           NSString *pushedAt;
@property (nonatomic, copy)           NSString *gitURL;
@property (nonatomic, copy)           NSString *sshURL;
@property (nonatomic, copy)           NSString *cloneURL;
@property (nonatomic, copy)           NSString *svnURL;
@property (nonatomic, nullable, copy) id homepage;
@property (nonatomic, assign)         NSInteger size;
@property (nonatomic, assign)         NSInteger stargazersCount;
@property (nonatomic, assign)         NSInteger watchersCount;
@property (nonatomic, nullable, copy) NSString *language;
@property (nonatomic, assign)         BOOL hasIssues;
@property (nonatomic, assign)         BOOL hasProjects;
@property (nonatomic, assign)         BOOL hasDownloads;
@property (nonatomic, assign)         BOOL hasWiki;
@property (nonatomic, assign)         BOOL hasPages;
@property (nonatomic, assign)         NSInteger forksCount;
@property (nonatomic, nullable, copy) id mirrorURL;
@property (nonatomic, assign)         BOOL isArchived;
@property (nonatomic, assign)         NSInteger openIssuesCount;
@property (nonatomic, nullable, copy) id license;
@property (nonatomic, assign)         NSInteger forks;
@property (nonatomic, assign)         NSInteger openIssues;
@property (nonatomic, assign)         NSInteger watchers;
@property (nonatomic, copy)           NSString *defaultBranch;
@end

@interface APILinks : NSObject
@property (nonatomic, strong) APIComments *self;
@property (nonatomic, strong) APIComments *html;
@property (nonatomic, strong) APIComments *issue;
@property (nonatomic, strong) APIComments *comments;
@property (nonatomic, strong) APIComments *reviewComments;
@property (nonatomic, strong) APIComments *reviewComment;
@property (nonatomic, strong) APIComments *commits;
@property (nonatomic, strong) APIComments *statuses;
@end

@interface APIComments : NSObject
@property (nonatomic, copy) NSString *href;
@end

@interface APIEventRepo : NSObject
@property (nonatomic, assign) NSInteger identifier;
@property (nonatomic, copy)   NSString *name;
@property (nonatomic, copy)   NSString *url;
@end

@interface APIGist : NSObject
@property (nonatomic, copy)             NSString *url;
@property (nonatomic, copy)             NSString *forksURL;
@property (nonatomic, copy)             NSString *commitsURL;
@property (nonatomic, copy)             NSString *identifier;
@property (nonatomic, copy)             NSString *gitPullURL;
@property (nonatomic, copy)             NSString *gitPushURL;
@property (nonatomic, copy)             NSString *htmlURL;
@property (nonatomic, copy)             NSDictionary<NSString *, APIFile *> *files;
@property (nonatomic, assign)           BOOL isPublic;
@property (nonatomic, copy)             NSString *createdAt;
@property (nonatomic, copy)             NSString *updatedAt;
@property (nonatomic, nullable, copy)   NSString *theDescription;
@property (nonatomic, assign)           NSInteger comments;
@property (nonatomic, nullable, copy)   id user;
@property (nonatomic, copy)             NSString *commentsURL;
@property (nonatomic, nullable, strong) APIUser *owner;
@property (nonatomic, assign)           BOOL isTruncated;
@end

@interface APIFile : NSObject
@property (nonatomic, copy)           NSString *filename;
@property (nonatomic, copy)           NSString *type;
@property (nonatomic, nullable, copy) NSString *language;
@property (nonatomic, copy)           NSString *rawURL;
@property (nonatomic, assign)         NSInteger size;
@end

@interface APIMeta : NSObject
@property (nonatomic, assign) BOOL isVerifiablePasswordAuthentication;
@property (nonatomic, copy)   NSString *githubServicesSHA;
@property (nonatomic, copy)   NSArray<NSString *> *hooks;
@property (nonatomic, copy)   NSArray<NSString *> *git;
@property (nonatomic, copy)   NSArray<NSString *> *pages;
@property (nonatomic, copy)   NSArray<NSString *> *importer;

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error;
- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error;
- (NSData *_Nullable)toData:(NSError *_Nullable *)error;
@end

NS_ASSUME_NONNULL_END
