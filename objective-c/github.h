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
@class APICommentLinks;
@class APIHTML;
@class APIUser;
@class APIUserType;
@class APICommit;
@class APIAuthor;
@class APIForkee;
@class APILicense;
@class APIIssue;
@class APILabel;
@class APIPullRequest;
@class APIBase;
@class APIPullRequestLinks;
@class APIRepo;
@class APIGist;
@class APIFiles;
@class APIEmpty;
@class APIType;
@class APIUser;
@class APIGravatarID;
@class APIUserType;
@class APIMeta;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Boxed enums

@interface APIGravatarID : NSObject
@property (nonatomic, readonly, copy) NSString *value;
+ (instancetype _Nullable)withValue:(NSString *)value;
+ (APIGravatarID *)empty;
@end

@interface APIUserType : NSObject
@property (nonatomic, readonly, copy) NSString *value;
+ (instancetype _Nullable)withValue:(NSString *)value;
+ (APIUserType *)organization;
+ (APIUserType *)user;
@end

@interface APIType : NSObject
@property (nonatomic, readonly, copy) NSString *value;
+ (instancetype _Nullable)withValue:(NSString *)value;
+ (APIType *)applicationJSON;
+ (APIType *)applicationXSh;
+ (APIType *)textPlain;
+ (APIType *)textTabSeparatedValues;
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
@property (nonatomic, strong)           APIRepo *repo;
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
@property (nonatomic, nullable, copy)   NSString *masterBranch;
@property (nonatomic, nullable, copy)   NSString *theDescription;
@property (nonatomic, nullable, copy)   NSString *pusherType;
@property (nonatomic, nullable, strong) NSNumber *pushID;
@property (nonatomic, nullable, strong) NSNumber *size;
@property (nonatomic, nullable, strong) NSNumber *distinctSize;
@property (nonatomic, nullable, copy)   NSString *head;
@property (nonatomic, nullable, copy)   NSString *before;
@property (nonatomic, nullable, copy)   NSArray<APICommit *> *commits;
@property (nonatomic, nullable, strong) APIForkee *forkee;
@property (nonatomic, nullable, copy)   NSString *action;
@property (nonatomic, nullable, strong) APIIssue *issue;
@property (nonatomic, nullable, strong) NSNumber *number;
@property (nonatomic, nullable, strong) APIPullRequest *pullRequest;
@property (nonatomic, nullable, strong) APIComment *comment;
@end

@interface APIComment : NSObject
@property (nonatomic, copy)   NSString *url;
@property (nonatomic, assign) NSInteger pullRequestReviewID;
@property (nonatomic, assign) NSInteger identifier;
@property (nonatomic, copy)   NSString *diffHunk;
@property (nonatomic, copy)   NSString *path;
@property (nonatomic, assign) NSInteger position;
@property (nonatomic, assign) NSInteger originalPosition;
@property (nonatomic, copy)   NSString *commitID;
@property (nonatomic, copy)   NSString *originalCommitID;
@property (nonatomic, strong) APIUser *user;
@property (nonatomic, copy)   NSString *body;
@property (nonatomic, copy)   NSString *createdAt;
@property (nonatomic, copy)   NSString *updatedAt;
@property (nonatomic, copy)   NSString *htmlURL;
@property (nonatomic, copy)   NSString *pullRequestURL;
@property (nonatomic, copy)   NSString *authorAssociation;
@property (nonatomic, strong) APICommentLinks *links;
@end

@interface APICommentLinks : NSObject
@property (nonatomic, strong) APIHTML *self;
@property (nonatomic, strong) APIHTML *html;
@property (nonatomic, strong) APIHTML *pullRequest;
@end

@interface APIHTML : NSObject
@property (nonatomic, copy) NSString *href;
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
@property (nonatomic, assign) APIUserType *type;
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

@interface APIForkee : NSObject
@property (nonatomic, assign)           NSInteger identifier;
@property (nonatomic, copy)             NSString *name;
@property (nonatomic, copy)             NSString *fullName;
@property (nonatomic, strong)           APIUser *owner;
@property (nonatomic, assign)           BOOL isPrivate;
@property (nonatomic, copy)             NSString *htmlURL;
@property (nonatomic, nullable, copy)   NSString *theDescription;
@property (nonatomic, assign)           BOOL isFork;
@property (nonatomic, copy)             NSString *url;
@property (nonatomic, copy)             NSString *forksURL;
@property (nonatomic, copy)             NSString *keysURL;
@property (nonatomic, copy)             NSString *collaboratorsURL;
@property (nonatomic, copy)             NSString *teamsURL;
@property (nonatomic, copy)             NSString *hooksURL;
@property (nonatomic, copy)             NSString *issueEventsURL;
@property (nonatomic, copy)             NSString *eventsURL;
@property (nonatomic, copy)             NSString *assigneesURL;
@property (nonatomic, copy)             NSString *branchesURL;
@property (nonatomic, copy)             NSString *tagsURL;
@property (nonatomic, copy)             NSString *blobsURL;
@property (nonatomic, copy)             NSString *gitTagsURL;
@property (nonatomic, copy)             NSString *gitRefsURL;
@property (nonatomic, copy)             NSString *treesURL;
@property (nonatomic, copy)             NSString *statusesURL;
@property (nonatomic, copy)             NSString *languagesURL;
@property (nonatomic, copy)             NSString *stargazersURL;
@property (nonatomic, copy)             NSString *contributorsURL;
@property (nonatomic, copy)             NSString *subscribersURL;
@property (nonatomic, copy)             NSString *subscriptionURL;
@property (nonatomic, copy)             NSString *commitsURL;
@property (nonatomic, copy)             NSString *gitCommitsURL;
@property (nonatomic, copy)             NSString *commentsURL;
@property (nonatomic, copy)             NSString *issueCommentURL;
@property (nonatomic, copy)             NSString *contentsURL;
@property (nonatomic, copy)             NSString *compareURL;
@property (nonatomic, copy)             NSString *mergesURL;
@property (nonatomic, copy)             NSString *archiveURL;
@property (nonatomic, copy)             NSString *downloadsURL;
@property (nonatomic, copy)             NSString *issuesURL;
@property (nonatomic, copy)             NSString *pullsURL;
@property (nonatomic, copy)             NSString *milestonesURL;
@property (nonatomic, copy)             NSString *notificationsURL;
@property (nonatomic, copy)             NSString *labelsURL;
@property (nonatomic, copy)             NSString *releasesURL;
@property (nonatomic, copy)             NSString *deploymentsURL;
@property (nonatomic, copy)             NSString *createdAt;
@property (nonatomic, copy)             NSString *updatedAt;
@property (nonatomic, copy)             NSString *pushedAt;
@property (nonatomic, copy)             NSString *gitURL;
@property (nonatomic, copy)             NSString *sshURL;
@property (nonatomic, copy)             NSString *cloneURL;
@property (nonatomic, copy)             NSString *svnURL;
@property (nonatomic, nullable, copy)   NSString *homepage;
@property (nonatomic, assign)           NSInteger size;
@property (nonatomic, assign)           NSInteger stargazersCount;
@property (nonatomic, assign)           NSInteger watchersCount;
@property (nonatomic, nullable, copy)   NSString *language;
@property (nonatomic, assign)           BOOL hasIssues;
@property (nonatomic, assign)           BOOL hasProjects;
@property (nonatomic, assign)           BOOL hasDownloads;
@property (nonatomic, assign)           BOOL hasWiki;
@property (nonatomic, assign)           BOOL hasPages;
@property (nonatomic, assign)           NSInteger forksCount;
@property (nonatomic, nullable, copy)   id mirrorURL;
@property (nonatomic, assign)           BOOL isArchived;
@property (nonatomic, assign)           NSInteger openIssuesCount;
@property (nonatomic, nullable, strong) APILicense *license;
@property (nonatomic, assign)           NSInteger forks;
@property (nonatomic, assign)           NSInteger openIssues;
@property (nonatomic, assign)           NSInteger watchers;
@property (nonatomic, copy)             NSString *defaultBranch;
@property (nonatomic, nullable, strong) NSNumber *public;
@end

@interface APILicense : NSObject
@property (nonatomic, copy)           NSString *key;
@property (nonatomic, copy)           NSString *name;
@property (nonatomic, nullable, copy) NSString *spdxID;
@property (nonatomic, nullable, copy) NSString *url;
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
@property (nonatomic, copy)             NSArray<APILabel *> *labels;
@property (nonatomic, copy)             NSString *state;
@property (nonatomic, assign)           BOOL isLocked;
@property (nonatomic, nullable, strong) APIUser *assignee;
@property (nonatomic, copy)             NSArray<APIUser *> *assignees;
@property (nonatomic, nullable, copy)   id milestone;
@property (nonatomic, assign)           NSInteger comments;
@property (nonatomic, copy)             NSString *createdAt;
@property (nonatomic, copy)             NSString *updatedAt;
@property (nonatomic, nullable, copy)   NSString *closedAt;
@property (nonatomic, copy)             NSString *authorAssociation;
@property (nonatomic, copy)             NSString *body;
@end

@interface APILabel : NSObject
@property (nonatomic, assign) NSInteger identifier;
@property (nonatomic, copy)   NSString *url;
@property (nonatomic, copy)   NSString *name;
@property (nonatomic, copy)   NSString *color;
@property (nonatomic, assign) BOOL isDefault;
@end

@interface APIPullRequest : NSObject
@property (nonatomic, copy)             NSString *url;
@property (nonatomic, assign)           NSInteger identifier;
@property (nonatomic, copy)             NSString *htmlURL;
@property (nonatomic, copy)             NSString *diffURL;
@property (nonatomic, copy)             NSString *patchURL;
@property (nonatomic, copy)             NSString *issueURL;
@property (nonatomic, assign)           NSInteger number;
@property (nonatomic, copy)             NSString *state;
@property (nonatomic, assign)           BOOL isLocked;
@property (nonatomic, copy)             NSString *title;
@property (nonatomic, strong)           APIUser *user;
@property (nonatomic, copy)             NSString *body;
@property (nonatomic, copy)             NSString *createdAt;
@property (nonatomic, copy)             NSString *updatedAt;
@property (nonatomic, nullable, copy)   id closedAt;
@property (nonatomic, nullable, copy)   id mergedAt;
@property (nonatomic, nullable, copy)   NSString *mergeCommitSHA;
@property (nonatomic, nullable, copy)   id assignee;
@property (nonatomic, copy)             NSArray *assignees;
@property (nonatomic, copy)             NSArray *requestedReviewers;
@property (nonatomic, copy)             NSArray *requestedTeams;
@property (nonatomic, nullable, copy)   id milestone;
@property (nonatomic, copy)             NSString *commitsURL;
@property (nonatomic, copy)             NSString *reviewCommentsURL;
@property (nonatomic, copy)             NSString *reviewCommentURL;
@property (nonatomic, copy)             NSString *commentsURL;
@property (nonatomic, copy)             NSString *statusesURL;
@property (nonatomic, strong)           APIBase *head;
@property (nonatomic, strong)           APIBase *base;
@property (nonatomic, strong)           APIPullRequestLinks *links;
@property (nonatomic, copy)             NSString *authorAssociation;
@property (nonatomic, nullable, strong) NSNumber *merged;
@property (nonatomic, nullable, copy)   id mergeable;
@property (nonatomic, nullable, copy)   id rebaseable;
@property (nonatomic, nullable, copy)   NSString *mergeableState;
@property (nonatomic, nullable, copy)   id mergedBy;
@property (nonatomic, nullable, strong) NSNumber *comments;
@property (nonatomic, nullable, strong) NSNumber *reviewComments;
@property (nonatomic, nullable, strong) NSNumber *maintainerCanModify;
@property (nonatomic, nullable, strong) NSNumber *commits;
@property (nonatomic, nullable, strong) NSNumber *additions;
@property (nonatomic, nullable, strong) NSNumber *deletions;
@property (nonatomic, nullable, strong) NSNumber *changedFiles;
@end

@interface APIBase : NSObject
@property (nonatomic, copy)   NSString *label;
@property (nonatomic, copy)   NSString *ref;
@property (nonatomic, copy)   NSString *sha;
@property (nonatomic, strong) APIUser *user;
@property (nonatomic, strong) APIForkee *repo;
@end

@interface APIPullRequestLinks : NSObject
@property (nonatomic, strong) APIHTML *self;
@property (nonatomic, strong) APIHTML *html;
@property (nonatomic, strong) APIHTML *issue;
@property (nonatomic, strong) APIHTML *comments;
@property (nonatomic, strong) APIHTML *reviewComments;
@property (nonatomic, strong) APIHTML *reviewComment;
@property (nonatomic, strong) APIHTML *commits;
@property (nonatomic, strong) APIHTML *statuses;
@end

@interface APIRepo : NSObject
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
@property (nonatomic, strong)           APIFiles *files;
@property (nonatomic, assign)           BOOL isPublic;
@property (nonatomic, copy)             NSString *createdAt;
@property (nonatomic, copy)             NSString *updatedAt;
@property (nonatomic, nullable, copy)   NSString *theDescription;
@property (nonatomic, assign)           NSInteger comments;
@property (nonatomic, nullable, copy)   id user;
@property (nonatomic, copy)             NSString *commentsURL;
@property (nonatomic, assign)           BOOL isTruncated;
@property (nonatomic, nullable, strong) APIUser *owner;
@end

@interface APIFiles : NSObject
@property (nonatomic, nullable, strong) APIEmpty *gistfile1Txt;
@property (nonatomic, nullable, strong) APIEmpty *ruwikiruscorporaUposSkipgram300_2_2018_B2B090A678A3D66B62Ddf890Eefe5F26ConfigJSON;
@property (nonatomic, nullable, strong) APIEmpty *ruwikiruscorporaUposSkipgram300_2_2018_B2B090A678A3D66B62Ddf890Eefe5F26MetadataTsv;
@property (nonatomic, nullable, strong) APIEmpty *ruwikiruscorporaUposSkipgram300_2_2018_B2B090A678A3D66B62Ddf890Eefe5F26TensorTsv;
@property (nonatomic, nullable, strong) APIEmpty *configJSON;
@property (nonatomic, nullable, strong) APIEmpty *empty;
@property (nonatomic, nullable, strong) APIEmpty *the6MnUZy7Z;
@property (nonatomic, nullable, strong) APIEmpty *leDbreatheIno;
@property (nonatomic, nullable, strong) APIEmpty *i3BlocksSpotify;
@property (nonatomic, nullable, strong) APIEmpty *readmeMd;
@property (nonatomic, nullable, strong) APIEmpty *decryptFileSh;
@property (nonatomic, nullable, strong) APIEmpty *encryptFileSh;
@property (nonatomic, nullable, strong) APIEmpty *limitedNoOfRecordsJava;
@property (nonatomic, nullable, strong) APIEmpty *clientApp;
@property (nonatomic, nullable, strong) APIEmpty *serverAp;
@property (nonatomic, nullable, strong) APIEmpty *ruwikiruscorporaUposSkipgram300_2_2018_Fafdb1F6D6866Fb229E806Fc354B7458ConfigJSON;
@end

@interface APIEmpty : NSObject
@property (nonatomic, copy)           NSString *filename;
@property (nonatomic, assign)         APIType *type;
@property (nonatomic, nullable, copy) NSString *language;
@property (nonatomic, copy)           NSString *rawURL;
@property (nonatomic, assign)         NSInteger size;
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
@property (nonatomic, assign) APIUserType *type;
@property (nonatomic, assign) BOOL isSiteAdmin;
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
