#import "github.h"

#define λ(decl, expr) (^(decl) { return (expr); })

static id NSNullify(id _Nullable x) {
    return (x == nil || x == NSNull.null) ? NSNull.null : x;
}

NS_ASSUME_NONNULL_BEGIN

@interface APIEvent (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface APIActor (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface APIPayload (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface APIComment (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface APICommentLinks (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface APIHTML (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface APIUser (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface APICommit (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface APIAuthor (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface APIIssue (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface APIPullRequest (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface APIBase (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface APIBaseRepo (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface APILicense (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface APIPullRequestLinks (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface APIEventRepo (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface APIGist (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface APIFiles (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface APIEmpty (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface APIUser (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface APIMeta (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@implementation APIGravatarID
+ (NSDictionary<NSString *, APIGravatarID *> *)values
{
    static NSDictionary<NSString *, APIGravatarID *> *values;
    return values = values ? values : @{
        @"": [[APIGravatarID alloc] initWithValue:@""],
    };
}

+ (APIGravatarID *)empty { return APIGravatarID.values[@""]; }

+ (instancetype _Nullable)withValue:(NSString *)value
{
    return APIGravatarID.values[value];
}

- (instancetype)initWithValue:(NSString *)value
{
    if (self = [super init]) _value = value;
    return self;
}

- (NSUInteger)hash { return _value.hash; }
@end

@implementation APIType
+ (NSDictionary<NSString *, APIType *> *)values
{
    static NSDictionary<NSString *, APIType *> *values;
    return values = values ? values : @{
        @"User": [[APIType alloc] initWithValue:@"User"],
    };
}

+ (APIType *)user { return APIType.values[@"User"]; }

+ (instancetype _Nullable)withValue:(NSString *)value
{
    return APIType.values[value];
}

- (instancetype)initWithValue:(NSString *)value
{
    if (self = [super init]) _value = value;
    return self;
}

- (NSUInteger)hash { return _value.hash; }
@end

static id map(id collection, id (^f)(id value)) {
    id result = nil;
    if ([collection isKindOfClass:NSArray.class]) {
        result = [NSMutableArray arrayWithCapacity:[collection count]];
        for (id x in collection) [result addObject:f(x)];
    } else if ([collection isKindOfClass:NSDictionary.class]) {
        result = [NSMutableDictionary dictionaryWithCapacity:[collection count]];
        for (id key in collection) [result setObject:f([collection objectForKey:key]) forKey:key];
    }
    return result;
}

#pragma mark - JSON serialization

APIData *_Nullable APIDataFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : map(json, λ(id x, x));
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

APIData *_Nullable APIDataFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return APIDataFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable APIDataToData(APIData *data, NSError **error)
{
    @try {
        id json = data;
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable APIDataToJSON(APIData *data, NSStringEncoding encoding, NSError **error)
{
    NSData *data = APIDataToData(data, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

APIEmojis *_Nullable APIEmojisFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : map(json, λ(id x, x));
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

APIEmojis *_Nullable APIEmojisFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return APIEmojisFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable APIEmojisToData(APIEmojis *emojis, NSError **error)
{
    @try {
        id json = emojis;
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable APIEmojisToJSON(APIEmojis *emojis, NSStringEncoding encoding, NSError **error)
{
    NSData *data = APIEmojisToData(emojis, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

APIEvents *_Nullable APIEventsFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : map(json, λ(id x, [APIEvent fromJSONDictionary:x]));
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

APIEvents *_Nullable APIEventsFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return APIEventsFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable APIEventsToData(APIEvents *events, NSError **error)
{
    @try {
        id json = map(events, λ(id x, [x JSONDictionary]));
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable APIEventsToJSON(APIEvents *events, NSStringEncoding encoding, NSError **error)
{
    NSData *data = APIEventsToData(events, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

APIGists *_Nullable APIGistsFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : map(json, λ(id x, [APIGist fromJSONDictionary:x]));
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

APIGists *_Nullable APIGistsFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return APIGistsFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable APIGistsToData(APIGists *gists, NSError **error)
{
    @try {
        id json = map(gists, λ(id x, [x JSONDictionary]));
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable APIGistsToJSON(APIGists *gists, NSStringEncoding encoding, NSError **error)
{
    NSData *data = APIGistsToData(gists, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

APIMeta *_Nullable APIMetaFromData(NSData *data, NSError **error)
{
    @try {
        id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:error];
        return *error ? nil : [APIMeta fromJSONDictionary:json];
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

APIMeta *_Nullable APIMetaFromJSON(NSString *json, NSStringEncoding encoding, NSError **error)
{
    return APIMetaFromData([json dataUsingEncoding:encoding], error);
}

NSData *_Nullable APIMetaToData(APIMeta *meta, NSError **error)
{
    @try {
        id json = [meta JSONDictionary];
        NSData *data = [NSJSONSerialization dataWithJSONObject:json options:kNilOptions error:error];
        return *error ? nil : data;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:@"JSONSerialization" code:-1 userInfo:@{ @"exception": exception }];
        return nil;
    }
}

NSString *_Nullable APIMetaToJSON(APIMeta *meta, NSStringEncoding encoding, NSError **error)
{
    NSData *data = APIMetaToData(meta, error);
    return data ? [[NSString alloc] initWithData:data encoding:encoding] : nil;
}

@implementation APIEvent
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"id": @"identifier",
        @"type": @"type",
        @"actor": @"actor",
        @"repo": @"repo",
        @"payload": @"payload",
        @"public": @"isPublic",
        @"created_at": @"createdAt",
        @"org": @"org",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[APIEvent alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _actor = [APIActor fromJSONDictionary:(id)_actor];
        _repo = [APIEventRepo fromJSONDictionary:(id)_repo];
        _payload = [APIPayload fromJSONDictionary:(id)_payload];
        _org = [APIActor fromJSONDictionary:(id)_org];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:APIEvent.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:APIEvent.properties.allValues] mutableCopy];

    for (id jsonName in APIEvent.properties) {
        id propertyName = APIEvent.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"actor": [_actor JSONDictionary],
        @"repo": [_repo JSONDictionary],
        @"payload": [_payload JSONDictionary],
        @"public": _isPublic ? @YES : @NO,
        @"org": NSNullify([_org JSONDictionary]),
    }];

    return dict;
}
@end

@implementation APIActor
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"id": @"identifier",
        @"login": @"login",
        @"display_login": @"displayLogin",
        @"gravatar_id": @"gravatarID",
        @"url": @"url",
        @"avatar_url": @"avatarURL",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[APIActor alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _gravatarID = [APIGravatarID withValue:(id)_gravatarID];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:APIActor.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:APIActor.properties.allValues] mutableCopy];

    for (id jsonName in APIActor.properties) {
        id propertyName = APIActor.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"gravatar_id": [_gravatarID value],
    }];

    return dict;
}
@end

@implementation APIPayload
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"push_id": @"pushID",
        @"size": @"size",
        @"distinct_size": @"distinctSize",
        @"ref": @"ref",
        @"head": @"head",
        @"before": @"before",
        @"commits": @"commits",
        @"ref_type": @"refType",
        @"master_branch": @"masterBranch",
        @"description": @"theDescription",
        @"pusher_type": @"pusherType",
        @"action": @"action",
        @"issue": @"issue",
        @"comment": @"comment",
        @"pull_request": @"pullRequest",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[APIPayload alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _commits = map(_commits, λ(id x, [APICommit fromJSONDictionary:x]));
        _issue = [APIIssue fromJSONDictionary:(id)_issue];
        _comment = [APIComment fromJSONDictionary:(id)_comment];
        _pullRequest = [APIPullRequest fromJSONDictionary:(id)_pullRequest];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:APIPayload.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:APIPayload.properties.allValues] mutableCopy];

    for (id jsonName in APIPayload.properties) {
        id propertyName = APIPayload.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"commits": NSNullify(map(_commits, λ(id x, [x JSONDictionary]))),
        @"issue": NSNullify([_issue JSONDictionary]),
        @"comment": NSNullify([_comment JSONDictionary]),
        @"pull_request": NSNullify([_pullRequest JSONDictionary]),
    }];

    return dict;
}
@end

@implementation APIComment
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"url": @"url",
        @"html_url": @"htmlURL",
        @"issue_url": @"issueURL",
        @"id": @"identifier",
        @"user": @"user",
        @"created_at": @"createdAt",
        @"updated_at": @"updatedAt",
        @"author_association": @"authorAssociation",
        @"body": @"body",
        @"pull_request_review_id": @"pullRequestReviewID",
        @"diff_hunk": @"diffHunk",
        @"path": @"path",
        @"position": @"position",
        @"original_position": @"originalPosition",
        @"commit_id": @"commitID",
        @"original_commit_id": @"originalCommitID",
        @"pull_request_url": @"pullRequestURL",
        @"_links": @"links",
        @"in_reply_to_id": @"inReplyToID",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[APIComment alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _user = [APIUser fromJSONDictionary:(id)_user];
        _links = [APICommentLinks fromJSONDictionary:(id)_links];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:APIComment.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:APIComment.properties.allValues] mutableCopy];

    for (id jsonName in APIComment.properties) {
        id propertyName = APIComment.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"user": [_user JSONDictionary],
        @"_links": NSNullify([_links JSONDictionary]),
    }];

    return dict;
}
@end

@implementation APICommentLinks
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"self": @"self",
        @"html": @"html",
        @"pull_request": @"pullRequest",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[APICommentLinks alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _self = [APIHTML fromJSONDictionary:(id)_self];
        _html = [APIHTML fromJSONDictionary:(id)_html];
        _pullRequest = [APIHTML fromJSONDictionary:(id)_pullRequest];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:APICommentLinks.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:APICommentLinks.properties.allValues] mutableCopy];

    for (id jsonName in APICommentLinks.properties) {
        id propertyName = APICommentLinks.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"self": [_self JSONDictionary],
        @"html": [_html JSONDictionary],
        @"pull_request": [_pullRequest JSONDictionary],
    }];

    return dict;
}
@end

@implementation APIHTML
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"href": @"href",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[APIHTML alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

- (NSDictionary *)JSONDictionary
{
    return [self dictionaryWithValuesForKeys:APIHTML.properties.allValues];
}
@end

@implementation APIUser
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"login": @"login",
        @"id": @"identifier",
        @"avatar_url": @"avatarURL",
        @"gravatar_id": @"gravatarID",
        @"url": @"url",
        @"html_url": @"htmlURL",
        @"followers_url": @"followersURL",
        @"following_url": @"followingURL",
        @"gists_url": @"gistsURL",
        @"starred_url": @"starredURL",
        @"subscriptions_url": @"subscriptionsURL",
        @"organizations_url": @"organizationsURL",
        @"repos_url": @"reposURL",
        @"events_url": @"eventsURL",
        @"received_events_url": @"receivedEventsURL",
        @"type": @"type",
        @"site_admin": @"isSiteAdmin",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[APIUser alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _gravatarID = [APIGravatarID withValue:(id)_gravatarID];
        _type = [APIType withValue:(id)_type];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:APIUser.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:APIUser.properties.allValues] mutableCopy];

    for (id jsonName in APIUser.properties) {
        id propertyName = APIUser.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"gravatar_id": [_gravatarID value],
        @"type": [_type value],
        @"site_admin": _isSiteAdmin ? @YES : @NO,
    }];

    return dict;
}
@end

@implementation APICommit
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"sha": @"sha",
        @"author": @"author",
        @"message": @"message",
        @"distinct": @"isDistinct",
        @"url": @"url",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[APICommit alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _author = [APIAuthor fromJSONDictionary:(id)_author];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:APICommit.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:APICommit.properties.allValues] mutableCopy];

    for (id jsonName in APICommit.properties) {
        id propertyName = APICommit.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"author": [_author JSONDictionary],
        @"distinct": _isDistinct ? @YES : @NO,
    }];

    return dict;
}
@end

@implementation APIAuthor
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"email": @"email",
        @"name": @"name",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[APIAuthor alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

- (NSDictionary *)JSONDictionary
{
    return [self dictionaryWithValuesForKeys:APIAuthor.properties.allValues];
}
@end

@implementation APIIssue
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"url": @"url",
        @"repository_url": @"repositoryURL",
        @"labels_url": @"labelsURL",
        @"comments_url": @"commentsURL",
        @"events_url": @"eventsURL",
        @"html_url": @"htmlURL",
        @"id": @"identifier",
        @"number": @"number",
        @"title": @"title",
        @"user": @"user",
        @"labels": @"labels",
        @"state": @"state",
        @"locked": @"isLocked",
        @"assignee": @"assignee",
        @"assignees": @"assignees",
        @"milestone": @"milestone",
        @"comments": @"comments",
        @"created_at": @"createdAt",
        @"updated_at": @"updatedAt",
        @"closed_at": @"closedAt",
        @"author_association": @"authorAssociation",
        @"body": @"body",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[APIIssue alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _user = [APIUser fromJSONDictionary:(id)_user];
        _assignee = [APIUser fromJSONDictionary:(id)_assignee];
        _assignees = map(_assignees, λ(id x, [APIUser fromJSONDictionary:x]));
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:APIIssue.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:APIIssue.properties.allValues] mutableCopy];

    for (id jsonName in APIIssue.properties) {
        id propertyName = APIIssue.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"user": [_user JSONDictionary],
        @"locked": _isLocked ? @YES : @NO,
        @"assignee": NSNullify([_assignee JSONDictionary]),
        @"assignees": map(_assignees, λ(id x, [x JSONDictionary])),
    }];

    return dict;
}
@end

@implementation APIPullRequest
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"url": @"url",
        @"id": @"identifier",
        @"html_url": @"htmlURL",
        @"diff_url": @"diffURL",
        @"patch_url": @"patchURL",
        @"issue_url": @"issueURL",
        @"number": @"number",
        @"state": @"state",
        @"locked": @"isLocked",
        @"title": @"title",
        @"user": @"user",
        @"body": @"body",
        @"created_at": @"createdAt",
        @"updated_at": @"updatedAt",
        @"closed_at": @"closedAt",
        @"merged_at": @"mergedAt",
        @"merge_commit_sha": @"mergeCommitSHA",
        @"assignee": @"assignee",
        @"assignees": @"assignees",
        @"requested_reviewers": @"requestedReviewers",
        @"requested_teams": @"requestedTeams",
        @"milestone": @"milestone",
        @"commits_url": @"commitsURL",
        @"review_comments_url": @"reviewCommentsURL",
        @"review_comment_url": @"reviewCommentURL",
        @"comments_url": @"commentsURL",
        @"statuses_url": @"statusesURL",
        @"head": @"head",
        @"base": @"base",
        @"_links": @"links",
        @"author_association": @"authorAssociation",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[APIPullRequest alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _user = [APIUser fromJSONDictionary:(id)_user];
        _assignee = [APIUser fromJSONDictionary:(id)_assignee];
        _assignees = map(_assignees, λ(id x, [APIUser fromJSONDictionary:x]));
        _head = [APIBase fromJSONDictionary:(id)_head];
        _base = [APIBase fromJSONDictionary:(id)_base];
        _links = [APIPullRequestLinks fromJSONDictionary:(id)_links];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:APIPullRequest.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:APIPullRequest.properties.allValues] mutableCopy];

    for (id jsonName in APIPullRequest.properties) {
        id propertyName = APIPullRequest.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"locked": _isLocked ? @YES : @NO,
        @"user": [_user JSONDictionary],
        @"assignee": [_assignee JSONDictionary],
        @"assignees": map(_assignees, λ(id x, [x JSONDictionary])),
        @"head": [_head JSONDictionary],
        @"base": [_base JSONDictionary],
        @"_links": [_links JSONDictionary],
    }];

    return dict;
}
@end

@implementation APIBase
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"label": @"label",
        @"ref": @"ref",
        @"sha": @"sha",
        @"user": @"user",
        @"repo": @"repo",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[APIBase alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _user = [APIUser fromJSONDictionary:(id)_user];
        _repo = [APIBaseRepo fromJSONDictionary:(id)_repo];
    }
    return self;
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:APIBase.properties.allValues] mutableCopy];

    [dict addEntriesFromDictionary:@{
        @"user": [_user JSONDictionary],
        @"repo": [_repo JSONDictionary],
    }];

    return dict;
}
@end

@implementation APIBaseRepo
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"id": @"identifier",
        @"name": @"name",
        @"full_name": @"fullName",
        @"owner": @"owner",
        @"private": @"isPrivate",
        @"html_url": @"htmlURL",
        @"description": @"theDescription",
        @"fork": @"isFork",
        @"url": @"url",
        @"forks_url": @"forksURL",
        @"keys_url": @"keysURL",
        @"collaborators_url": @"collaboratorsURL",
        @"teams_url": @"teamsURL",
        @"hooks_url": @"hooksURL",
        @"issue_events_url": @"issueEventsURL",
        @"events_url": @"eventsURL",
        @"assignees_url": @"assigneesURL",
        @"branches_url": @"branchesURL",
        @"tags_url": @"tagsURL",
        @"blobs_url": @"blobsURL",
        @"git_tags_url": @"gitTagsURL",
        @"git_refs_url": @"gitRefsURL",
        @"trees_url": @"treesURL",
        @"statuses_url": @"statusesURL",
        @"languages_url": @"languagesURL",
        @"stargazers_url": @"stargazersURL",
        @"contributors_url": @"contributorsURL",
        @"subscribers_url": @"subscribersURL",
        @"subscription_url": @"subscriptionURL",
        @"commits_url": @"commitsURL",
        @"git_commits_url": @"gitCommitsURL",
        @"comments_url": @"commentsURL",
        @"issue_comment_url": @"issueCommentURL",
        @"contents_url": @"contentsURL",
        @"compare_url": @"compareURL",
        @"merges_url": @"mergesURL",
        @"archive_url": @"archiveURL",
        @"downloads_url": @"downloadsURL",
        @"issues_url": @"issuesURL",
        @"pulls_url": @"pullsURL",
        @"milestones_url": @"milestonesURL",
        @"notifications_url": @"notificationsURL",
        @"labels_url": @"labelsURL",
        @"releases_url": @"releasesURL",
        @"deployments_url": @"deploymentsURL",
        @"created_at": @"createdAt",
        @"updated_at": @"updatedAt",
        @"pushed_at": @"pushedAt",
        @"git_url": @"gitURL",
        @"ssh_url": @"sshURL",
        @"clone_url": @"cloneURL",
        @"svn_url": @"svnURL",
        @"homepage": @"homepage",
        @"size": @"size",
        @"stargazers_count": @"stargazersCount",
        @"watchers_count": @"watchersCount",
        @"language": @"language",
        @"has_issues": @"hasIssues",
        @"has_projects": @"hasProjects",
        @"has_downloads": @"hasDownloads",
        @"has_wiki": @"hasWiki",
        @"has_pages": @"hasPages",
        @"forks_count": @"forksCount",
        @"mirror_url": @"mirrorURL",
        @"archived": @"isArchived",
        @"open_issues_count": @"openIssuesCount",
        @"license": @"license",
        @"forks": @"forks",
        @"open_issues": @"openIssues",
        @"watchers": @"watchers",
        @"default_branch": @"defaultBranch",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[APIBaseRepo alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _owner = [APIUser fromJSONDictionary:(id)_owner];
        _license = [APILicense fromJSONDictionary:(id)_license];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:APIBaseRepo.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:APIBaseRepo.properties.allValues] mutableCopy];

    for (id jsonName in APIBaseRepo.properties) {
        id propertyName = APIBaseRepo.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"owner": [_owner JSONDictionary],
        @"private": _isPrivate ? @YES : @NO,
        @"fork": _isFork ? @YES : @NO,
        @"has_issues": _hasIssues ? @YES : @NO,
        @"has_projects": _hasProjects ? @YES : @NO,
        @"has_downloads": _hasDownloads ? @YES : @NO,
        @"has_wiki": _hasWiki ? @YES : @NO,
        @"has_pages": _hasPages ? @YES : @NO,
        @"archived": _isArchived ? @YES : @NO,
        @"license": [_license JSONDictionary],
    }];

    return dict;
}
@end

@implementation APILicense
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"key": @"key",
        @"name": @"name",
        @"spdx_id": @"spdxID",
        @"url": @"url",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[APILicense alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:APILicense.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:APILicense.properties.allValues] mutableCopy];

    for (id jsonName in APILicense.properties) {
        id propertyName = APILicense.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    return dict;
}
@end

@implementation APIPullRequestLinks
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"self": @"self",
        @"html": @"html",
        @"issue": @"issue",
        @"comments": @"comments",
        @"review_comments": @"reviewComments",
        @"review_comment": @"reviewComment",
        @"commits": @"commits",
        @"statuses": @"statuses",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[APIPullRequestLinks alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _self = [APIHTML fromJSONDictionary:(id)_self];
        _html = [APIHTML fromJSONDictionary:(id)_html];
        _issue = [APIHTML fromJSONDictionary:(id)_issue];
        _comments = [APIHTML fromJSONDictionary:(id)_comments];
        _reviewComments = [APIHTML fromJSONDictionary:(id)_reviewComments];
        _reviewComment = [APIHTML fromJSONDictionary:(id)_reviewComment];
        _commits = [APIHTML fromJSONDictionary:(id)_commits];
        _statuses = [APIHTML fromJSONDictionary:(id)_statuses];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:APIPullRequestLinks.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:APIPullRequestLinks.properties.allValues] mutableCopy];

    for (id jsonName in APIPullRequestLinks.properties) {
        id propertyName = APIPullRequestLinks.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"self": [_self JSONDictionary],
        @"html": [_html JSONDictionary],
        @"issue": [_issue JSONDictionary],
        @"comments": [_comments JSONDictionary],
        @"review_comments": [_reviewComments JSONDictionary],
        @"review_comment": [_reviewComment JSONDictionary],
        @"commits": [_commits JSONDictionary],
        @"statuses": [_statuses JSONDictionary],
    }];

    return dict;
}
@end

@implementation APIEventRepo
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"id": @"identifier",
        @"name": @"name",
        @"url": @"url",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[APIEventRepo alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:APIEventRepo.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:APIEventRepo.properties.allValues] mutableCopy];

    for (id jsonName in APIEventRepo.properties) {
        id propertyName = APIEventRepo.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    return dict;
}
@end

@implementation APIGist
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"url": @"url",
        @"forks_url": @"forksURL",
        @"commits_url": @"commitsURL",
        @"id": @"identifier",
        @"git_pull_url": @"gitPullURL",
        @"git_push_url": @"gitPushURL",
        @"html_url": @"htmlURL",
        @"files": @"files",
        @"public": @"isPublic",
        @"created_at": @"createdAt",
        @"updated_at": @"updatedAt",
        @"description": @"theDescription",
        @"comments": @"comments",
        @"user": @"user",
        @"comments_url": @"commentsURL",
        @"truncated": @"isTruncated",
        @"owner": @"owner",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[APIGist alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _files = [APIFiles fromJSONDictionary:(id)_files];
        _owner = [APIUser fromJSONDictionary:(id)_owner];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:APIGist.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:APIGist.properties.allValues] mutableCopy];

    for (id jsonName in APIGist.properties) {
        id propertyName = APIGist.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"files": [_files JSONDictionary],
        @"public": _isPublic ? @YES : @NO,
        @"truncated": _isTruncated ? @YES : @NO,
        @"owner": NSNullify([_owner JSONDictionary]),
    }];

    return dict;
}
@end

@implementation APIFiles
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"online Free 2018": @"onlineFree2018",
        @"gistfile1.txt": @"gistfile1Txt",
        @"file.cs": @"fileCS",
        @"-": @"empty",
        @"squarespace_orange.css": @"squarespaceOrangeCSS",
        @"test.js": @"testJS",
        @"output_log.txt": @"outputLogTxt",
        @"test1.md": @"test1Md",
        @"remove-orphan-raws.py": @"removeOrphanRawsPy",
        @"sample.pony": @"samplePony",
        @"app.js": @"appJS",
        @"openpanzer-save.json": @"openpanzerSaveJSON",
        @"showrss.py": @"showrssPy",
        @"sanitize_sql_like.rb": @"sanitizeSQLLikeRb",
        @"65-noto.conf": @"the65NotoConf",
        @"run.sh": @"runSh",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[APIFiles alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _onlineFree2018 = [APIEmpty fromJSONDictionary:(id)_onlineFree2018];
        _gistfile1Txt = [APIEmpty fromJSONDictionary:(id)_gistfile1Txt];
        _fileCS = [APIEmpty fromJSONDictionary:(id)_fileCS];
        _empty = [APIEmpty fromJSONDictionary:(id)_empty];
        _squarespaceOrangeCSS = [APIEmpty fromJSONDictionary:(id)_squarespaceOrangeCSS];
        _testJS = [APIEmpty fromJSONDictionary:(id)_testJS];
        _outputLogTxt = [APIEmpty fromJSONDictionary:(id)_outputLogTxt];
        _test1Md = [APIEmpty fromJSONDictionary:(id)_test1Md];
        _removeOrphanRawsPy = [APIEmpty fromJSONDictionary:(id)_removeOrphanRawsPy];
        _samplePony = [APIEmpty fromJSONDictionary:(id)_samplePony];
        _appJS = [APIEmpty fromJSONDictionary:(id)_appJS];
        _openpanzerSaveJSON = [APIEmpty fromJSONDictionary:(id)_openpanzerSaveJSON];
        _showrssPy = [APIEmpty fromJSONDictionary:(id)_showrssPy];
        _sanitizeSQLLikeRb = [APIEmpty fromJSONDictionary:(id)_sanitizeSQLLikeRb];
        _the65NotoConf = [APIEmpty fromJSONDictionary:(id)_the65NotoConf];
        _runSh = [APIEmpty fromJSONDictionary:(id)_runSh];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:APIFiles.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:APIFiles.properties.allValues] mutableCopy];

    for (id jsonName in APIFiles.properties) {
        id propertyName = APIFiles.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"online Free 2018": NSNullify([_onlineFree2018 JSONDictionary]),
        @"gistfile1.txt": NSNullify([_gistfile1Txt JSONDictionary]),
        @"file.cs": NSNullify([_fileCS JSONDictionary]),
        @"-": NSNullify([_empty JSONDictionary]),
        @"squarespace_orange.css": NSNullify([_squarespaceOrangeCSS JSONDictionary]),
        @"test.js": NSNullify([_testJS JSONDictionary]),
        @"output_log.txt": NSNullify([_outputLogTxt JSONDictionary]),
        @"test1.md": NSNullify([_test1Md JSONDictionary]),
        @"remove-orphan-raws.py": NSNullify([_removeOrphanRawsPy JSONDictionary]),
        @"sample.pony": NSNullify([_samplePony JSONDictionary]),
        @"app.js": NSNullify([_appJS JSONDictionary]),
        @"openpanzer-save.json": NSNullify([_openpanzerSaveJSON JSONDictionary]),
        @"showrss.py": NSNullify([_showrssPy JSONDictionary]),
        @"sanitize_sql_like.rb": NSNullify([_sanitizeSQLLikeRb JSONDictionary]),
        @"65-noto.conf": NSNullify([_the65NotoConf JSONDictionary]),
        @"run.sh": NSNullify([_runSh JSONDictionary]),
    }];

    return dict;
}
@end

@implementation APIEmpty
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"filename": @"filename",
        @"type": @"type",
        @"language": @"language",
        @"raw_url": @"rawURL",
        @"size": @"size",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[APIEmpty alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:APIEmpty.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:APIEmpty.properties.allValues] mutableCopy];

    for (id jsonName in APIEmpty.properties) {
        id propertyName = APIEmpty.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    return dict;
}
@end

@implementation APIUser
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"login": @"login",
        @"id": @"identifier",
        @"avatar_url": @"avatarURL",
        @"gravatar_id": @"gravatarID",
        @"url": @"url",
        @"html_url": @"htmlURL",
        @"followers_url": @"followersURL",
        @"following_url": @"followingURL",
        @"gists_url": @"gistsURL",
        @"starred_url": @"starredURL",
        @"subscriptions_url": @"subscriptionsURL",
        @"organizations_url": @"organizationsURL",
        @"repos_url": @"reposURL",
        @"events_url": @"eventsURL",
        @"received_events_url": @"receivedEventsURL",
        @"type": @"type",
        @"site_admin": @"isSiteAdmin",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[APIUser alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _gravatarID = [APIGravatarID withValue:(id)_gravatarID];
        _type = [APIType withValue:(id)_type];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:APIUser.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:APIUser.properties.allValues] mutableCopy];

    for (id jsonName in APIUser.properties) {
        id propertyName = APIUser.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"gravatar_id": [_gravatarID value],
        @"type": [_type value],
        @"site_admin": _isSiteAdmin ? @YES : @NO,
    }];

    return dict;
}
@end

@implementation APIMeta
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"verifiable_password_authentication": @"isVerifiablePasswordAuthentication",
        @"github_services_sha": @"githubServicesSHA",
        @"hooks": @"hooks",
        @"git": @"git",
        @"pages": @"pages",
        @"importer": @"importer",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return APIMetaFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return APIMetaFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[APIMeta alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:APIMeta.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:APIMeta.properties.allValues] mutableCopy];

    for (id jsonName in APIMeta.properties) {
        id propertyName = APIMeta.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"verifiable_password_authentication": _isVerifiablePasswordAuthentication ? @YES : @NO,
    }];

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return APIMetaToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return APIMetaToJSON(self, encoding, error);
}
@end

NS_ASSUME_NONNULL_END
