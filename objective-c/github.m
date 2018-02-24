#import "github.h"

#define λ(decl, expr) (^(decl) { return (expr); })

static id NSNullify(id _Nullable x) {
    return (x == nil || x == NSNull.null) ? NSNull.null : x;
}

NS_ASSUME_NONNULL_BEGIN

@interface APIData (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface APIEmojis (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

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

@interface APIIssue (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface APILabel (JSONConversion)
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

@interface APILinks (JSONConversion)
+ (instancetype)fromJSONDictionary:(NSDictionary *)dict;
- (NSDictionary *)JSONDictionary;
@end

@interface APIComments (JSONConversion)
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

@implementation APIFileType
+ (NSDictionary<NSString *, APIFileType *> *)values
{
    static NSDictionary<NSString *, APIFileType *> *values;
    return values = values ? values : @{
        @"application/javascript": [[APIFileType alloc] initWithValue:@"application/javascript"],
        @"application/x-python": [[APIFileType alloc] initWithValue:@"application/x-python"],
        @"text/css": [[APIFileType alloc] initWithValue:@"text/css"],
        @"text/html": [[APIFileType alloc] initWithValue:@"text/html"],
        @"text/plain": [[APIFileType alloc] initWithValue:@"text/plain"],
    };
}

+ (APIFileType *)applicationJavascript { return APIFileType.values[@"application/javascript"]; }
+ (APIFileType *)applicationXPython { return APIFileType.values[@"application/x-python"]; }
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
        return *error ? nil : [APIData fromJSONDictionary:json];
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
        id json = [data JSONDictionary];
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
        return *error ? nil : [APIEmojis fromJSONDictionary:json];
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
        id json = [emojis JSONDictionary];
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

@implementation APIData
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"current_user_url": @"currentUserURL",
        @"current_user_authorizations_html_url": @"currentUserAuthorizationsHTMLURL",
        @"authorizations_url": @"authorizationsURL",
        @"code_search_url": @"codeSearchURL",
        @"commit_search_url": @"commitSearchURL",
        @"emails_url": @"emailsURL",
        @"emojis_url": @"emojisURL",
        @"events_url": @"eventsURL",
        @"feeds_url": @"feedsURL",
        @"followers_url": @"followersURL",
        @"following_url": @"followingURL",
        @"gists_url": @"gistsURL",
        @"hub_url": @"hubURL",
        @"issue_search_url": @"issueSearchURL",
        @"issues_url": @"issuesURL",
        @"keys_url": @"keysURL",
        @"notifications_url": @"notificationsURL",
        @"organization_repositories_url": @"organizationRepositoriesURL",
        @"organization_url": @"organizationURL",
        @"public_gists_url": @"publicGistsURL",
        @"rate_limit_url": @"rateLimitURL",
        @"repository_url": @"repositoryURL",
        @"repository_search_url": @"repositorySearchURL",
        @"current_user_repositories_url": @"currentUserRepositoriesURL",
        @"starred_url": @"starredURL",
        @"starred_gists_url": @"starredGistsURL",
        @"team_url": @"teamURL",
        @"user_url": @"userURL",
        @"user_organizations_url": @"userOrganizationsURL",
        @"user_repositories_url": @"userRepositoriesURL",
        @"user_search_url": @"userSearchURL",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return APIDataFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return APIDataFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[APIData alloc] initWithJSONDictionary:dict] : nil;
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
    [super setValue:value forKey:APIData.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:APIData.properties.allValues] mutableCopy];

    for (id jsonName in APIData.properties) {
        id propertyName = APIData.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return APIDataToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return APIDataToJSON(self, encoding, error);
}
@end

@implementation APIEmojis
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"+1": @"the1",
        @"-1": @"emojis1",
        @"100": @"the100",
        @"1234": @"the1234",
        @"1st_place_medal": @"the1StPlaceMedal",
        @"2nd_place_medal": @"the2NdPlaceMedal",
        @"3rd_place_medal": @"the3RDPlaceMedal",
        @"8ball": @"the8Ball",
        @"a": @"a",
        @"ab": @"ab",
        @"abc": @"abc",
        @"abcd": @"abcd",
        @"accept": @"accept",
        @"aerial_tramway": @"aerialTramway",
        @"afghanistan": @"afghanistan",
        @"airplane": @"airplane",
        @"aland_islands": @"alandIslands",
        @"alarm_clock": @"alarmClock",
        @"albania": @"albania",
        @"alembic": @"alembic",
        @"algeria": @"algeria",
        @"alien": @"alien",
        @"ambulance": @"ambulance",
        @"american_samoa": @"americanSamoa",
        @"amphora": @"amphora",
        @"anchor": @"anchor",
        @"andorra": @"andorra",
        @"angel": @"angel",
        @"anger": @"anger",
        @"angola": @"angola",
        @"angry": @"angry",
        @"anguilla": @"anguilla",
        @"anguished": @"anguished",
        @"ant": @"ant",
        @"antarctica": @"antarctica",
        @"antigua_barbuda": @"antiguaBarbuda",
        @"apple": @"apple",
        @"aquarius": @"aquarius",
        @"argentina": @"argentina",
        @"aries": @"aries",
        @"armenia": @"armenia",
        @"arrow_backward": @"arrowBackward",
        @"arrow_double_down": @"arrowDoubleDown",
        @"arrow_double_up": @"arrowDoubleUp",
        @"arrow_down": @"arrowDown",
        @"arrow_down_small": @"arrowDownSmall",
        @"arrow_forward": @"arrowForward",
        @"arrow_heading_down": @"arrowHeadingDown",
        @"arrow_heading_up": @"arrowHeadingUp",
        @"arrow_left": @"arrowLeft",
        @"arrow_lower_left": @"arrowLowerLeft",
        @"arrow_lower_right": @"arrowLowerRight",
        @"arrow_right": @"arrowRight",
        @"arrow_right_hook": @"arrowRightHook",
        @"arrow_up": @"arrowUp",
        @"arrow_up_down": @"arrowUpDown",
        @"arrow_up_small": @"arrowUpSmall",
        @"arrow_upper_left": @"arrowUpperLeft",
        @"arrow_upper_right": @"arrowUpperRight",
        @"arrows_clockwise": @"arrowsClockwise",
        @"arrows_counterclockwise": @"arrowsCounterclockwise",
        @"art": @"art",
        @"articulated_lorry": @"articulatedLorry",
        @"artificial_satellite": @"artificialSatellite",
        @"aruba": @"aruba",
        @"asterisk": @"asterisk",
        @"astonished": @"astonished",
        @"athletic_shoe": @"athleticShoe",
        @"atm": @"atm",
        @"atom": @"atom",
        @"atom_symbol": @"atomSymbol",
        @"australia": @"australia",
        @"austria": @"austria",
        @"avocado": @"avocado",
        @"azerbaijan": @"azerbaijan",
        @"b": @"b",
        @"baby": @"baby",
        @"baby_bottle": @"babyBottle",
        @"baby_chick": @"babyChick",
        @"baby_symbol": @"babySymbol",
        @"back": @"back",
        @"bacon": @"bacon",
        @"badminton": @"badminton",
        @"baggage_claim": @"baggageClaim",
        @"baguette_bread": @"baguetteBread",
        @"bahamas": @"bahamas",
        @"bahrain": @"bahrain",
        @"balance_scale": @"balanceScale",
        @"balloon": @"balloon",
        @"ballot_box": @"ballotBox",
        @"ballot_box_with_check": @"ballotBoxWithCheck",
        @"bamboo": @"bamboo",
        @"banana": @"banana",
        @"bangbang": @"bangbang",
        @"bangladesh": @"bangladesh",
        @"bank": @"bank",
        @"bar_chart": @"barChart",
        @"barbados": @"barbados",
        @"barber": @"barber",
        @"baseball": @"baseball",
        @"basecamp": @"basecamp",
        @"basecampy": @"basecampy",
        @"basketball": @"basketball",
        @"basketball_man": @"basketballMan",
        @"basketball_woman": @"basketballWoman",
        @"bat": @"bat",
        @"bath": @"bath",
        @"bathtub": @"bathtub",
        @"battery": @"battery",
        @"beach_umbrella": @"beachUmbrella",
        @"bear": @"bear",
        @"bed": @"bed",
        @"bee": @"bee",
        @"beer": @"beer",
        @"beers": @"beers",
        @"beetle": @"beetle",
        @"beginner": @"beginner",
        @"belarus": @"belarus",
        @"belgium": @"belgium",
        @"belize": @"belize",
        @"bell": @"bell",
        @"bellhop_bell": @"bellhopBell",
        @"benin": @"benin",
        @"bento": @"bento",
        @"bermuda": @"bermuda",
        @"bhutan": @"bhutan",
        @"bicyclist": @"bicyclist",
        @"bike": @"bike",
        @"biking_man": @"bikingMan",
        @"biking_woman": @"bikingWoman",
        @"bikini": @"bikini",
        @"biohazard": @"biohazard",
        @"bird": @"bird",
        @"birthday": @"birthday",
        @"black_circle": @"blackCircle",
        @"black_flag": @"blackFlag",
        @"black_heart": @"blackHeart",
        @"black_joker": @"blackJoker",
        @"black_large_square": @"blackLargeSquare",
        @"black_medium_small_square": @"blackMediumSmallSquare",
        @"black_medium_square": @"blackMediumSquare",
        @"black_nib": @"blackNib",
        @"black_small_square": @"blackSmallSquare",
        @"black_square_button": @"blackSquareButton",
        @"blonde_man": @"blondeMan",
        @"blonde_woman": @"blondeWoman",
        @"blossom": @"blossom",
        @"blowfish": @"blowfish",
        @"blue_book": @"blueBook",
        @"blue_car": @"blueCar",
        @"blue_heart": @"blueHeart",
        @"blush": @"blush",
        @"boar": @"boar",
        @"boat": @"boat",
        @"bolivia": @"bolivia",
        @"bomb": @"bomb",
        @"book": @"book",
        @"bookmark": @"bookmark",
        @"bookmark_tabs": @"bookmarkTabs",
        @"books": @"books",
        @"boom": @"boom",
        @"boot": @"boot",
        @"bosnia_herzegovina": @"bosniaHerzegovina",
        @"botswana": @"botswana",
        @"bouquet": @"bouquet",
        @"bow": @"bow",
        @"bow_and_arrow": @"bowAndArrow",
        @"bowing_man": @"bowingMan",
        @"bowing_woman": @"bowingWoman",
        @"bowling": @"bowling",
        @"bowtie": @"bowtie",
        @"boxing_glove": @"boxingGlove",
        @"boy": @"boy",
        @"brazil": @"brazil",
        @"bread": @"bread",
        @"bride_with_veil": @"brideWithVeil",
        @"bridge_at_night": @"bridgeAtNight",
        @"briefcase": @"briefcase",
        @"british_indian_ocean_territory": @"britishIndianOceanTerritory",
        @"british_virgin_islands": @"britishVirginIslands",
        @"broken_heart": @"brokenHeart",
        @"brunei": @"brunei",
        @"bug": @"bug",
        @"building_construction": @"buildingConstruction",
        @"bulb": @"bulb",
        @"bulgaria": @"bulgaria",
        @"bullettrain_front": @"bullettrainFront",
        @"bullettrain_side": @"bullettrainSide",
        @"burkina_faso": @"burkinaFaso",
        @"burrito": @"burrito",
        @"burundi": @"burundi",
        @"bus": @"bus",
        @"business_suit_levitating": @"businessSuitLevitating",
        @"busstop": @"busstop",
        @"bust_in_silhouette": @"bustInSilhouette",
        @"busts_in_silhouette": @"bustsInSilhouette",
        @"butterfly": @"butterfly",
        @"cactus": @"cactus",
        @"cake": @"cake",
        @"calendar": @"calendar",
        @"call_me_hand": @"callMeHand",
        @"calling": @"calling",
        @"cambodia": @"cambodia",
        @"camel": @"camel",
        @"camera": @"camera",
        @"camera_flash": @"cameraFlash",
        @"cameroon": @"cameroon",
        @"camping": @"camping",
        @"canada": @"canada",
        @"canary_islands": @"canaryIslands",
        @"cancer": @"cancer",
        @"candle": @"candle",
        @"candy": @"candy",
        @"canoe": @"canoe",
        @"cape_verde": @"capeVerde",
        @"capital_abcd": @"capitalAbcd",
        @"capricorn": @"capricorn",
        @"car": @"car",
        @"card_file_box": @"cardFileBox",
        @"card_index": @"cardIndex",
        @"card_index_dividers": @"cardIndexDividers",
        @"caribbean_netherlands": @"caribbeanNetherlands",
        @"carousel_horse": @"carouselHorse",
        @"carrot": @"carrot",
        @"cat": @"cat",
        @"cat2": @"cat2",
        @"cayman_islands": @"caymanIslands",
        @"cd": @"cd",
        @"central_african_republic": @"centralAfricanRepublic",
        @"chad": @"chad",
        @"chains": @"chains",
        @"champagne": @"champagne",
        @"chart": @"chart",
        @"chart_with_downwards_trend": @"chartWithDownwardsTrend",
        @"chart_with_upwards_trend": @"chartWithUpwardsTrend",
        @"checkered_flag": @"checkeredFlag",
        @"cheese": @"cheese",
        @"cherries": @"cherries",
        @"cherry_blossom": @"cherryBlossom",
        @"chestnut": @"chestnut",
        @"chicken": @"chicken",
        @"children_crossing": @"childrenCrossing",
        @"chile": @"chile",
        @"chipmunk": @"chipmunk",
        @"chocolate_bar": @"chocolateBar",
        @"christmas_island": @"christmasIsland",
        @"christmas_tree": @"christmasTree",
        @"church": @"church",
        @"cinema": @"cinema",
        @"circus_tent": @"circusTent",
        @"city_sunrise": @"citySunrise",
        @"city_sunset": @"citySunset",
        @"cityscape": @"cityscape",
        @"cl": @"cl",
        @"clamp": @"clamp",
        @"clap": @"clap",
        @"clapper": @"clapper",
        @"classical_building": @"classicalBuilding",
        @"clinking_glasses": @"clinkingGlasses",
        @"clipboard": @"clipboard",
        @"clock1": @"clock1",
        @"clock10": @"clock10",
        @"clock1030": @"clock1030",
        @"clock11": @"clock11",
        @"clock1130": @"clock1130",
        @"clock12": @"clock12",
        @"clock1230": @"clock1230",
        @"clock130": @"clock130",
        @"clock2": @"clock2",
        @"clock230": @"clock230",
        @"clock3": @"clock3",
        @"clock330": @"clock330",
        @"clock4": @"clock4",
        @"clock430": @"clock430",
        @"clock5": @"clock5",
        @"clock530": @"clock530",
        @"clock6": @"clock6",
        @"clock630": @"clock630",
        @"clock7": @"clock7",
        @"clock730": @"clock730",
        @"clock8": @"clock8",
        @"clock830": @"clock830",
        @"clock9": @"clock9",
        @"clock930": @"clock930",
        @"closed_book": @"closedBook",
        @"closed_lock_with_key": @"closedLockWithKey",
        @"closed_umbrella": @"closedUmbrella",
        @"cloud": @"cloud",
        @"cloud_with_lightning": @"cloudWithLightning",
        @"cloud_with_lightning_and_rain": @"cloudWithLightningAndRain",
        @"cloud_with_rain": @"cloudWithRain",
        @"cloud_with_snow": @"cloudWithSnow",
        @"clown_face": @"clownFace",
        @"clubs": @"clubs",
        @"cn": @"cn",
        @"cocktail": @"cocktail",
        @"cocos_islands": @"cocosIslands",
        @"coffee": @"coffee",
        @"coffin": @"coffin",
        @"cold_sweat": @"coldSweat",
        @"collision": @"collision",
        @"colombia": @"colombia",
        @"comet": @"comet",
        @"comoros": @"comoros",
        @"computer": @"computer",
        @"computer_mouse": @"computerMouse",
        @"confetti_ball": @"confettiBall",
        @"confounded": @"confounded",
        @"confused": @"confused",
        @"congo_brazzaville": @"congoBrazzaville",
        @"congo_kinshasa": @"congoKinshasa",
        @"congratulations": @"congratulations",
        @"construction": @"construction",
        @"construction_worker": @"constructionWorker",
        @"construction_worker_man": @"constructionWorkerMan",
        @"construction_worker_woman": @"constructionWorkerWoman",
        @"control_knobs": @"controlKnobs",
        @"convenience_store": @"convenienceStore",
        @"cook_islands": @"cookIslands",
        @"cookie": @"cookie",
        @"cool": @"cool",
        @"cop": @"cop",
        @"copyright": @"copyright",
        @"corn": @"corn",
        @"costa_rica": @"costaRica",
        @"cote_divoire": @"coteDivoire",
        @"couch_and_lamp": @"couchAndLamp",
        @"couple": @"couple",
        @"couple_with_heart": @"coupleWithHeart",
        @"couple_with_heart_man_man": @"coupleWithHeartManMan",
        @"couple_with_heart_woman_man": @"coupleWithHeartWomanMan",
        @"couple_with_heart_woman_woman": @"coupleWithHeartWomanWoman",
        @"couplekiss_man_man": @"couplekissManMan",
        @"couplekiss_man_woman": @"couplekissManWoman",
        @"couplekiss_woman_woman": @"couplekissWomanWoman",
        @"cow": @"cow",
        @"cow2": @"cow2",
        @"cowboy_hat_face": @"cowboyHatFace",
        @"crab": @"crab",
        @"crayon": @"crayon",
        @"credit_card": @"creditCard",
        @"crescent_moon": @"crescentMoon",
        @"cricket": @"cricket",
        @"croatia": @"croatia",
        @"crocodile": @"crocodile",
        @"croissant": @"croissant",
        @"crossed_fingers": @"crossedFingers",
        @"crossed_flags": @"crossedFlags",
        @"crossed_swords": @"crossedSwords",
        @"crown": @"crown",
        @"cry": @"cry",
        @"crying_cat_face": @"cryingCatFace",
        @"crystal_ball": @"crystalBall",
        @"cuba": @"cuba",
        @"cucumber": @"cucumber",
        @"cupid": @"cupid",
        @"curacao": @"curacao",
        @"curly_loop": @"curlyLoop",
        @"currency_exchange": @"currencyExchange",
        @"curry": @"curry",
        @"custard": @"custard",
        @"customs": @"customs",
        @"cyclone": @"cyclone",
        @"cyprus": @"cyprus",
        @"czech_republic": @"czechRepublic",
        @"dagger": @"dagger",
        @"dancer": @"dancer",
        @"dancers": @"dancers",
        @"dancing_men": @"dancingMen",
        @"dancing_women": @"dancingWomen",
        @"dango": @"dango",
        @"dark_sunglasses": @"darkSunglasses",
        @"dart": @"dart",
        @"dash": @"dash",
        @"date": @"date",
        @"de": @"de",
        @"deciduous_tree": @"deciduousTree",
        @"deer": @"deer",
        @"denmark": @"denmark",
        @"department_store": @"departmentStore",
        @"derelict_house": @"derelictHouse",
        @"desert": @"desert",
        @"desert_island": @"desertIsland",
        @"desktop_computer": @"desktopComputer",
        @"detective": @"detective",
        @"diamond_shape_with_a_dot_inside": @"diamondShapeWithADotInside",
        @"diamonds": @"diamonds",
        @"disappointed": @"disappointed",
        @"disappointed_relieved": @"disappointedRelieved",
        @"dizzy": @"dizzy",
        @"dizzy_face": @"dizzyFace",
        @"djibouti": @"djibouti",
        @"do_not_litter": @"doNotLitter",
        @"dog": @"dog",
        @"dog2": @"dog2",
        @"dollar": @"dollar",
        @"dolls": @"dolls",
        @"dolphin": @"dolphin",
        @"dominica": @"dominica",
        @"dominican_republic": @"dominicanRepublic",
        @"door": @"door",
        @"doughnut": @"doughnut",
        @"dove": @"dove",
        @"dragon": @"dragon",
        @"dragon_face": @"dragonFace",
        @"dress": @"dress",
        @"dromedary_camel": @"dromedaryCamel",
        @"drooling_face": @"droolingFace",
        @"droplet": @"droplet",
        @"drum": @"drum",
        @"duck": @"duck",
        @"dvd": @"dvd",
        @"e-mail": @"eMail",
        @"eagle": @"eagle",
        @"ear": @"ear",
        @"ear_of_rice": @"earOfRice",
        @"earth_africa": @"earthAfrica",
        @"earth_americas": @"earthAmericas",
        @"earth_asia": @"earthAsia",
        @"ecuador": @"ecuador",
        @"egg": @"egg",
        @"eggplant": @"eggplant",
        @"egypt": @"egypt",
        @"eight": @"eight",
        @"eight_pointed_black_star": @"eightPointedBlackStar",
        @"eight_spoked_asterisk": @"eightSpokedAsterisk",
        @"el_salvador": @"elSalvador",
        @"electric_plug": @"electricPlug",
        @"electron": @"electron",
        @"elephant": @"elephant",
        @"email": @"email",
        @"end": @"end",
        @"envelope": @"envelope",
        @"envelope_with_arrow": @"envelopeWithArrow",
        @"equatorial_guinea": @"equatorialGuinea",
        @"eritrea": @"eritrea",
        @"es": @"es",
        @"estonia": @"estonia",
        @"ethiopia": @"ethiopia",
        @"eu": @"eu",
        @"euro": @"euro",
        @"european_castle": @"europeanCastle",
        @"european_post_office": @"europeanPostOffice",
        @"european_union": @"europeanUnion",
        @"evergreen_tree": @"evergreenTree",
        @"exclamation": @"exclamation",
        @"expressionless": @"expressionless",
        @"eye": @"eye",
        @"eye_speech_bubble": @"eyeSpeechBubble",
        @"eyeglasses": @"eyeglasses",
        @"eyes": @"eyes",
        @"face_with_head_bandage": @"faceWithHeadBandage",
        @"face_with_thermometer": @"faceWithThermometer",
        @"facepunch": @"facepunch",
        @"factory": @"factory",
        @"falkland_islands": @"falklandIslands",
        @"fallen_leaf": @"fallenLeaf",
        @"family": @"family",
        @"family_man_boy": @"familyManBoy",
        @"family_man_boy_boy": @"familyManBoyBoy",
        @"family_man_girl": @"familyManGirl",
        @"family_man_girl_boy": @"familyManGirlBoy",
        @"family_man_girl_girl": @"familyManGirlGirl",
        @"family_man_man_boy": @"familyManManBoy",
        @"family_man_man_boy_boy": @"familyManManBoyBoy",
        @"family_man_man_girl": @"familyManManGirl",
        @"family_man_man_girl_boy": @"familyManManGirlBoy",
        @"family_man_man_girl_girl": @"familyManManGirlGirl",
        @"family_man_woman_boy": @"familyManWomanBoy",
        @"family_man_woman_boy_boy": @"familyManWomanBoyBoy",
        @"family_man_woman_girl": @"familyManWomanGirl",
        @"family_man_woman_girl_boy": @"familyManWomanGirlBoy",
        @"family_man_woman_girl_girl": @"familyManWomanGirlGirl",
        @"family_woman_boy": @"familyWomanBoy",
        @"family_woman_boy_boy": @"familyWomanBoyBoy",
        @"family_woman_girl": @"familyWomanGirl",
        @"family_woman_girl_boy": @"familyWomanGirlBoy",
        @"family_woman_girl_girl": @"familyWomanGirlGirl",
        @"family_woman_woman_boy": @"familyWomanWomanBoy",
        @"family_woman_woman_boy_boy": @"familyWomanWomanBoyBoy",
        @"family_woman_woman_girl": @"familyWomanWomanGirl",
        @"family_woman_woman_girl_boy": @"familyWomanWomanGirlBoy",
        @"family_woman_woman_girl_girl": @"familyWomanWomanGirlGirl",
        @"faroe_islands": @"faroeIslands",
        @"fast_forward": @"fastForward",
        @"fax": @"fax",
        @"fearful": @"fearful",
        @"feelsgood": @"feelsgood",
        @"feet": @"feet",
        @"female_detective": @"femaleDetective",
        @"ferris_wheel": @"ferrisWheel",
        @"ferry": @"ferry",
        @"field_hockey": @"fieldHockey",
        @"fiji": @"fiji",
        @"file_cabinet": @"fileCabinet",
        @"file_folder": @"fileFolder",
        @"film_projector": @"filmProjector",
        @"film_strip": @"filmStrip",
        @"finland": @"finland",
        @"finnadie": @"finnadie",
        @"fire": @"fire",
        @"fire_engine": @"fireEngine",
        @"fireworks": @"fireworks",
        @"first_quarter_moon": @"firstQuarterMoon",
        @"first_quarter_moon_with_face": @"firstQuarterMoonWithFace",
        @"fish": @"fish",
        @"fish_cake": @"fishCake",
        @"fishing_pole_and_fish": @"fishingPoleAndFish",
        @"fist": @"fist",
        @"fist_left": @"fistLeft",
        @"fist_oncoming": @"fistOncoming",
        @"fist_raised": @"fistRaised",
        @"fist_right": @"fistRight",
        @"five": @"five",
        @"flags": @"flags",
        @"flashlight": @"flashlight",
        @"fleur_de_lis": @"fleurDeLis",
        @"flight_arrival": @"flightArrival",
        @"flight_departure": @"flightDeparture",
        @"flipper": @"flipper",
        @"floppy_disk": @"floppyDisk",
        @"flower_playing_cards": @"flowerPlayingCards",
        @"flushed": @"flushed",
        @"fog": @"fog",
        @"foggy": @"foggy",
        @"football": @"football",
        @"footprints": @"footprints",
        @"fork_and_knife": @"forkAndKnife",
        @"fountain": @"fountain",
        @"fountain_pen": @"fountainPen",
        @"four": @"four",
        @"four_leaf_clover": @"fourLeafClover",
        @"fox_face": @"foxFace",
        @"fr": @"fr",
        @"framed_picture": @"framedPicture",
        @"free": @"free",
        @"french_guiana": @"frenchGuiana",
        @"french_polynesia": @"frenchPolynesia",
        @"french_southern_territories": @"frenchSouthernTerritories",
        @"fried_egg": @"friedEgg",
        @"fried_shrimp": @"friedShrimp",
        @"fries": @"fries",
        @"frog": @"frog",
        @"frowning": @"frowning",
        @"frowning_face": @"frowningFace",
        @"frowning_man": @"frowningMan",
        @"frowning_woman": @"frowningWoman",
        @"fu": @"fu",
        @"fuelpump": @"fuelpump",
        @"full_moon": @"fullMoon",
        @"full_moon_with_face": @"fullMoonWithFace",
        @"funeral_urn": @"funeralUrn",
        @"gabon": @"gabon",
        @"gambia": @"gambia",
        @"game_die": @"gameDie",
        @"gb": @"gb",
        @"gear": @"gear",
        @"gem": @"gem",
        @"gemini": @"gemini",
        @"georgia": @"georgia",
        @"ghana": @"ghana",
        @"ghost": @"ghost",
        @"gibraltar": @"gibraltar",
        @"gift": @"gift",
        @"gift_heart": @"giftHeart",
        @"girl": @"girl",
        @"globe_with_meridians": @"globeWithMeridians",
        @"goal_net": @"goalNet",
        @"goat": @"goat",
        @"goberserk": @"goberserk",
        @"godmode": @"godmode",
        @"golf": @"golf",
        @"golfing_man": @"golfingMan",
        @"golfing_woman": @"golfingWoman",
        @"gorilla": @"gorilla",
        @"grapes": @"grapes",
        @"greece": @"greece",
        @"green_apple": @"greenApple",
        @"green_book": @"greenBook",
        @"green_heart": @"greenHeart",
        @"green_salad": @"greenSalad",
        @"greenland": @"greenland",
        @"grenada": @"grenada",
        @"grey_exclamation": @"greyExclamation",
        @"grey_question": @"greyQuestion",
        @"grimacing": @"grimacing",
        @"grin": @"grin",
        @"grinning": @"grinning",
        @"guadeloupe": @"guadeloupe",
        @"guam": @"guam",
        @"guardsman": @"guardsman",
        @"guardswoman": @"guardswoman",
        @"guatemala": @"guatemala",
        @"guernsey": @"guernsey",
        @"guinea": @"guinea",
        @"guinea_bissau": @"guineaBissau",
        @"guitar": @"guitar",
        @"gun": @"gun",
        @"guyana": @"guyana",
        @"haircut": @"haircut",
        @"haircut_man": @"haircutMan",
        @"haircut_woman": @"haircutWoman",
        @"haiti": @"haiti",
        @"hamburger": @"hamburger",
        @"hammer": @"hammer",
        @"hammer_and_pick": @"hammerAndPick",
        @"hammer_and_wrench": @"hammerAndWrench",
        @"hamster": @"hamster",
        @"hand": @"hand",
        @"handbag": @"handbag",
        @"handshake": @"handshake",
        @"hankey": @"hankey",
        @"hash": @"theHash",
        @"hatched_chick": @"hatchedChick",
        @"hatching_chick": @"hatchingChick",
        @"headphones": @"headphones",
        @"hear_no_evil": @"hearNoEvil",
        @"heart": @"heart",
        @"heart_decoration": @"heartDecoration",
        @"heart_eyes": @"heartEyes",
        @"heart_eyes_cat": @"heartEyesCat",
        @"heartbeat": @"heartbeat",
        @"heartpulse": @"heartpulse",
        @"hearts": @"hearts",
        @"heavy_check_mark": @"heavyCheckMark",
        @"heavy_division_sign": @"heavyDivisionSign",
        @"heavy_dollar_sign": @"heavyDollarSign",
        @"heavy_exclamation_mark": @"heavyExclamationMark",
        @"heavy_heart_exclamation": @"heavyHeartExclamation",
        @"heavy_minus_sign": @"heavyMinusSign",
        @"heavy_multiplication_x": @"heavyMultiplicationX",
        @"heavy_plus_sign": @"heavyPlusSign",
        @"helicopter": @"helicopter",
        @"herb": @"herb",
        @"hibiscus": @"hibiscus",
        @"high_brightness": @"highBrightness",
        @"high_heel": @"highHeel",
        @"hocho": @"hocho",
        @"hole": @"hole",
        @"honduras": @"honduras",
        @"honey_pot": @"honeyPot",
        @"honeybee": @"honeybee",
        @"hong_kong": @"hongKong",
        @"horse": @"horse",
        @"horse_racing": @"horseRacing",
        @"hospital": @"hospital",
        @"hot_pepper": @"hotPepper",
        @"hotdog": @"hotdog",
        @"hotel": @"hotel",
        @"hotsprings": @"hotsprings",
        @"hourglass": @"hourglass",
        @"hourglass_flowing_sand": @"hourglassFlowingSand",
        @"house": @"house",
        @"house_with_garden": @"houseWithGarden",
        @"houses": @"houses",
        @"hugs": @"hugs",
        @"hungary": @"hungary",
        @"hurtrealbad": @"hurtrealbad",
        @"hushed": @"hushed",
        @"ice_cream": @"iceCream",
        @"ice_hockey": @"iceHockey",
        @"ice_skate": @"iceSkate",
        @"icecream": @"icecream",
        @"iceland": @"iceland",
        @"id": @"identifier",
        @"ideograph_advantage": @"ideographAdvantage",
        @"imp": @"imp",
        @"inbox_tray": @"inboxTray",
        @"incoming_envelope": @"incomingEnvelope",
        @"india": @"india",
        @"indonesia": @"indonesia",
        @"information_desk_person": @"informationDeskPerson",
        @"information_source": @"informationSource",
        @"innocent": @"innocent",
        @"interrobang": @"interrobang",
        @"iphone": @"iphone",
        @"iran": @"iran",
        @"iraq": @"iraq",
        @"ireland": @"ireland",
        @"isle_of_man": @"isleOfMan",
        @"israel": @"israel",
        @"it": @"it",
        @"izakaya_lantern": @"izakayaLantern",
        @"jack_o_lantern": @"jackOLantern",
        @"jamaica": @"jamaica",
        @"japan": @"japan",
        @"japanese_castle": @"japaneseCastle",
        @"japanese_goblin": @"japaneseGoblin",
        @"japanese_ogre": @"japaneseOgre",
        @"jeans": @"jeans",
        @"jersey": @"jersey",
        @"jordan": @"jordan",
        @"joy": @"joy",
        @"joy_cat": @"joyCat",
        @"joystick": @"joystick",
        @"jp": @"jp",
        @"kaaba": @"kaaba",
        @"kazakhstan": @"kazakhstan",
        @"kenya": @"kenya",
        @"key": @"key",
        @"keyboard": @"keyboard",
        @"keycap_ten": @"keycapTen",
        @"kick_scooter": @"kickScooter",
        @"kimono": @"kimono",
        @"kiribati": @"kiribati",
        @"kiss": @"kiss",
        @"kissing": @"kissing",
        @"kissing_cat": @"kissingCat",
        @"kissing_closed_eyes": @"kissingClosedEyes",
        @"kissing_heart": @"kissingHeart",
        @"kissing_smiling_eyes": @"kissingSmilingEyes",
        @"kiwi_fruit": @"kiwiFruit",
        @"knife": @"knife",
        @"koala": @"koala",
        @"koko": @"koko",
        @"kosovo": @"kosovo",
        @"kr": @"kr",
        @"kuwait": @"kuwait",
        @"kyrgyzstan": @"kyrgyzstan",
        @"label": @"label",
        @"lantern": @"lantern",
        @"laos": @"laos",
        @"large_blue_circle": @"largeBlueCircle",
        @"large_blue_diamond": @"largeBlueDiamond",
        @"large_orange_diamond": @"largeOrangeDiamond",
        @"last_quarter_moon": @"lastQuarterMoon",
        @"last_quarter_moon_with_face": @"lastQuarterMoonWithFace",
        @"latin_cross": @"latinCross",
        @"latvia": @"latvia",
        @"laughing": @"laughing",
        @"leaves": @"leaves",
        @"lebanon": @"lebanon",
        @"ledger": @"ledger",
        @"left_luggage": @"leftLuggage",
        @"left_right_arrow": @"leftRightArrow",
        @"leftwards_arrow_with_hook": @"leftwardsArrowWithHook",
        @"lemon": @"lemon",
        @"leo": @"leo",
        @"leopard": @"leopard",
        @"lesotho": @"lesotho",
        @"level_slider": @"levelSlider",
        @"liberia": @"liberia",
        @"libra": @"libra",
        @"libya": @"libya",
        @"liechtenstein": @"liechtenstein",
        @"light_rail": @"lightRail",
        @"link": @"link",
        @"lion": @"lion",
        @"lips": @"lips",
        @"lipstick": @"lipstick",
        @"lithuania": @"lithuania",
        @"lizard": @"lizard",
        @"lock": @"lock",
        @"lock_with_ink_pen": @"lockWithInkPen",
        @"lollipop": @"lollipop",
        @"loop": @"loop",
        @"loud_sound": @"loudSound",
        @"loudspeaker": @"loudspeaker",
        @"love_hotel": @"loveHotel",
        @"love_letter": @"loveLetter",
        @"low_brightness": @"lowBrightness",
        @"luxembourg": @"luxembourg",
        @"lying_face": @"lyingFace",
        @"m": @"m",
        @"macau": @"macau",
        @"macedonia": @"macedonia",
        @"madagascar": @"madagascar",
        @"mag": @"mag",
        @"mag_right": @"magRight",
        @"mahjong": @"mahjong",
        @"mailbox": @"mailbox",
        @"mailbox_closed": @"mailboxClosed",
        @"mailbox_with_mail": @"mailboxWithMail",
        @"mailbox_with_no_mail": @"mailboxWithNoMail",
        @"malawi": @"malawi",
        @"malaysia": @"malaysia",
        @"maldives": @"maldives",
        @"male_detective": @"maleDetective",
        @"mali": @"mali",
        @"malta": @"malta",
        @"man": @"man",
        @"man_artist": @"manArtist",
        @"man_astronaut": @"manAstronaut",
        @"man_cartwheeling": @"manCartwheeling",
        @"man_cook": @"manCook",
        @"man_dancing": @"manDancing",
        @"man_facepalming": @"manFacepalming",
        @"man_factory_worker": @"manFactoryWorker",
        @"man_farmer": @"manFarmer",
        @"man_firefighter": @"manFirefighter",
        @"man_health_worker": @"manHealthWorker",
        @"man_in_tuxedo": @"manInTuxedo",
        @"man_judge": @"manJudge",
        @"man_juggling": @"manJuggling",
        @"man_mechanic": @"manMechanic",
        @"man_office_worker": @"manOfficeWorker",
        @"man_pilot": @"manPilot",
        @"man_playing_handball": @"manPlayingHandball",
        @"man_playing_water_polo": @"manPlayingWaterPolo",
        @"man_scientist": @"manScientist",
        @"man_shrugging": @"manShrugging",
        @"man_singer": @"manSinger",
        @"man_student": @"manStudent",
        @"man_teacher": @"manTeacher",
        @"man_technologist": @"manTechnologist",
        @"man_with_gua_pi_mao": @"manWithGuaPiMao",
        @"man_with_turban": @"manWithTurban",
        @"mandarin": @"mandarin",
        @"mans_shoe": @"mansShoe",
        @"mantelpiece_clock": @"mantelpieceClock",
        @"maple_leaf": @"mapleLeaf",
        @"marshall_islands": @"marshallIslands",
        @"martial_arts_uniform": @"martialArtsUniform",
        @"martinique": @"martinique",
        @"mask": @"mask",
        @"massage": @"massage",
        @"massage_man": @"massageMan",
        @"massage_woman": @"massageWoman",
        @"mauritania": @"mauritania",
        @"mauritius": @"mauritius",
        @"mayotte": @"mayotte",
        @"meat_on_bone": @"meatOnBone",
        @"medal_military": @"medalMilitary",
        @"medal_sports": @"medalSports",
        @"mega": @"mega",
        @"melon": @"melon",
        @"memo": @"memo",
        @"men_wrestling": @"menWrestling",
        @"menorah": @"menorah",
        @"mens": @"mens",
        @"metal": @"metal",
        @"metro": @"metro",
        @"mexico": @"mexico",
        @"micronesia": @"micronesia",
        @"microphone": @"microphone",
        @"microscope": @"microscope",
        @"middle_finger": @"middleFinger",
        @"milk_glass": @"milkGlass",
        @"milky_way": @"milkyWay",
        @"minibus": @"minibus",
        @"minidisc": @"minidisc",
        @"mobile_phone_off": @"mobilePhoneOff",
        @"moldova": @"moldova",
        @"monaco": @"monaco",
        @"money_mouth_face": @"moneyMouthFace",
        @"money_with_wings": @"moneyWithWings",
        @"moneybag": @"moneybag",
        @"mongolia": @"mongolia",
        @"monkey": @"monkey",
        @"monkey_face": @"monkeyFace",
        @"monorail": @"monorail",
        @"montenegro": @"montenegro",
        @"montserrat": @"montserrat",
        @"moon": @"moon",
        @"morocco": @"morocco",
        @"mortar_board": @"mortarBoard",
        @"mosque": @"mosque",
        @"motor_boat": @"motorBoat",
        @"motor_scooter": @"motorScooter",
        @"motorcycle": @"motorcycle",
        @"motorway": @"motorway",
        @"mount_fuji": @"mountFuji",
        @"mountain": @"mountain",
        @"mountain_bicyclist": @"mountainBicyclist",
        @"mountain_biking_man": @"mountainBikingMan",
        @"mountain_biking_woman": @"mountainBikingWoman",
        @"mountain_cableway": @"mountainCableway",
        @"mountain_railway": @"mountainRailway",
        @"mountain_snow": @"mountainSnow",
        @"mouse": @"mouse",
        @"mouse2": @"mouse2",
        @"movie_camera": @"movieCamera",
        @"moyai": @"moyai",
        @"mozambique": @"mozambique",
        @"mrs_claus": @"mrsClaus",
        @"muscle": @"muscle",
        @"mushroom": @"mushroom",
        @"musical_keyboard": @"musicalKeyboard",
        @"musical_note": @"musicalNote",
        @"musical_score": @"musicalScore",
        @"mute": @"mute",
        @"myanmar": @"myanmar",
        @"nail_care": @"nailCare",
        @"name_badge": @"nameBadge",
        @"namibia": @"namibia",
        @"national_park": @"nationalPark",
        @"nauru": @"nauru",
        @"nauseated_face": @"nauseatedFace",
        @"neckbeard": @"neckbeard",
        @"necktie": @"necktie",
        @"negative_squared_cross_mark": @"negativeSquaredCrossMark",
        @"nepal": @"nepal",
        @"nerd_face": @"nerdFace",
        @"netherlands": @"netherlands",
        @"neutral_face": @"neutralFace",
        @"new": @"theNew",
        @"new_caledonia": @"theNewCaledonia",
        @"new_moon": @"theNewMoon",
        @"new_moon_with_face": @"theNewMoonWithFace",
        @"new_zealand": @"theNewZealand",
        @"newspaper": @"newspaper",
        @"newspaper_roll": @"newspaperRoll",
        @"next_track_button": @"nextTrackButton",
        @"ng": @"ng",
        @"ng_man": @"ngMan",
        @"ng_woman": @"ngWoman",
        @"nicaragua": @"nicaragua",
        @"niger": @"niger",
        @"nigeria": @"nigeria",
        @"night_with_stars": @"nightWithStars",
        @"nine": @"nine",
        @"niue": @"niue",
        @"no_bell": @"noBell",
        @"no_bicycles": @"noBicycles",
        @"no_entry": @"noEntry",
        @"no_entry_sign": @"noEntrySign",
        @"no_good": @"noGood",
        @"no_good_man": @"noGoodMan",
        @"no_good_woman": @"noGoodWoman",
        @"no_mobile_phones": @"noMobilePhones",
        @"no_mouth": @"noMouth",
        @"no_pedestrians": @"noPedestrians",
        @"no_smoking": @"noSmoking",
        @"non-potable_water": @"nonPotableWater",
        @"norfolk_island": @"norfolkIsland",
        @"north_korea": @"northKorea",
        @"northern_mariana_islands": @"northernMarianaIslands",
        @"norway": @"norway",
        @"nose": @"nose",
        @"notebook": @"notebook",
        @"notebook_with_decorative_cover": @"notebookWithDecorativeCover",
        @"notes": @"notes",
        @"nut_and_bolt": @"nutAndBolt",
        @"o": @"o",
        @"o2": @"o2",
        @"ocean": @"ocean",
        @"octocat": @"octocat",
        @"octopus": @"octopus",
        @"oden": @"oden",
        @"office": @"office",
        @"oil_drum": @"oilDrum",
        @"ok": @"ok",
        @"ok_hand": @"okHand",
        @"ok_man": @"okMan",
        @"ok_woman": @"okWoman",
        @"old_key": @"oldKey",
        @"older_man": @"olderMan",
        @"older_woman": @"olderWoman",
        @"om": @"om",
        @"oman": @"oman",
        @"on": @"on",
        @"oncoming_automobile": @"oncomingAutomobile",
        @"oncoming_bus": @"oncomingBus",
        @"oncoming_police_car": @"oncomingPoliceCar",
        @"oncoming_taxi": @"oncomingTaxi",
        @"one": @"one",
        @"open_book": @"openBook",
        @"open_file_folder": @"openFileFolder",
        @"open_hands": @"openHands",
        @"open_mouth": @"openMouth",
        @"open_umbrella": @"openUmbrella",
        @"ophiuchus": @"ophiuchus",
        @"orange": @"orange",
        @"orange_book": @"orangeBook",
        @"orthodox_cross": @"orthodoxCross",
        @"outbox_tray": @"outboxTray",
        @"owl": @"owl",
        @"ox": @"ox",
        @"package": @"package",
        @"page_facing_up": @"pageFacingUp",
        @"page_with_curl": @"pageWithCurl",
        @"pager": @"pager",
        @"paintbrush": @"paintbrush",
        @"pakistan": @"pakistan",
        @"palau": @"palau",
        @"palestinian_territories": @"palestinianTerritories",
        @"palm_tree": @"palmTree",
        @"panama": @"panama",
        @"pancakes": @"pancakes",
        @"panda_face": @"pandaFace",
        @"paperclip": @"paperclip",
        @"paperclips": @"paperclips",
        @"papua_new_guinea": @"papuaNewGuinea",
        @"paraguay": @"paraguay",
        @"parasol_on_ground": @"parasolOnGround",
        @"parking": @"parking",
        @"part_alternation_mark": @"partAlternationMark",
        @"partly_sunny": @"partlySunny",
        @"passenger_ship": @"passengerShip",
        @"passport_control": @"passportControl",
        @"pause_button": @"pauseButton",
        @"paw_prints": @"pawPrints",
        @"peace_symbol": @"peaceSymbol",
        @"peach": @"peach",
        @"peanuts": @"peanuts",
        @"pear": @"pear",
        @"pen": @"pen",
        @"pencil": @"pencil",
        @"pencil2": @"pencil2",
        @"penguin": @"penguin",
        @"pensive": @"pensive",
        @"performing_arts": @"performingArts",
        @"persevere": @"persevere",
        @"person_fencing": @"personFencing",
        @"person_frowning": @"personFrowning",
        @"person_with_blond_hair": @"personWithBlondHair",
        @"person_with_pouting_face": @"personWithPoutingFace",
        @"peru": @"peru",
        @"philippines": @"philippines",
        @"phone": @"phone",
        @"pick": @"pick",
        @"pig": @"pig",
        @"pig2": @"pig2",
        @"pig_nose": @"pigNose",
        @"pill": @"pill",
        @"pineapple": @"pineapple",
        @"ping_pong": @"pingPong",
        @"pisces": @"pisces",
        @"pitcairn_islands": @"pitcairnIslands",
        @"pizza": @"pizza",
        @"place_of_worship": @"placeOfWorship",
        @"plate_with_cutlery": @"plateWithCutlery",
        @"play_or_pause_button": @"playOrPauseButton",
        @"point_down": @"pointDown",
        @"point_left": @"pointLeft",
        @"point_right": @"pointRight",
        @"point_up": @"pointUp",
        @"point_up_2": @"pointUp2",
        @"poland": @"poland",
        @"police_car": @"policeCar",
        @"policeman": @"policeman",
        @"policewoman": @"policewoman",
        @"poodle": @"poodle",
        @"poop": @"poop",
        @"popcorn": @"popcorn",
        @"portugal": @"portugal",
        @"post_office": @"postOffice",
        @"postal_horn": @"postalHorn",
        @"postbox": @"postbox",
        @"potable_water": @"potableWater",
        @"potato": @"potato",
        @"pouch": @"pouch",
        @"poultry_leg": @"poultryLeg",
        @"pound": @"pound",
        @"pout": @"pout",
        @"pouting_cat": @"poutingCat",
        @"pouting_man": @"poutingMan",
        @"pouting_woman": @"poutingWoman",
        @"pray": @"pray",
        @"prayer_beads": @"prayerBeads",
        @"pregnant_woman": @"pregnantWoman",
        @"previous_track_button": @"previousTrackButton",
        @"prince": @"prince",
        @"princess": @"princess",
        @"printer": @"printer",
        @"puerto_rico": @"puertoRico",
        @"punch": @"punch",
        @"purple_heart": @"purpleHeart",
        @"purse": @"purse",
        @"pushpin": @"pushpin",
        @"put_litter_in_its_place": @"putLitterInItsPlace",
        @"qatar": @"qatar",
        @"question": @"question",
        @"rabbit": @"rabbit",
        @"rabbit2": @"rabbit2",
        @"racehorse": @"racehorse",
        @"racing_car": @"racingCar",
        @"radio": @"radio",
        @"radio_button": @"radioButton",
        @"radioactive": @"radioactive",
        @"rage": @"rage",
        @"rage1": @"rage1",
        @"rage2": @"rage2",
        @"rage3": @"rage3",
        @"rage4": @"rage4",
        @"railway_car": @"railwayCar",
        @"railway_track": @"railwayTrack",
        @"rainbow": @"rainbow",
        @"rainbow_flag": @"rainbowFlag",
        @"raised_back_of_hand": @"raisedBackOfHand",
        @"raised_hand": @"raisedHand",
        @"raised_hand_with_fingers_splayed": @"raisedHandWithFingersSplayed",
        @"raised_hands": @"raisedHands",
        @"raising_hand": @"raisingHand",
        @"raising_hand_man": @"raisingHandMan",
        @"raising_hand_woman": @"raisingHandWoman",
        @"ram": @"ram",
        @"ramen": @"ramen",
        @"rat": @"rat",
        @"record_button": @"recordButton",
        @"recycle": @"recycle",
        @"red_car": @"redCar",
        @"red_circle": @"redCircle",
        @"registered": @"registered",
        @"relaxed": @"relaxed",
        @"relieved": @"relieved",
        @"reminder_ribbon": @"reminderRibbon",
        @"repeat": @"repeat",
        @"repeat_one": @"repeatOne",
        @"rescue_worker_helmet": @"rescueWorkerHelmet",
        @"restroom": @"restroom",
        @"reunion": @"reunion",
        @"revolving_hearts": @"revolvingHearts",
        @"rewind": @"rewind",
        @"rhinoceros": @"rhinoceros",
        @"ribbon": @"ribbon",
        @"rice": @"rice",
        @"rice_ball": @"riceBall",
        @"rice_cracker": @"riceCracker",
        @"rice_scene": @"riceScene",
        @"right_anger_bubble": @"rightAngerBubble",
        @"ring": @"ring",
        @"robot": @"robot",
        @"rocket": @"rocket",
        @"rofl": @"rofl",
        @"roll_eyes": @"rollEyes",
        @"roller_coaster": @"rollerCoaster",
        @"romania": @"romania",
        @"rooster": @"rooster",
        @"rose": @"rose",
        @"rosette": @"rosette",
        @"rotating_light": @"rotatingLight",
        @"round_pushpin": @"roundPushpin",
        @"rowboat": @"rowboat",
        @"rowing_man": @"rowingMan",
        @"rowing_woman": @"rowingWoman",
        @"ru": @"ru",
        @"rugby_football": @"rugbyFootball",
        @"runner": @"runner",
        @"running": @"running",
        @"running_man": @"runningMan",
        @"running_shirt_with_sash": @"runningShirtWithSash",
        @"running_woman": @"runningWoman",
        @"rwanda": @"rwanda",
        @"sa": @"sa",
        @"sagittarius": @"sagittarius",
        @"sailboat": @"sailboat",
        @"sake": @"sake",
        @"samoa": @"samoa",
        @"san_marino": @"sanMarino",
        @"sandal": @"sandal",
        @"santa": @"santa",
        @"sao_tome_principe": @"saoTomePrincipe",
        @"satellite": @"satellite",
        @"satisfied": @"satisfied",
        @"saudi_arabia": @"saudiArabia",
        @"saxophone": @"saxophone",
        @"school": @"school",
        @"school_satchel": @"schoolSatchel",
        @"scissors": @"scissors",
        @"scorpion": @"scorpion",
        @"scorpius": @"scorpius",
        @"scream": @"scream",
        @"scream_cat": @"screamCat",
        @"scroll": @"scroll",
        @"seat": @"seat",
        @"secret": @"secret",
        @"see_no_evil": @"seeNoEvil",
        @"seedling": @"seedling",
        @"selfie": @"selfie",
        @"senegal": @"senegal",
        @"serbia": @"serbia",
        @"seven": @"seven",
        @"seychelles": @"seychelles",
        @"shallow_pan_of_food": @"shallowPanOfFood",
        @"shamrock": @"shamrock",
        @"shark": @"shark",
        @"shaved_ice": @"shavedIce",
        @"sheep": @"sheep",
        @"shell": @"shell",
        @"shield": @"shield",
        @"shinto_shrine": @"shintoShrine",
        @"ship": @"ship",
        @"shipit": @"shipit",
        @"shirt": @"shirt",
        @"shit": @"shit",
        @"shoe": @"shoe",
        @"shopping": @"shopping",
        @"shopping_cart": @"shoppingCart",
        @"shower": @"shower",
        @"shrimp": @"shrimp",
        @"sierra_leone": @"sierraLeone",
        @"signal_strength": @"signalStrength",
        @"singapore": @"singapore",
        @"sint_maarten": @"sintMaarten",
        @"six": @"six",
        @"six_pointed_star": @"sixPointedStar",
        @"ski": @"ski",
        @"skier": @"skier",
        @"skull": @"skull",
        @"skull_and_crossbones": @"skullAndCrossbones",
        @"sleeping": @"sleeping",
        @"sleeping_bed": @"sleepingBed",
        @"sleepy": @"sleepy",
        @"slightly_frowning_face": @"slightlyFrowningFace",
        @"slightly_smiling_face": @"slightlySmilingFace",
        @"slot_machine": @"slotMachine",
        @"slovakia": @"slovakia",
        @"slovenia": @"slovenia",
        @"small_airplane": @"smallAirplane",
        @"small_blue_diamond": @"smallBlueDiamond",
        @"small_orange_diamond": @"smallOrangeDiamond",
        @"small_red_triangle": @"smallRedTriangle",
        @"small_red_triangle_down": @"smallRedTriangleDown",
        @"smile": @"smile",
        @"smile_cat": @"smileCat",
        @"smiley": @"smiley",
        @"smiley_cat": @"smileyCat",
        @"smiling_imp": @"smilingImp",
        @"smirk": @"smirk",
        @"smirk_cat": @"smirkCat",
        @"smoking": @"smoking",
        @"snail": @"snail",
        @"snake": @"snake",
        @"sneezing_face": @"sneezingFace",
        @"snowboarder": @"snowboarder",
        @"snowflake": @"snowflake",
        @"snowman": @"snowman",
        @"snowman_with_snow": @"snowmanWithSnow",
        @"sob": @"sob",
        @"soccer": @"soccer",
        @"solomon_islands": @"solomonIslands",
        @"somalia": @"somalia",
        @"soon": @"soon",
        @"sos": @"sos",
        @"sound": @"sound",
        @"south_africa": @"southAfrica",
        @"south_georgia_south_sandwich_islands": @"southGeorgiaSouthSandwichIslands",
        @"south_sudan": @"southSudan",
        @"space_invader": @"spaceInvader",
        @"spades": @"spades",
        @"spaghetti": @"spaghetti",
        @"sparkle": @"sparkle",
        @"sparkler": @"sparkler",
        @"sparkles": @"sparkles",
        @"sparkling_heart": @"sparklingHeart",
        @"speak_no_evil": @"speakNoEvil",
        @"speaker": @"speaker",
        @"speaking_head": @"speakingHead",
        @"speech_balloon": @"speechBalloon",
        @"speedboat": @"speedboat",
        @"spider": @"spider",
        @"spider_web": @"spiderWeb",
        @"spiral_calendar": @"spiralCalendar",
        @"spiral_notepad": @"spiralNotepad",
        @"spoon": @"spoon",
        @"squid": @"squid",
        @"squirrel": @"squirrel",
        @"sri_lanka": @"sriLanka",
        @"st_barthelemy": @"stBarthelemy",
        @"st_helena": @"stHelena",
        @"st_kitts_nevis": @"stKittsNevis",
        @"st_lucia": @"stLucia",
        @"st_pierre_miquelon": @"stPierreMiquelon",
        @"st_vincent_grenadines": @"stVincentGrenadines",
        @"stadium": @"stadium",
        @"star": @"star",
        @"star2": @"star2",
        @"star_and_crescent": @"starAndCrescent",
        @"star_of_david": @"starOfDavid",
        @"stars": @"stars",
        @"station": @"station",
        @"statue_of_liberty": @"statueOfLiberty",
        @"steam_locomotive": @"steamLocomotive",
        @"stew": @"stew",
        @"stop_button": @"stopButton",
        @"stop_sign": @"stopSign",
        @"stopwatch": @"stopwatch",
        @"straight_ruler": @"straightRuler",
        @"strawberry": @"strawberry",
        @"stuck_out_tongue": @"stuckOutTongue",
        @"stuck_out_tongue_closed_eyes": @"stuckOutTongueClosedEyes",
        @"stuck_out_tongue_winking_eye": @"stuckOutTongueWinkingEye",
        @"studio_microphone": @"studioMicrophone",
        @"stuffed_flatbread": @"stuffedFlatbread",
        @"sudan": @"sudan",
        @"sun_behind_large_cloud": @"sunBehindLargeCloud",
        @"sun_behind_rain_cloud": @"sunBehindRainCloud",
        @"sun_behind_small_cloud": @"sunBehindSmallCloud",
        @"sun_with_face": @"sunWithFace",
        @"sunflower": @"sunflower",
        @"sunglasses": @"sunglasses",
        @"sunny": @"sunny",
        @"sunrise": @"sunrise",
        @"sunrise_over_mountains": @"sunriseOverMountains",
        @"surfer": @"surfer",
        @"surfing_man": @"surfingMan",
        @"surfing_woman": @"surfingWoman",
        @"suriname": @"suriname",
        @"sushi": @"sushi",
        @"suspect": @"suspect",
        @"suspension_railway": @"suspensionRailway",
        @"swaziland": @"swaziland",
        @"sweat": @"sweat",
        @"sweat_drops": @"sweatDrops",
        @"sweat_smile": @"sweatSmile",
        @"sweden": @"sweden",
        @"sweet_potato": @"sweetPotato",
        @"swimmer": @"swimmer",
        @"swimming_man": @"swimmingMan",
        @"swimming_woman": @"swimmingWoman",
        @"switzerland": @"switzerland",
        @"symbols": @"symbols",
        @"synagogue": @"synagogue",
        @"syria": @"syria",
        @"syringe": @"syringe",
        @"taco": @"taco",
        @"tada": @"tada",
        @"taiwan": @"taiwan",
        @"tajikistan": @"tajikistan",
        @"tanabata_tree": @"tanabataTree",
        @"tangerine": @"tangerine",
        @"tanzania": @"tanzania",
        @"taurus": @"taurus",
        @"taxi": @"taxi",
        @"tea": @"tea",
        @"telephone": @"telephone",
        @"telephone_receiver": @"telephoneReceiver",
        @"telescope": @"telescope",
        @"tennis": @"tennis",
        @"tent": @"tent",
        @"thailand": @"thailand",
        @"thermometer": @"thermometer",
        @"thinking": @"thinking",
        @"thought_balloon": @"thoughtBalloon",
        @"three": @"three",
        @"thumbsdown": @"thumbsdown",
        @"thumbsup": @"thumbsup",
        @"ticket": @"ticket",
        @"tickets": @"tickets",
        @"tiger": @"tiger",
        @"tiger2": @"tiger2",
        @"timer_clock": @"timerClock",
        @"timor_leste": @"timorLeste",
        @"tipping_hand_man": @"tippingHandMan",
        @"tipping_hand_woman": @"tippingHandWoman",
        @"tired_face": @"tiredFace",
        @"tm": @"tm",
        @"togo": @"togo",
        @"toilet": @"toilet",
        @"tokelau": @"tokelau",
        @"tokyo_tower": @"tokyoTower",
        @"tomato": @"tomato",
        @"tonga": @"tonga",
        @"tongue": @"tongue",
        @"top": @"top",
        @"tophat": @"tophat",
        @"tornado": @"tornado",
        @"tr": @"tr",
        @"trackball": @"trackball",
        @"tractor": @"tractor",
        @"traffic_light": @"trafficLight",
        @"train": @"train",
        @"train2": @"train2",
        @"tram": @"tram",
        @"triangular_flag_on_post": @"triangularFlagOnPost",
        @"triangular_ruler": @"triangularRuler",
        @"trident": @"trident",
        @"trinidad_tobago": @"trinidadTobago",
        @"triumph": @"triumph",
        @"trolleybus": @"trolleybus",
        @"trollface": @"trollface",
        @"trophy": @"trophy",
        @"tropical_drink": @"tropicalDrink",
        @"tropical_fish": @"tropicalFish",
        @"truck": @"truck",
        @"trumpet": @"trumpet",
        @"tshirt": @"tshirt",
        @"tulip": @"tulip",
        @"tumbler_glass": @"tumblerGlass",
        @"tunisia": @"tunisia",
        @"turkey": @"turkey",
        @"turkmenistan": @"turkmenistan",
        @"turks_caicos_islands": @"turksCaicosIslands",
        @"turtle": @"turtle",
        @"tuvalu": @"tuvalu",
        @"tv": @"tv",
        @"twisted_rightwards_arrows": @"twistedRightwardsArrows",
        @"two": @"two",
        @"two_hearts": @"twoHearts",
        @"two_men_holding_hands": @"twoMenHoldingHands",
        @"two_women_holding_hands": @"twoWomenHoldingHands",
        @"u5272": @"u5272",
        @"u5408": @"u5408",
        @"u55b6": @"u55B6",
        @"u6307": @"u6307",
        @"u6708": @"u6708",
        @"u6709": @"u6709",
        @"u6e80": @"u6E80",
        @"u7121": @"u7121",
        @"u7533": @"u7533",
        @"u7981": @"u7981",
        @"u7a7a": @"u7A7A",
        @"uganda": @"uganda",
        @"uk": @"uk",
        @"ukraine": @"ukraine",
        @"umbrella": @"umbrella",
        @"unamused": @"unamused",
        @"underage": @"underage",
        @"unicorn": @"unicorn",
        @"united_arab_emirates": @"unitedArabEmirates",
        @"unlock": @"unlock",
        @"up": @"up",
        @"upside_down_face": @"upsideDownFace",
        @"uruguay": @"uruguay",
        @"us": @"us",
        @"us_virgin_islands": @"usVirginIslands",
        @"uzbekistan": @"uzbekistan",
        @"v": @"v",
        @"vanuatu": @"vanuatu",
        @"vatican_city": @"vaticanCity",
        @"venezuela": @"venezuela",
        @"vertical_traffic_light": @"verticalTrafficLight",
        @"vhs": @"vhs",
        @"vibration_mode": @"vibrationMode",
        @"video_camera": @"videoCamera",
        @"video_game": @"videoGame",
        @"vietnam": @"vietnam",
        @"violin": @"violin",
        @"virgo": @"virgo",
        @"volcano": @"volcano",
        @"volleyball": @"volleyball",
        @"vs": @"vs",
        @"vulcan_salute": @"vulcanSalute",
        @"walking": @"walking",
        @"walking_man": @"walkingMan",
        @"walking_woman": @"walkingWoman",
        @"wallis_futuna": @"wallisFutuna",
        @"waning_crescent_moon": @"waningCrescentMoon",
        @"waning_gibbous_moon": @"waningGibbousMoon",
        @"warning": @"warning",
        @"wastebasket": @"wastebasket",
        @"watch": @"watch",
        @"water_buffalo": @"waterBuffalo",
        @"watermelon": @"watermelon",
        @"wave": @"wave",
        @"wavy_dash": @"wavyDash",
        @"waxing_crescent_moon": @"waxingCrescentMoon",
        @"waxing_gibbous_moon": @"waxingGibbousMoon",
        @"wc": @"wc",
        @"weary": @"weary",
        @"wedding": @"wedding",
        @"weight_lifting_man": @"weightLiftingMan",
        @"weight_lifting_woman": @"weightLiftingWoman",
        @"western_sahara": @"westernSahara",
        @"whale": @"whale",
        @"whale2": @"whale2",
        @"wheel_of_dharma": @"wheelOfDharma",
        @"wheelchair": @"wheelchair",
        @"white_check_mark": @"whiteCheckMark",
        @"white_circle": @"whiteCircle",
        @"white_flag": @"whiteFlag",
        @"white_flower": @"whiteFlower",
        @"white_large_square": @"whiteLargeSquare",
        @"white_medium_small_square": @"whiteMediumSmallSquare",
        @"white_medium_square": @"whiteMediumSquare",
        @"white_small_square": @"whiteSmallSquare",
        @"white_square_button": @"whiteSquareButton",
        @"wilted_flower": @"wiltedFlower",
        @"wind_chime": @"windChime",
        @"wind_face": @"windFace",
        @"wine_glass": @"wineGlass",
        @"wink": @"wink",
        @"wolf": @"wolf",
        @"woman": @"woman",
        @"woman_artist": @"womanArtist",
        @"woman_astronaut": @"womanAstronaut",
        @"woman_cartwheeling": @"womanCartwheeling",
        @"woman_cook": @"womanCook",
        @"woman_facepalming": @"womanFacepalming",
        @"woman_factory_worker": @"womanFactoryWorker",
        @"woman_farmer": @"womanFarmer",
        @"woman_firefighter": @"womanFirefighter",
        @"woman_health_worker": @"womanHealthWorker",
        @"woman_judge": @"womanJudge",
        @"woman_juggling": @"womanJuggling",
        @"woman_mechanic": @"womanMechanic",
        @"woman_office_worker": @"womanOfficeWorker",
        @"woman_pilot": @"womanPilot",
        @"woman_playing_handball": @"womanPlayingHandball",
        @"woman_playing_water_polo": @"womanPlayingWaterPolo",
        @"woman_scientist": @"womanScientist",
        @"woman_shrugging": @"womanShrugging",
        @"woman_singer": @"womanSinger",
        @"woman_student": @"womanStudent",
        @"woman_teacher": @"womanTeacher",
        @"woman_technologist": @"womanTechnologist",
        @"woman_with_turban": @"womanWithTurban",
        @"womans_clothes": @"womansClothes",
        @"womans_hat": @"womansHat",
        @"women_wrestling": @"womenWrestling",
        @"womens": @"womens",
        @"world_map": @"worldMap",
        @"worried": @"worried",
        @"wrench": @"wrench",
        @"writing_hand": @"writingHand",
        @"x": @"x",
        @"yellow_heart": @"yellowHeart",
        @"yemen": @"yemen",
        @"yen": @"yen",
        @"yin_yang": @"yinYang",
        @"yum": @"yum",
        @"zambia": @"zambia",
        @"zap": @"zap",
        @"zero": @"zero",
        @"zimbabwe": @"zimbabwe",
        @"zipper_mouth_face": @"zipperMouthFace",
        @"zzz": @"zzz",
    };
}

+ (_Nullable instancetype)fromData:(NSData *)data error:(NSError *_Nullable *)error
{
    return APIEmojisFromData(data, error);
}

+ (_Nullable instancetype)fromJSON:(NSString *)json encoding:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return APIEmojisFromJSON(json, encoding, error);
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[APIEmojis alloc] initWithJSONDictionary:dict] : nil;
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
    [super setValue:value forKey:APIEmojis.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:APIEmojis.properties.allValues] mutableCopy];

    for (id jsonName in APIEmojis.properties) {
        id propertyName = APIEmojis.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    return dict;
}

- (NSData *_Nullable)toData:(NSError *_Nullable *)error
{
    return APIEmojisToData(self, error);
}

- (NSString *_Nullable)toJSON:(NSStringEncoding)encoding error:(NSError *_Nullable *)error
{
    return APIEmojisToJSON(self, encoding, error);
}
@end

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
        @"push_id": @"pushID",
        @"size": @"size",
        @"distinct_size": @"distinctSize",
        @"ref": @"ref",
        @"head": @"head",
        @"before": @"before",
        @"commits": @"commits",
        @"forkee": @"forkee",
        @"action": @"action",
        @"number": @"number",
        @"pull_request": @"pullRequest",
        @"ref_type": @"refType",
        @"master_branch": @"masterBranch",
        @"description": @"theDescription",
        @"pusher_type": @"pusherType",
        @"issue": @"issue",
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
        _commits = map(_commits, λ(id x, [APICommit fromJSONDictionary:x]));
        _forkee = [APIForkee fromJSONDictionary:(id)_forkee];
        _pullRequest = [APIPullRequest fromJSONDictionary:(id)_pullRequest];
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
        @"commits": NSNullify(map(_commits, λ(id x, [x JSONDictionary]))),
        @"forkee": NSNullify([_forkee JSONDictionary]),
        @"pull_request": NSNullify([_pullRequest JSONDictionary]),
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
        @"has_issues": _hasIssues ? @YES : @NO,
        @"has_projects": _hasProjects ? @YES : @NO,
        @"has_downloads": _hasDownloads ? @YES : @NO,
        @"has_wiki": _hasWiki ? @YES : @NO,
        @"has_pages": _hasPages ? @YES : @NO,
        @"archived": _isArchived ? @YES : @NO,
    }];

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
        @"labels": map(_labels, λ(id x, [x JSONDictionary])),
        @"locked": _isLocked ? @YES : @NO,
        @"assignee": NSNullify([_assignee JSONDictionary]),
        @"assignees": map(_assignees, λ(id x, [x JSONDictionary])),
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
        @"labels": @"labels",
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
        @"merged": @"isMerged",
        @"mergeable": @"mergeable",
        @"rebaseable": @"rebaseable",
        @"mergeable_state": @"mergeableState",
        @"merged_by": @"mergedBy",
        @"comments": @"comments",
        @"review_comments": @"reviewComments",
        @"maintainer_can_modify": @"isMaintainerCanModify",
        @"commits": @"commits",
        @"additions": @"additions",
        @"deletions": @"deletions",
        @"changed_files": @"changedFiles",
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
        _head = [APIBase fromJSONDictionary:(id)_head];
        _base = [APIBase fromJSONDictionary:(id)_base];
        _links = [APILinks fromJSONDictionary:(id)_links];
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
        @"head": [_head JSONDictionary],
        @"base": [_base JSONDictionary],
        @"_links": [_links JSONDictionary],
        @"merged": _isMerged ? @YES : @NO,
        @"maintainer_can_modify": _isMaintainerCanModify ? @YES : @NO,
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

@implementation APILinks
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
    return dict ? [[APILinks alloc] initWithJSONDictionary:dict] : nil;
}

- (instancetype)initWithJSONDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        _self = [APIComments fromJSONDictionary:(id)_self];
        _html = [APIComments fromJSONDictionary:(id)_html];
        _issue = [APIComments fromJSONDictionary:(id)_issue];
        _comments = [APIComments fromJSONDictionary:(id)_comments];
        _reviewComments = [APIComments fromJSONDictionary:(id)_reviewComments];
        _reviewComment = [APIComments fromJSONDictionary:(id)_reviewComment];
        _commits = [APIComments fromJSONDictionary:(id)_commits];
        _statuses = [APIComments fromJSONDictionary:(id)_statuses];
    }
    return self;
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    [super setValue:value forKey:APILinks.properties[key]];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:APILinks.properties.allValues] mutableCopy];

    for (id jsonName in APILinks.properties) {
        id propertyName = APILinks.properties[jsonName];
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

@implementation APIComments
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"href": @"href",
    };
}

+ (instancetype)fromJSONDictionary:(NSDictionary *)dict
{
    return dict ? [[APIComments alloc] initWithJSONDictionary:dict] : nil;
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
    return [self dictionaryWithValuesForKeys:APIComments.properties.allValues];
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
