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

@interface APIForkee (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface APILicense (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface APIIssue (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface APILabel (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface APIMilestone (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface APIIssuePullRequest (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface APIPayloadPullRequest (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface APIBase (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface APIPullRequestLinks (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface APIRepo (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface APIGist (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface APIFile (JSONConversion)
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

@implementation APIUserType
+ (NSDictionary<NSString *, APIUserType *> *)values
{
    static NSDictionary<NSString *, APIUserType *> *values;
    return values = values ? values : @{
        @"Organization": [[APIUserType alloc] initWithValue:@"Organization"],
        @"User": [[APIUserType alloc] initWithValue:@"User"],
    };
}

+ (APIUserType *)organization { return APIUserType.values[@"Organization"]; }
+ (APIUserType *)user { return APIUserType.values[@"User"]; }

+ (instancetype _Nullable)withValue:(NSString *)value
{
    return APIUserType.values[value];
}

- (instancetype)initWithValue:(NSString *)value
{
    if (self = [super init]) _value = value;
    return self;
}

- (NSUInteger)hash { return _value.hash; }
@end

@implementation APIDefaultBranch
+ (NSDictionary<NSString *, APIDefaultBranch *> *)values
{
    static NSDictionary<NSString *, APIDefaultBranch *> *values;
    return values = values ? values : @{
        @"master": [[APIDefaultBranch alloc] initWithValue:@"master"],
    };
}

+ (APIDefaultBranch *)master { return APIDefaultBranch.values[@"master"]; }

+ (instancetype _Nullable)withValue:(NSString *)value
{
    return APIDefaultBranch.values[value];
}

- (instancetype)initWithValue:(NSString *)value
{
    if (self = [super init]) _value = value;
    return self;
}

- (NSUInteger)hash { return _value.hash; }
@end

@implementation APIHomepage
+ (NSDictionary<NSString *, APIHomepage *> *)values
{
    static NSDictionary<NSString *, APIHomepage *> *values;
    return values = values ? values : @{
        @"": [[APIHomepage alloc] initWithValue:@""],
        @"https://valloric.github.io/ycmd/": [[APIHomepage alloc] initWithValue:@"https://valloric.github.io/ycmd/"],
    };
}

+ (APIHomepage *)empty { return APIHomepage.values[@""]; }
+ (APIHomepage *)httpsValloricGithubIoYcmd { return APIHomepage.values[@"https://valloric.github.io/ycmd/"]; }

+ (instancetype _Nullable)withValue:(NSString *)value
{
    return APIHomepage.values[value];
}

- (instancetype)initWithValue:(NSString *)value
{
    if (self = [super init]) _value = value;
    return self;
}

- (NSUInteger)hash { return _value.hash; }
@end

@implementation APIFileType
+ (NSDictionary<NSString *, APIFileType *> *)values
{
    static NSDictionary<NSString *, APIFileType *> *values;
    return values = values ? values : @{
        @"application/json": [[APIFileType alloc] initWithValue:@"application/json"],
        @"application/javascript": [[APIFileType alloc] initWithValue:@"application/javascript"],
        @"text/css": [[APIFileType alloc] initWithValue:@"text/css"],
        @"text/html": [[APIFileType alloc] initWithValue:@"text/html"],
        @"text/plain": [[APIFileType alloc] initWithValue:@"text/plain"],
    };
}

+ (APIFileType *)applicationJSON { return APIFileType.values[@"application/json"]; }
+ (APIFileType *)applicationJavascript { return APIFileType.values[@"application/javascript"]; }
+ (APIFileType *)textCSS { return APIFileType.values[@"text/css"]; }
+ (APIFileType *)textHTML { return APIFileType.values[@"text/html"]; }
+ (APIFileType *)textPlain { return APIFileType.values[@"text/plain"]; }

+ (instancetype _Nullable)withValue:(NSString *)value
{
    return APIFileType.values[value];
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
        _repo = [APIRepo fromJSONDictionary:(id)_repo];
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
        @"action": @"action",
        @"number": @"number",
        @"pull_request": @"pullRequest",
        @"forkee": @"forkee",
        @"ref": @"ref",
        @"ref_type": @"refType",
        @"pusher_type": @"pusherType",
        @"push_id": @"pushID",
        @"size": @"size",
        @"distinct_size": @"distinctSize",
        @"head": @"head",
        @"before": @"before",
        @"commits": @"commits",
        @"issue": @"issue",
        @"master_branch": @"masterBranch",
        @"description": @"theDescription",
        @"comment": @"comment",
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
        _pullRequest = [APIPayloadPullRequest fromJSONDictionary:(id)_pullRequest];
        _forkee = [APIForkee fromJSONDictionary:(id)_forkee];
        _commits = map(_commits, λ(id x, [APICommit fromJSONDictionary:x]));
        _issue = [APIIssue fromJSONDictionary:(id)_issue];
        _comment = [APIComment fromJSONDictionary:(id)_comment];
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
        @"pull_request": NSNullify([_pullRequest JSONDictionary]),
        @"forkee": NSNullify([_forkee JSONDictionary]),
        @"commits": NSNullify(map(_commits, λ(id x, [x JSONDictionary]))),
        @"issue": NSNullify([_issue JSONDictionary]),
        @"comment": NSNullify([_comment JSONDictionary]),
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
        _type = [APIUserType withValue:(id)_type];
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

@implementation APIForkee
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
        @"public": @"public",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[APIForkee alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _owner = [APIUser fromJSONDictionary:(id)_owner];
        _homepage = [APIHomepage withValue:(id)_homepage];
        _license = [APILicense fromJSONDictionary:(id)_license];
        _defaultBranch = [APIDefaultBranch withValue:(id)_defaultBranch];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:APIForkee.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:APIForkee.properties.allValues] mutableCopy];

    for (id jsonName in APIForkee.properties) {
        id propertyName = APIForkee.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"owner": [_owner JSONDictionary],
        @"private": _isPrivate ? @YES : @NO,
        @"fork": _isFork ? @YES : @NO,
        @"homepage": NSNullify([_homepage value]),
        @"has_issues": _hasIssues ? @YES : @NO,
        @"has_projects": _hasProjects ? @YES : @NO,
        @"has_downloads": _hasDownloads ? @YES : @NO,
        @"has_wiki": _hasWiki ? @YES : @NO,
        @"has_pages": _hasPages ? @YES : @NO,
        @"archived": _isArchived ? @YES : @NO,
        @"license": NSNullify([_license JSONDictionary]),
        @"default_branch": [_defaultBranch value],
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
        @"pull_request": @"pullRequest",
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
        _labels = map(_labels, λ(id x, [APILabel fromJSONDictionary:x]));
        _milestone = [APIMilestone fromJSONDictionary:(id)_milestone];
        _pullRequest = [APIIssuePullRequest fromJSONDictionary:(id)_pullRequest];
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
        @"labels": map(_labels, λ(id x, [x JSONDictionary])),
        @"locked": _isLocked ? @YES : @NO,
        @"milestone": NSNullify([_milestone JSONDictionary]),
        @"pull_request": NSNullify([_pullRequest JSONDictionary]),
    }];

    return dict;
}
@end

@implementation APILabel
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"id": @"identifier",
        @"url": @"url",
        @"name": @"name",
        @"color": @"color",
        @"default": @"isDefault",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[APILabel alloc] initWithJSONDictionary:dict] : nil;
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
    [super setValue:value forKey:APILabel.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:APILabel.properties.allValues] mutableCopy];

    for (id jsonName in APILabel.properties) {
        id propertyName = APILabel.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"default": _isDefault ? @YES : @NO,
    }];

    return dict;
}
@end

@implementation APIMilestone
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"url": @"url",
        @"html_url": @"htmlURL",
        @"labels_url": @"labelsURL",
        @"id": @"identifier",
        @"number": @"number",
        @"title": @"title",
        @"description": @"theDescription",
        @"creator": @"creator",
        @"open_issues": @"openIssues",
        @"closed_issues": @"closedIssues",
        @"state": @"state",
        @"created_at": @"createdAt",
        @"updated_at": @"updatedAt",
        @"due_on": @"dueOn",
        @"closed_at": @"closedAt",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[APIMilestone alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _creator = [APIUser fromJSONDictionary:(id)_creator];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:APIMilestone.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:APIMilestone.properties.allValues] mutableCopy];

    for (id jsonName in APIMilestone.properties) {
        id propertyName = APIMilestone.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"creator": [_creator JSONDictionary],
    }];

    return dict;
}
@end

@implementation APIIssuePullRequest
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"url": @"url",
        @"html_url": @"htmlURL",
        @"diff_url": @"diffURL",
        @"patch_url": @"patchURL",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[APIIssuePullRequest alloc] initWithJSONDictionary:dict] : nil;
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
    [super setValue:value forKey:APIIssuePullRequest.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:APIIssuePullRequest.properties.allValues] mutableCopy];

    for (id jsonName in APIIssuePullRequest.properties) {
        id propertyName = APIIssuePullRequest.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    return dict;
}
@end

@implementation APIPayloadPullRequest
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
        @"merged": @"merged",
        @"mergeable": @"mergeable",
        @"rebaseable": @"rebaseable",
        @"mergeable_state": @"mergeableState",
        @"merged_by": @"mergedBy",
        @"comments": @"comments",
        @"review_comments": @"reviewComments",
        @"maintainer_can_modify": @"maintainerCanModify",
        @"commits": @"commits",
        @"additions": @"additions",
        @"deletions": @"deletions",
        @"changed_files": @"changedFiles",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[APIPayloadPullRequest alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _user = [APIUser fromJSONDictionary:(id)_user];
        _head = [APIBase fromJSONDictionary:(id)_head];
        _base = [APIBase fromJSONDictionary:(id)_base];
        _links = [APIPullRequestLinks fromJSONDictionary:(id)_links];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:APIPayloadPullRequest.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:APIPayloadPullRequest.properties.allValues] mutableCopy];

    for (id jsonName in APIPayloadPullRequest.properties) {
        id propertyName = APIPayloadPullRequest.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"locked": _isLocked ? @YES : @NO,
        @"user": [_user JSONDictionary],
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
        _repo = [APIForkee fromJSONDictionary:(id)_repo];
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

@implementation APIRepo
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
    return dict ? [[APIRepo alloc] initWithJSONDictionary:dict] : nil;
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
    [super setValue:value forKey:APIRepo.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:APIRepo.properties.allValues] mutableCopy];

    for (id jsonName in APIRepo.properties) {
        id propertyName = APIRepo.properties[jsonName];
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
        _files = map(_files, λ(id x, [APIFile fromJSONDictionary:x]));
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
        @"files": map(_files, λ(id x, [x JSONDictionary])),
        @"public": _isPublic ? @YES : @NO,
        @"truncated": _isTruncated ? @YES : @NO,
        @"owner": NSNullify([_owner JSONDictionary]),
    }];

    return dict;
}
@end

@implementation APIFile
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
    return dict ? [[APIFile alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _type = [APIFileType withValue:(id)_type];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:APIFile.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:APIFile.properties.allValues] mutableCopy];

    for (id jsonName in APIFile.properties) {
        id propertyName = APIFile.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"type": [_type value],
    }];

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
        _type = [APIUserType withValue:(id)_type];
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
