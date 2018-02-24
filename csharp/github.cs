// To parse this JSON data, add NuGet 'Newtonsoft.Json' then do one of these:
//
//    using QuickType;
//
//    var apiData = ApiData.FromJson(jsonString);
//    var emojis = Emojis.FromJson(jsonString);
//    var events = Events.FromJson(jsonString);
//    var gists = Gists.FromJson(jsonString);
//    var meta = Meta.FromJson(jsonString);

namespace QuickType
{
    using System;
    using System.Collections.Generic;
    using System.Net;

    using System.Globalization;
    using Newtonsoft.Json;
    using Newtonsoft.Json.Converters;

    public partial class ApiData
    {
        [JsonProperty("current_user_url")]
        public string CurrentUserUrl { get; set; }

        [JsonProperty("current_user_authorizations_html_url")]
        public string CurrentUserAuthorizationsHtmlUrl { get; set; }

        [JsonProperty("authorizations_url")]
        public string AuthorizationsUrl { get; set; }

        [JsonProperty("code_search_url")]
        public string CodeSearchUrl { get; set; }

        [JsonProperty("commit_search_url")]
        public string CommitSearchUrl { get; set; }

        [JsonProperty("emails_url")]
        public string EmailsUrl { get; set; }

        [JsonProperty("emojis_url")]
        public string EmojisUrl { get; set; }

        [JsonProperty("events_url")]
        public string EventsUrl { get; set; }

        [JsonProperty("feeds_url")]
        public string FeedsUrl { get; set; }

        [JsonProperty("followers_url")]
        public string FollowersUrl { get; set; }

        [JsonProperty("following_url")]
        public string FollowingUrl { get; set; }

        [JsonProperty("gists_url")]
        public string GistsUrl { get; set; }

        [JsonProperty("hub_url")]
        public string HubUrl { get; set; }

        [JsonProperty("issue_search_url")]
        public string IssueSearchUrl { get; set; }

        [JsonProperty("issues_url")]
        public string IssuesUrl { get; set; }

        [JsonProperty("keys_url")]
        public string KeysUrl { get; set; }

        [JsonProperty("notifications_url")]
        public string NotificationsUrl { get; set; }

        [JsonProperty("organization_repositories_url")]
        public string OrganizationRepositoriesUrl { get; set; }

        [JsonProperty("organization_url")]
        public string OrganizationUrl { get; set; }

        [JsonProperty("public_gists_url")]
        public string PublicGistsUrl { get; set; }

        [JsonProperty("rate_limit_url")]
        public string RateLimitUrl { get; set; }

        [JsonProperty("repository_url")]
        public string RepositoryUrl { get; set; }

        [JsonProperty("repository_search_url")]
        public string RepositorySearchUrl { get; set; }

        [JsonProperty("current_user_repositories_url")]
        public string CurrentUserRepositoriesUrl { get; set; }

        [JsonProperty("starred_url")]
        public string StarredUrl { get; set; }

        [JsonProperty("starred_gists_url")]
        public string StarredGistsUrl { get; set; }

        [JsonProperty("team_url")]
        public string TeamUrl { get; set; }

        [JsonProperty("user_url")]
        public string UserUrl { get; set; }

        [JsonProperty("user_organizations_url")]
        public string UserOrganizationsUrl { get; set; }

        [JsonProperty("user_repositories_url")]
        public string UserRepositoriesUrl { get; set; }

        [JsonProperty("user_search_url")]
        public string UserSearchUrl { get; set; }
    }

    public partial class Emojis
    {
        [JsonProperty("+1")]
        public string The1 { get; set; }

        [JsonProperty("-1")]
        public string Emojis1 { get; set; }

        [JsonProperty("100")]
        public string The100 { get; set; }

        [JsonProperty("1234")]
        public string The1234 { get; set; }

        [JsonProperty("1st_place_medal")]
        public string The1StPlaceMedal { get; set; }

        [JsonProperty("2nd_place_medal")]
        public string The2NdPlaceMedal { get; set; }

        [JsonProperty("3rd_place_medal")]
        public string The3RdPlaceMedal { get; set; }

        [JsonProperty("8ball")]
        public string The8Ball { get; set; }

        [JsonProperty("a")]
        public string A { get; set; }

        [JsonProperty("ab")]
        public string Ab { get; set; }

        [JsonProperty("abc")]
        public string Abc { get; set; }

        [JsonProperty("abcd")]
        public string Abcd { get; set; }

        [JsonProperty("accept")]
        public string Accept { get; set; }

        [JsonProperty("aerial_tramway")]
        public string AerialTramway { get; set; }

        [JsonProperty("afghanistan")]
        public string Afghanistan { get; set; }

        [JsonProperty("airplane")]
        public string Airplane { get; set; }

        [JsonProperty("aland_islands")]
        public string AlandIslands { get; set; }

        [JsonProperty("alarm_clock")]
        public string AlarmClock { get; set; }

        [JsonProperty("albania")]
        public string Albania { get; set; }

        [JsonProperty("alembic")]
        public string Alembic { get; set; }

        [JsonProperty("algeria")]
        public string Algeria { get; set; }

        [JsonProperty("alien")]
        public string Alien { get; set; }

        [JsonProperty("ambulance")]
        public string Ambulance { get; set; }

        [JsonProperty("american_samoa")]
        public string AmericanSamoa { get; set; }

        [JsonProperty("amphora")]
        public string Amphora { get; set; }

        [JsonProperty("anchor")]
        public string Anchor { get; set; }

        [JsonProperty("andorra")]
        public string Andorra { get; set; }

        [JsonProperty("angel")]
        public string Angel { get; set; }

        [JsonProperty("anger")]
        public string Anger { get; set; }

        [JsonProperty("angola")]
        public string Angola { get; set; }

        [JsonProperty("angry")]
        public string Angry { get; set; }

        [JsonProperty("anguilla")]
        public string Anguilla { get; set; }

        [JsonProperty("anguished")]
        public string Anguished { get; set; }

        [JsonProperty("ant")]
        public string Ant { get; set; }

        [JsonProperty("antarctica")]
        public string Antarctica { get; set; }

        [JsonProperty("antigua_barbuda")]
        public string AntiguaBarbuda { get; set; }

        [JsonProperty("apple")]
        public string Apple { get; set; }

        [JsonProperty("aquarius")]
        public string Aquarius { get; set; }

        [JsonProperty("argentina")]
        public string Argentina { get; set; }

        [JsonProperty("aries")]
        public string Aries { get; set; }

        [JsonProperty("armenia")]
        public string Armenia { get; set; }

        [JsonProperty("arrow_backward")]
        public string ArrowBackward { get; set; }

        [JsonProperty("arrow_double_down")]
        public string ArrowDoubleDown { get; set; }

        [JsonProperty("arrow_double_up")]
        public string ArrowDoubleUp { get; set; }

        [JsonProperty("arrow_down")]
        public string ArrowDown { get; set; }

        [JsonProperty("arrow_down_small")]
        public string ArrowDownSmall { get; set; }

        [JsonProperty("arrow_forward")]
        public string ArrowForward { get; set; }

        [JsonProperty("arrow_heading_down")]
        public string ArrowHeadingDown { get; set; }

        [JsonProperty("arrow_heading_up")]
        public string ArrowHeadingUp { get; set; }

        [JsonProperty("arrow_left")]
        public string ArrowLeft { get; set; }

        [JsonProperty("arrow_lower_left")]
        public string ArrowLowerLeft { get; set; }

        [JsonProperty("arrow_lower_right")]
        public string ArrowLowerRight { get; set; }

        [JsonProperty("arrow_right")]
        public string ArrowRight { get; set; }

        [JsonProperty("arrow_right_hook")]
        public string ArrowRightHook { get; set; }

        [JsonProperty("arrow_up")]
        public string ArrowUp { get; set; }

        [JsonProperty("arrow_up_down")]
        public string ArrowUpDown { get; set; }

        [JsonProperty("arrow_up_small")]
        public string ArrowUpSmall { get; set; }

        [JsonProperty("arrow_upper_left")]
        public string ArrowUpperLeft { get; set; }

        [JsonProperty("arrow_upper_right")]
        public string ArrowUpperRight { get; set; }

        [JsonProperty("arrows_clockwise")]
        public string ArrowsClockwise { get; set; }

        [JsonProperty("arrows_counterclockwise")]
        public string ArrowsCounterclockwise { get; set; }

        [JsonProperty("art")]
        public string Art { get; set; }

        [JsonProperty("articulated_lorry")]
        public string ArticulatedLorry { get; set; }

        [JsonProperty("artificial_satellite")]
        public string ArtificialSatellite { get; set; }

        [JsonProperty("aruba")]
        public string Aruba { get; set; }

        [JsonProperty("asterisk")]
        public string Asterisk { get; set; }

        [JsonProperty("astonished")]
        public string Astonished { get; set; }

        [JsonProperty("athletic_shoe")]
        public string AthleticShoe { get; set; }

        [JsonProperty("atm")]
        public string Atm { get; set; }

        [JsonProperty("atom")]
        public string Atom { get; set; }

        [JsonProperty("atom_symbol")]
        public string AtomSymbol { get; set; }

        [JsonProperty("australia")]
        public string Australia { get; set; }

        [JsonProperty("austria")]
        public string Austria { get; set; }

        [JsonProperty("avocado")]
        public string Avocado { get; set; }

        [JsonProperty("azerbaijan")]
        public string Azerbaijan { get; set; }

        [JsonProperty("b")]
        public string B { get; set; }

        [JsonProperty("baby")]
        public string Baby { get; set; }

        [JsonProperty("baby_bottle")]
        public string BabyBottle { get; set; }

        [JsonProperty("baby_chick")]
        public string BabyChick { get; set; }

        [JsonProperty("baby_symbol")]
        public string BabySymbol { get; set; }

        [JsonProperty("back")]
        public string Back { get; set; }

        [JsonProperty("bacon")]
        public string Bacon { get; set; }

        [JsonProperty("badminton")]
        public string Badminton { get; set; }

        [JsonProperty("baggage_claim")]
        public string BaggageClaim { get; set; }

        [JsonProperty("baguette_bread")]
        public string BaguetteBread { get; set; }

        [JsonProperty("bahamas")]
        public string Bahamas { get; set; }

        [JsonProperty("bahrain")]
        public string Bahrain { get; set; }

        [JsonProperty("balance_scale")]
        public string BalanceScale { get; set; }

        [JsonProperty("balloon")]
        public string Balloon { get; set; }

        [JsonProperty("ballot_box")]
        public string BallotBox { get; set; }

        [JsonProperty("ballot_box_with_check")]
        public string BallotBoxWithCheck { get; set; }

        [JsonProperty("bamboo")]
        public string Bamboo { get; set; }

        [JsonProperty("banana")]
        public string Banana { get; set; }

        [JsonProperty("bangbang")]
        public string Bangbang { get; set; }

        [JsonProperty("bangladesh")]
        public string Bangladesh { get; set; }

        [JsonProperty("bank")]
        public string Bank { get; set; }

        [JsonProperty("bar_chart")]
        public string BarChart { get; set; }

        [JsonProperty("barbados")]
        public string Barbados { get; set; }

        [JsonProperty("barber")]
        public string Barber { get; set; }

        [JsonProperty("baseball")]
        public string Baseball { get; set; }

        [JsonProperty("basecamp")]
        public string Basecamp { get; set; }

        [JsonProperty("basecampy")]
        public string Basecampy { get; set; }

        [JsonProperty("basketball")]
        public string Basketball { get; set; }

        [JsonProperty("basketball_man")]
        public string BasketballMan { get; set; }

        [JsonProperty("basketball_woman")]
        public string BasketballWoman { get; set; }

        [JsonProperty("bat")]
        public string Bat { get; set; }

        [JsonProperty("bath")]
        public string Bath { get; set; }

        [JsonProperty("bathtub")]
        public string Bathtub { get; set; }

        [JsonProperty("battery")]
        public string Battery { get; set; }

        [JsonProperty("beach_umbrella")]
        public string BeachUmbrella { get; set; }

        [JsonProperty("bear")]
        public string Bear { get; set; }

        [JsonProperty("bed")]
        public string Bed { get; set; }

        [JsonProperty("bee")]
        public string Bee { get; set; }

        [JsonProperty("beer")]
        public string Beer { get; set; }

        [JsonProperty("beers")]
        public string Beers { get; set; }

        [JsonProperty("beetle")]
        public string Beetle { get; set; }

        [JsonProperty("beginner")]
        public string Beginner { get; set; }

        [JsonProperty("belarus")]
        public string Belarus { get; set; }

        [JsonProperty("belgium")]
        public string Belgium { get; set; }

        [JsonProperty("belize")]
        public string Belize { get; set; }

        [JsonProperty("bell")]
        public string Bell { get; set; }

        [JsonProperty("bellhop_bell")]
        public string BellhopBell { get; set; }

        [JsonProperty("benin")]
        public string Benin { get; set; }

        [JsonProperty("bento")]
        public string Bento { get; set; }

        [JsonProperty("bermuda")]
        public string Bermuda { get; set; }

        [JsonProperty("bhutan")]
        public string Bhutan { get; set; }

        [JsonProperty("bicyclist")]
        public string Bicyclist { get; set; }

        [JsonProperty("bike")]
        public string Bike { get; set; }

        [JsonProperty("biking_man")]
        public string BikingMan { get; set; }

        [JsonProperty("biking_woman")]
        public string BikingWoman { get; set; }

        [JsonProperty("bikini")]
        public string Bikini { get; set; }

        [JsonProperty("biohazard")]
        public string Biohazard { get; set; }

        [JsonProperty("bird")]
        public string Bird { get; set; }

        [JsonProperty("birthday")]
        public string Birthday { get; set; }

        [JsonProperty("black_circle")]
        public string BlackCircle { get; set; }

        [JsonProperty("black_flag")]
        public string BlackFlag { get; set; }

        [JsonProperty("black_heart")]
        public string BlackHeart { get; set; }

        [JsonProperty("black_joker")]
        public string BlackJoker { get; set; }

        [JsonProperty("black_large_square")]
        public string BlackLargeSquare { get; set; }

        [JsonProperty("black_medium_small_square")]
        public string BlackMediumSmallSquare { get; set; }

        [JsonProperty("black_medium_square")]
        public string BlackMediumSquare { get; set; }

        [JsonProperty("black_nib")]
        public string BlackNib { get; set; }

        [JsonProperty("black_small_square")]
        public string BlackSmallSquare { get; set; }

        [JsonProperty("black_square_button")]
        public string BlackSquareButton { get; set; }

        [JsonProperty("blonde_man")]
        public string BlondeMan { get; set; }

        [JsonProperty("blonde_woman")]
        public string BlondeWoman { get; set; }

        [JsonProperty("blossom")]
        public string Blossom { get; set; }

        [JsonProperty("blowfish")]
        public string Blowfish { get; set; }

        [JsonProperty("blue_book")]
        public string BlueBook { get; set; }

        [JsonProperty("blue_car")]
        public string BlueCar { get; set; }

        [JsonProperty("blue_heart")]
        public string BlueHeart { get; set; }

        [JsonProperty("blush")]
        public string Blush { get; set; }

        [JsonProperty("boar")]
        public string Boar { get; set; }

        [JsonProperty("boat")]
        public string Boat { get; set; }

        [JsonProperty("bolivia")]
        public string Bolivia { get; set; }

        [JsonProperty("bomb")]
        public string Bomb { get; set; }

        [JsonProperty("book")]
        public string Book { get; set; }

        [JsonProperty("bookmark")]
        public string Bookmark { get; set; }

        [JsonProperty("bookmark_tabs")]
        public string BookmarkTabs { get; set; }

        [JsonProperty("books")]
        public string Books { get; set; }

        [JsonProperty("boom")]
        public string Boom { get; set; }

        [JsonProperty("boot")]
        public string Boot { get; set; }

        [JsonProperty("bosnia_herzegovina")]
        public string BosniaHerzegovina { get; set; }

        [JsonProperty("botswana")]
        public string Botswana { get; set; }

        [JsonProperty("bouquet")]
        public string Bouquet { get; set; }

        [JsonProperty("bow")]
        public string Bow { get; set; }

        [JsonProperty("bow_and_arrow")]
        public string BowAndArrow { get; set; }

        [JsonProperty("bowing_man")]
        public string BowingMan { get; set; }

        [JsonProperty("bowing_woman")]
        public string BowingWoman { get; set; }

        [JsonProperty("bowling")]
        public string Bowling { get; set; }

        [JsonProperty("bowtie")]
        public string Bowtie { get; set; }

        [JsonProperty("boxing_glove")]
        public string BoxingGlove { get; set; }

        [JsonProperty("boy")]
        public string Boy { get; set; }

        [JsonProperty("brazil")]
        public string Brazil { get; set; }

        [JsonProperty("bread")]
        public string Bread { get; set; }

        [JsonProperty("bride_with_veil")]
        public string BrideWithVeil { get; set; }

        [JsonProperty("bridge_at_night")]
        public string BridgeAtNight { get; set; }

        [JsonProperty("briefcase")]
        public string Briefcase { get; set; }

        [JsonProperty("british_indian_ocean_territory")]
        public string BritishIndianOceanTerritory { get; set; }

        [JsonProperty("british_virgin_islands")]
        public string BritishVirginIslands { get; set; }

        [JsonProperty("broken_heart")]
        public string BrokenHeart { get; set; }

        [JsonProperty("brunei")]
        public string Brunei { get; set; }

        [JsonProperty("bug")]
        public string Bug { get; set; }

        [JsonProperty("building_construction")]
        public string BuildingConstruction { get; set; }

        [JsonProperty("bulb")]
        public string Bulb { get; set; }

        [JsonProperty("bulgaria")]
        public string Bulgaria { get; set; }

        [JsonProperty("bullettrain_front")]
        public string BullettrainFront { get; set; }

        [JsonProperty("bullettrain_side")]
        public string BullettrainSide { get; set; }

        [JsonProperty("burkina_faso")]
        public string BurkinaFaso { get; set; }

        [JsonProperty("burrito")]
        public string Burrito { get; set; }

        [JsonProperty("burundi")]
        public string Burundi { get; set; }

        [JsonProperty("bus")]
        public string Bus { get; set; }

        [JsonProperty("business_suit_levitating")]
        public string BusinessSuitLevitating { get; set; }

        [JsonProperty("busstop")]
        public string Busstop { get; set; }

        [JsonProperty("bust_in_silhouette")]
        public string BustInSilhouette { get; set; }

        [JsonProperty("busts_in_silhouette")]
        public string BustsInSilhouette { get; set; }

        [JsonProperty("butterfly")]
        public string Butterfly { get; set; }

        [JsonProperty("cactus")]
        public string Cactus { get; set; }

        [JsonProperty("cake")]
        public string Cake { get; set; }

        [JsonProperty("calendar")]
        public string Calendar { get; set; }

        [JsonProperty("call_me_hand")]
        public string CallMeHand { get; set; }

        [JsonProperty("calling")]
        public string Calling { get; set; }

        [JsonProperty("cambodia")]
        public string Cambodia { get; set; }

        [JsonProperty("camel")]
        public string Camel { get; set; }

        [JsonProperty("camera")]
        public string Camera { get; set; }

        [JsonProperty("camera_flash")]
        public string CameraFlash { get; set; }

        [JsonProperty("cameroon")]
        public string Cameroon { get; set; }

        [JsonProperty("camping")]
        public string Camping { get; set; }

        [JsonProperty("canada")]
        public string Canada { get; set; }

        [JsonProperty("canary_islands")]
        public string CanaryIslands { get; set; }

        [JsonProperty("cancer")]
        public string Cancer { get; set; }

        [JsonProperty("candle")]
        public string Candle { get; set; }

        [JsonProperty("candy")]
        public string Candy { get; set; }

        [JsonProperty("canoe")]
        public string Canoe { get; set; }

        [JsonProperty("cape_verde")]
        public string CapeVerde { get; set; }

        [JsonProperty("capital_abcd")]
        public string CapitalAbcd { get; set; }

        [JsonProperty("capricorn")]
        public string Capricorn { get; set; }

        [JsonProperty("car")]
        public string Car { get; set; }

        [JsonProperty("card_file_box")]
        public string CardFileBox { get; set; }

        [JsonProperty("card_index")]
        public string CardIndex { get; set; }

        [JsonProperty("card_index_dividers")]
        public string CardIndexDividers { get; set; }

        [JsonProperty("caribbean_netherlands")]
        public string CaribbeanNetherlands { get; set; }

        [JsonProperty("carousel_horse")]
        public string CarouselHorse { get; set; }

        [JsonProperty("carrot")]
        public string Carrot { get; set; }

        [JsonProperty("cat")]
        public string Cat { get; set; }

        [JsonProperty("cat2")]
        public string Cat2 { get; set; }

        [JsonProperty("cayman_islands")]
        public string CaymanIslands { get; set; }

        [JsonProperty("cd")]
        public string Cd { get; set; }

        [JsonProperty("central_african_republic")]
        public string CentralAfricanRepublic { get; set; }

        [JsonProperty("chad")]
        public string Chad { get; set; }

        [JsonProperty("chains")]
        public string Chains { get; set; }

        [JsonProperty("champagne")]
        public string Champagne { get; set; }

        [JsonProperty("chart")]
        public string Chart { get; set; }

        [JsonProperty("chart_with_downwards_trend")]
        public string ChartWithDownwardsTrend { get; set; }

        [JsonProperty("chart_with_upwards_trend")]
        public string ChartWithUpwardsTrend { get; set; }

        [JsonProperty("checkered_flag")]
        public string CheckeredFlag { get; set; }

        [JsonProperty("cheese")]
        public string Cheese { get; set; }

        [JsonProperty("cherries")]
        public string Cherries { get; set; }

        [JsonProperty("cherry_blossom")]
        public string CherryBlossom { get; set; }

        [JsonProperty("chestnut")]
        public string Chestnut { get; set; }

        [JsonProperty("chicken")]
        public string Chicken { get; set; }

        [JsonProperty("children_crossing")]
        public string ChildrenCrossing { get; set; }

        [JsonProperty("chile")]
        public string Chile { get; set; }

        [JsonProperty("chipmunk")]
        public string Chipmunk { get; set; }

        [JsonProperty("chocolate_bar")]
        public string ChocolateBar { get; set; }

        [JsonProperty("christmas_island")]
        public string ChristmasIsland { get; set; }

        [JsonProperty("christmas_tree")]
        public string ChristmasTree { get; set; }

        [JsonProperty("church")]
        public string Church { get; set; }

        [JsonProperty("cinema")]
        public string Cinema { get; set; }

        [JsonProperty("circus_tent")]
        public string CircusTent { get; set; }

        [JsonProperty("city_sunrise")]
        public string CitySunrise { get; set; }

        [JsonProperty("city_sunset")]
        public string CitySunset { get; set; }

        [JsonProperty("cityscape")]
        public string Cityscape { get; set; }

        [JsonProperty("cl")]
        public string Cl { get; set; }

        [JsonProperty("clamp")]
        public string Clamp { get; set; }

        [JsonProperty("clap")]
        public string Clap { get; set; }

        [JsonProperty("clapper")]
        public string Clapper { get; set; }

        [JsonProperty("classical_building")]
        public string ClassicalBuilding { get; set; }

        [JsonProperty("clinking_glasses")]
        public string ClinkingGlasses { get; set; }

        [JsonProperty("clipboard")]
        public string Clipboard { get; set; }

        [JsonProperty("clock1")]
        public string Clock1 { get; set; }

        [JsonProperty("clock10")]
        public string Clock10 { get; set; }

        [JsonProperty("clock1030")]
        public string Clock1030 { get; set; }

        [JsonProperty("clock11")]
        public string Clock11 { get; set; }

        [JsonProperty("clock1130")]
        public string Clock1130 { get; set; }

        [JsonProperty("clock12")]
        public string Clock12 { get; set; }

        [JsonProperty("clock1230")]
        public string Clock1230 { get; set; }

        [JsonProperty("clock130")]
        public string Clock130 { get; set; }

        [JsonProperty("clock2")]
        public string Clock2 { get; set; }

        [JsonProperty("clock230")]
        public string Clock230 { get; set; }

        [JsonProperty("clock3")]
        public string Clock3 { get; set; }

        [JsonProperty("clock330")]
        public string Clock330 { get; set; }

        [JsonProperty("clock4")]
        public string Clock4 { get; set; }

        [JsonProperty("clock430")]
        public string Clock430 { get; set; }

        [JsonProperty("clock5")]
        public string Clock5 { get; set; }

        [JsonProperty("clock530")]
        public string Clock530 { get; set; }

        [JsonProperty("clock6")]
        public string Clock6 { get; set; }

        [JsonProperty("clock630")]
        public string Clock630 { get; set; }

        [JsonProperty("clock7")]
        public string Clock7 { get; set; }

        [JsonProperty("clock730")]
        public string Clock730 { get; set; }

        [JsonProperty("clock8")]
        public string Clock8 { get; set; }

        [JsonProperty("clock830")]
        public string Clock830 { get; set; }

        [JsonProperty("clock9")]
        public string Clock9 { get; set; }

        [JsonProperty("clock930")]
        public string Clock930 { get; set; }

        [JsonProperty("closed_book")]
        public string ClosedBook { get; set; }

        [JsonProperty("closed_lock_with_key")]
        public string ClosedLockWithKey { get; set; }

        [JsonProperty("closed_umbrella")]
        public string ClosedUmbrella { get; set; }

        [JsonProperty("cloud")]
        public string Cloud { get; set; }

        [JsonProperty("cloud_with_lightning")]
        public string CloudWithLightning { get; set; }

        [JsonProperty("cloud_with_lightning_and_rain")]
        public string CloudWithLightningAndRain { get; set; }

        [JsonProperty("cloud_with_rain")]
        public string CloudWithRain { get; set; }

        [JsonProperty("cloud_with_snow")]
        public string CloudWithSnow { get; set; }

        [JsonProperty("clown_face")]
        public string ClownFace { get; set; }

        [JsonProperty("clubs")]
        public string Clubs { get; set; }

        [JsonProperty("cn")]
        public string Cn { get; set; }

        [JsonProperty("cocktail")]
        public string Cocktail { get; set; }

        [JsonProperty("cocos_islands")]
        public string CocosIslands { get; set; }

        [JsonProperty("coffee")]
        public string Coffee { get; set; }

        [JsonProperty("coffin")]
        public string Coffin { get; set; }

        [JsonProperty("cold_sweat")]
        public string ColdSweat { get; set; }

        [JsonProperty("collision")]
        public string Collision { get; set; }

        [JsonProperty("colombia")]
        public string Colombia { get; set; }

        [JsonProperty("comet")]
        public string Comet { get; set; }

        [JsonProperty("comoros")]
        public string Comoros { get; set; }

        [JsonProperty("computer")]
        public string Computer { get; set; }

        [JsonProperty("computer_mouse")]
        public string ComputerMouse { get; set; }

        [JsonProperty("confetti_ball")]
        public string ConfettiBall { get; set; }

        [JsonProperty("confounded")]
        public string Confounded { get; set; }

        [JsonProperty("confused")]
        public string Confused { get; set; }

        [JsonProperty("congo_brazzaville")]
        public string CongoBrazzaville { get; set; }

        [JsonProperty("congo_kinshasa")]
        public string CongoKinshasa { get; set; }

        [JsonProperty("congratulations")]
        public string Congratulations { get; set; }

        [JsonProperty("construction")]
        public string Construction { get; set; }

        [JsonProperty("construction_worker")]
        public string ConstructionWorker { get; set; }

        [JsonProperty("construction_worker_man")]
        public string ConstructionWorkerMan { get; set; }

        [JsonProperty("construction_worker_woman")]
        public string ConstructionWorkerWoman { get; set; }

        [JsonProperty("control_knobs")]
        public string ControlKnobs { get; set; }

        [JsonProperty("convenience_store")]
        public string ConvenienceStore { get; set; }

        [JsonProperty("cook_islands")]
        public string CookIslands { get; set; }

        [JsonProperty("cookie")]
        public string Cookie { get; set; }

        [JsonProperty("cool")]
        public string Cool { get; set; }

        [JsonProperty("cop")]
        public string Cop { get; set; }

        [JsonProperty("copyright")]
        public string Copyright { get; set; }

        [JsonProperty("corn")]
        public string Corn { get; set; }

        [JsonProperty("costa_rica")]
        public string CostaRica { get; set; }

        [JsonProperty("cote_divoire")]
        public string CoteDivoire { get; set; }

        [JsonProperty("couch_and_lamp")]
        public string CouchAndLamp { get; set; }

        [JsonProperty("couple")]
        public string Couple { get; set; }

        [JsonProperty("couple_with_heart")]
        public string CoupleWithHeart { get; set; }

        [JsonProperty("couple_with_heart_man_man")]
        public string CoupleWithHeartManMan { get; set; }

        [JsonProperty("couple_with_heart_woman_man")]
        public string CoupleWithHeartWomanMan { get; set; }

        [JsonProperty("couple_with_heart_woman_woman")]
        public string CoupleWithHeartWomanWoman { get; set; }

        [JsonProperty("couplekiss_man_man")]
        public string CouplekissManMan { get; set; }

        [JsonProperty("couplekiss_man_woman")]
        public string CouplekissManWoman { get; set; }

        [JsonProperty("couplekiss_woman_woman")]
        public string CouplekissWomanWoman { get; set; }

        [JsonProperty("cow")]
        public string Cow { get; set; }

        [JsonProperty("cow2")]
        public string Cow2 { get; set; }

        [JsonProperty("cowboy_hat_face")]
        public string CowboyHatFace { get; set; }

        [JsonProperty("crab")]
        public string Crab { get; set; }

        [JsonProperty("crayon")]
        public string Crayon { get; set; }

        [JsonProperty("credit_card")]
        public string CreditCard { get; set; }

        [JsonProperty("crescent_moon")]
        public string CrescentMoon { get; set; }

        [JsonProperty("cricket")]
        public string Cricket { get; set; }

        [JsonProperty("croatia")]
        public string Croatia { get; set; }

        [JsonProperty("crocodile")]
        public string Crocodile { get; set; }

        [JsonProperty("croissant")]
        public string Croissant { get; set; }

        [JsonProperty("crossed_fingers")]
        public string CrossedFingers { get; set; }

        [JsonProperty("crossed_flags")]
        public string CrossedFlags { get; set; }

        [JsonProperty("crossed_swords")]
        public string CrossedSwords { get; set; }

        [JsonProperty("crown")]
        public string Crown { get; set; }

        [JsonProperty("cry")]
        public string Cry { get; set; }

        [JsonProperty("crying_cat_face")]
        public string CryingCatFace { get; set; }

        [JsonProperty("crystal_ball")]
        public string CrystalBall { get; set; }

        [JsonProperty("cuba")]
        public string Cuba { get; set; }

        [JsonProperty("cucumber")]
        public string Cucumber { get; set; }

        [JsonProperty("cupid")]
        public string Cupid { get; set; }

        [JsonProperty("curacao")]
        public string Curacao { get; set; }

        [JsonProperty("curly_loop")]
        public string CurlyLoop { get; set; }

        [JsonProperty("currency_exchange")]
        public string CurrencyExchange { get; set; }

        [JsonProperty("curry")]
        public string Curry { get; set; }

        [JsonProperty("custard")]
        public string Custard { get; set; }

        [JsonProperty("customs")]
        public string Customs { get; set; }

        [JsonProperty("cyclone")]
        public string Cyclone { get; set; }

        [JsonProperty("cyprus")]
        public string Cyprus { get; set; }

        [JsonProperty("czech_republic")]
        public string CzechRepublic { get; set; }

        [JsonProperty("dagger")]
        public string Dagger { get; set; }

        [JsonProperty("dancer")]
        public string Dancer { get; set; }

        [JsonProperty("dancers")]
        public string Dancers { get; set; }

        [JsonProperty("dancing_men")]
        public string DancingMen { get; set; }

        [JsonProperty("dancing_women")]
        public string DancingWomen { get; set; }

        [JsonProperty("dango")]
        public string Dango { get; set; }

        [JsonProperty("dark_sunglasses")]
        public string DarkSunglasses { get; set; }

        [JsonProperty("dart")]
        public string Dart { get; set; }

        [JsonProperty("dash")]
        public string Dash { get; set; }

        [JsonProperty("date")]
        public string Date { get; set; }

        [JsonProperty("de")]
        public string De { get; set; }

        [JsonProperty("deciduous_tree")]
        public string DeciduousTree { get; set; }

        [JsonProperty("deer")]
        public string Deer { get; set; }

        [JsonProperty("denmark")]
        public string Denmark { get; set; }

        [JsonProperty("department_store")]
        public string DepartmentStore { get; set; }

        [JsonProperty("derelict_house")]
        public string DerelictHouse { get; set; }

        [JsonProperty("desert")]
        public string Desert { get; set; }

        [JsonProperty("desert_island")]
        public string DesertIsland { get; set; }

        [JsonProperty("desktop_computer")]
        public string DesktopComputer { get; set; }

        [JsonProperty("detective")]
        public string Detective { get; set; }

        [JsonProperty("diamond_shape_with_a_dot_inside")]
        public string DiamondShapeWithADotInside { get; set; }

        [JsonProperty("diamonds")]
        public string Diamonds { get; set; }

        [JsonProperty("disappointed")]
        public string Disappointed { get; set; }

        [JsonProperty("disappointed_relieved")]
        public string DisappointedRelieved { get; set; }

        [JsonProperty("dizzy")]
        public string Dizzy { get; set; }

        [JsonProperty("dizzy_face")]
        public string DizzyFace { get; set; }

        [JsonProperty("djibouti")]
        public string Djibouti { get; set; }

        [JsonProperty("do_not_litter")]
        public string DoNotLitter { get; set; }

        [JsonProperty("dog")]
        public string Dog { get; set; }

        [JsonProperty("dog2")]
        public string Dog2 { get; set; }

        [JsonProperty("dollar")]
        public string Dollar { get; set; }

        [JsonProperty("dolls")]
        public string Dolls { get; set; }

        [JsonProperty("dolphin")]
        public string Dolphin { get; set; }

        [JsonProperty("dominica")]
        public string Dominica { get; set; }

        [JsonProperty("dominican_republic")]
        public string DominicanRepublic { get; set; }

        [JsonProperty("door")]
        public string Door { get; set; }

        [JsonProperty("doughnut")]
        public string Doughnut { get; set; }

        [JsonProperty("dove")]
        public string Dove { get; set; }

        [JsonProperty("dragon")]
        public string Dragon { get; set; }

        [JsonProperty("dragon_face")]
        public string DragonFace { get; set; }

        [JsonProperty("dress")]
        public string Dress { get; set; }

        [JsonProperty("dromedary_camel")]
        public string DromedaryCamel { get; set; }

        [JsonProperty("drooling_face")]
        public string DroolingFace { get; set; }

        [JsonProperty("droplet")]
        public string Droplet { get; set; }

        [JsonProperty("drum")]
        public string Drum { get; set; }

        [JsonProperty("duck")]
        public string Duck { get; set; }

        [JsonProperty("dvd")]
        public string Dvd { get; set; }

        [JsonProperty("e-mail")]
        public string EMail { get; set; }

        [JsonProperty("eagle")]
        public string Eagle { get; set; }

        [JsonProperty("ear")]
        public string Ear { get; set; }

        [JsonProperty("ear_of_rice")]
        public string EarOfRice { get; set; }

        [JsonProperty("earth_africa")]
        public string EarthAfrica { get; set; }

        [JsonProperty("earth_americas")]
        public string EarthAmericas { get; set; }

        [JsonProperty("earth_asia")]
        public string EarthAsia { get; set; }

        [JsonProperty("ecuador")]
        public string Ecuador { get; set; }

        [JsonProperty("egg")]
        public string Egg { get; set; }

        [JsonProperty("eggplant")]
        public string Eggplant { get; set; }

        [JsonProperty("egypt")]
        public string Egypt { get; set; }

        [JsonProperty("eight")]
        public string Eight { get; set; }

        [JsonProperty("eight_pointed_black_star")]
        public string EightPointedBlackStar { get; set; }

        [JsonProperty("eight_spoked_asterisk")]
        public string EightSpokedAsterisk { get; set; }

        [JsonProperty("el_salvador")]
        public string ElSalvador { get; set; }

        [JsonProperty("electric_plug")]
        public string ElectricPlug { get; set; }

        [JsonProperty("electron")]
        public string Electron { get; set; }

        [JsonProperty("elephant")]
        public string Elephant { get; set; }

        [JsonProperty("email")]
        public string Email { get; set; }

        [JsonProperty("end")]
        public string End { get; set; }

        [JsonProperty("envelope")]
        public string Envelope { get; set; }

        [JsonProperty("envelope_with_arrow")]
        public string EnvelopeWithArrow { get; set; }

        [JsonProperty("equatorial_guinea")]
        public string EquatorialGuinea { get; set; }

        [JsonProperty("eritrea")]
        public string Eritrea { get; set; }

        [JsonProperty("es")]
        public string Es { get; set; }

        [JsonProperty("estonia")]
        public string Estonia { get; set; }

        [JsonProperty("ethiopia")]
        public string Ethiopia { get; set; }

        [JsonProperty("eu")]
        public string Eu { get; set; }

        [JsonProperty("euro")]
        public string Euro { get; set; }

        [JsonProperty("european_castle")]
        public string EuropeanCastle { get; set; }

        [JsonProperty("european_post_office")]
        public string EuropeanPostOffice { get; set; }

        [JsonProperty("european_union")]
        public string EuropeanUnion { get; set; }

        [JsonProperty("evergreen_tree")]
        public string EvergreenTree { get; set; }

        [JsonProperty("exclamation")]
        public string Exclamation { get; set; }

        [JsonProperty("expressionless")]
        public string Expressionless { get; set; }

        [JsonProperty("eye")]
        public string Eye { get; set; }

        [JsonProperty("eye_speech_bubble")]
        public string EyeSpeechBubble { get; set; }

        [JsonProperty("eyeglasses")]
        public string Eyeglasses { get; set; }

        [JsonProperty("eyes")]
        public string Eyes { get; set; }

        [JsonProperty("face_with_head_bandage")]
        public string FaceWithHeadBandage { get; set; }

        [JsonProperty("face_with_thermometer")]
        public string FaceWithThermometer { get; set; }

        [JsonProperty("facepunch")]
        public string Facepunch { get; set; }

        [JsonProperty("factory")]
        public string Factory { get; set; }

        [JsonProperty("falkland_islands")]
        public string FalklandIslands { get; set; }

        [JsonProperty("fallen_leaf")]
        public string FallenLeaf { get; set; }

        [JsonProperty("family")]
        public string Family { get; set; }

        [JsonProperty("family_man_boy")]
        public string FamilyManBoy { get; set; }

        [JsonProperty("family_man_boy_boy")]
        public string FamilyManBoyBoy { get; set; }

        [JsonProperty("family_man_girl")]
        public string FamilyManGirl { get; set; }

        [JsonProperty("family_man_girl_boy")]
        public string FamilyManGirlBoy { get; set; }

        [JsonProperty("family_man_girl_girl")]
        public string FamilyManGirlGirl { get; set; }

        [JsonProperty("family_man_man_boy")]
        public string FamilyManManBoy { get; set; }

        [JsonProperty("family_man_man_boy_boy")]
        public string FamilyManManBoyBoy { get; set; }

        [JsonProperty("family_man_man_girl")]
        public string FamilyManManGirl { get; set; }

        [JsonProperty("family_man_man_girl_boy")]
        public string FamilyManManGirlBoy { get; set; }

        [JsonProperty("family_man_man_girl_girl")]
        public string FamilyManManGirlGirl { get; set; }

        [JsonProperty("family_man_woman_boy")]
        public string FamilyManWomanBoy { get; set; }

        [JsonProperty("family_man_woman_boy_boy")]
        public string FamilyManWomanBoyBoy { get; set; }

        [JsonProperty("family_man_woman_girl")]
        public string FamilyManWomanGirl { get; set; }

        [JsonProperty("family_man_woman_girl_boy")]
        public string FamilyManWomanGirlBoy { get; set; }

        [JsonProperty("family_man_woman_girl_girl")]
        public string FamilyManWomanGirlGirl { get; set; }

        [JsonProperty("family_woman_boy")]
        public string FamilyWomanBoy { get; set; }

        [JsonProperty("family_woman_boy_boy")]
        public string FamilyWomanBoyBoy { get; set; }

        [JsonProperty("family_woman_girl")]
        public string FamilyWomanGirl { get; set; }

        [JsonProperty("family_woman_girl_boy")]
        public string FamilyWomanGirlBoy { get; set; }

        [JsonProperty("family_woman_girl_girl")]
        public string FamilyWomanGirlGirl { get; set; }

        [JsonProperty("family_woman_woman_boy")]
        public string FamilyWomanWomanBoy { get; set; }

        [JsonProperty("family_woman_woman_boy_boy")]
        public string FamilyWomanWomanBoyBoy { get; set; }

        [JsonProperty("family_woman_woman_girl")]
        public string FamilyWomanWomanGirl { get; set; }

        [JsonProperty("family_woman_woman_girl_boy")]
        public string FamilyWomanWomanGirlBoy { get; set; }

        [JsonProperty("family_woman_woman_girl_girl")]
        public string FamilyWomanWomanGirlGirl { get; set; }

        [JsonProperty("faroe_islands")]
        public string FaroeIslands { get; set; }

        [JsonProperty("fast_forward")]
        public string FastForward { get; set; }

        [JsonProperty("fax")]
        public string Fax { get; set; }

        [JsonProperty("fearful")]
        public string Fearful { get; set; }

        [JsonProperty("feelsgood")]
        public string Feelsgood { get; set; }

        [JsonProperty("feet")]
        public string Feet { get; set; }

        [JsonProperty("female_detective")]
        public string FemaleDetective { get; set; }

        [JsonProperty("ferris_wheel")]
        public string FerrisWheel { get; set; }

        [JsonProperty("ferry")]
        public string Ferry { get; set; }

        [JsonProperty("field_hockey")]
        public string FieldHockey { get; set; }

        [JsonProperty("fiji")]
        public string Fiji { get; set; }

        [JsonProperty("file_cabinet")]
        public string FileCabinet { get; set; }

        [JsonProperty("file_folder")]
        public string FileFolder { get; set; }

        [JsonProperty("film_projector")]
        public string FilmProjector { get; set; }

        [JsonProperty("film_strip")]
        public string FilmStrip { get; set; }

        [JsonProperty("finland")]
        public string Finland { get; set; }

        [JsonProperty("finnadie")]
        public string Finnadie { get; set; }

        [JsonProperty("fire")]
        public string Fire { get; set; }

        [JsonProperty("fire_engine")]
        public string FireEngine { get; set; }

        [JsonProperty("fireworks")]
        public string Fireworks { get; set; }

        [JsonProperty("first_quarter_moon")]
        public string FirstQuarterMoon { get; set; }

        [JsonProperty("first_quarter_moon_with_face")]
        public string FirstQuarterMoonWithFace { get; set; }

        [JsonProperty("fish")]
        public string Fish { get; set; }

        [JsonProperty("fish_cake")]
        public string FishCake { get; set; }

        [JsonProperty("fishing_pole_and_fish")]
        public string FishingPoleAndFish { get; set; }

        [JsonProperty("fist")]
        public string Fist { get; set; }

        [JsonProperty("fist_left")]
        public string FistLeft { get; set; }

        [JsonProperty("fist_oncoming")]
        public string FistOncoming { get; set; }

        [JsonProperty("fist_raised")]
        public string FistRaised { get; set; }

        [JsonProperty("fist_right")]
        public string FistRight { get; set; }

        [JsonProperty("five")]
        public string Five { get; set; }

        [JsonProperty("flags")]
        public string Flags { get; set; }

        [JsonProperty("flashlight")]
        public string Flashlight { get; set; }

        [JsonProperty("fleur_de_lis")]
        public string FleurDeLis { get; set; }

        [JsonProperty("flight_arrival")]
        public string FlightArrival { get; set; }

        [JsonProperty("flight_departure")]
        public string FlightDeparture { get; set; }

        [JsonProperty("flipper")]
        public string Flipper { get; set; }

        [JsonProperty("floppy_disk")]
        public string FloppyDisk { get; set; }

        [JsonProperty("flower_playing_cards")]
        public string FlowerPlayingCards { get; set; }

        [JsonProperty("flushed")]
        public string Flushed { get; set; }

        [JsonProperty("fog")]
        public string Fog { get; set; }

        [JsonProperty("foggy")]
        public string Foggy { get; set; }

        [JsonProperty("football")]
        public string Football { get; set; }

        [JsonProperty("footprints")]
        public string Footprints { get; set; }

        [JsonProperty("fork_and_knife")]
        public string ForkAndKnife { get; set; }

        [JsonProperty("fountain")]
        public string Fountain { get; set; }

        [JsonProperty("fountain_pen")]
        public string FountainPen { get; set; }

        [JsonProperty("four")]
        public string Four { get; set; }

        [JsonProperty("four_leaf_clover")]
        public string FourLeafClover { get; set; }

        [JsonProperty("fox_face")]
        public string FoxFace { get; set; }

        [JsonProperty("fr")]
        public string Fr { get; set; }

        [JsonProperty("framed_picture")]
        public string FramedPicture { get; set; }

        [JsonProperty("free")]
        public string Free { get; set; }

        [JsonProperty("french_guiana")]
        public string FrenchGuiana { get; set; }

        [JsonProperty("french_polynesia")]
        public string FrenchPolynesia { get; set; }

        [JsonProperty("french_southern_territories")]
        public string FrenchSouthernTerritories { get; set; }

        [JsonProperty("fried_egg")]
        public string FriedEgg { get; set; }

        [JsonProperty("fried_shrimp")]
        public string FriedShrimp { get; set; }

        [JsonProperty("fries")]
        public string Fries { get; set; }

        [JsonProperty("frog")]
        public string Frog { get; set; }

        [JsonProperty("frowning")]
        public string Frowning { get; set; }

        [JsonProperty("frowning_face")]
        public string FrowningFace { get; set; }

        [JsonProperty("frowning_man")]
        public string FrowningMan { get; set; }

        [JsonProperty("frowning_woman")]
        public string FrowningWoman { get; set; }

        [JsonProperty("fu")]
        public string Fu { get; set; }

        [JsonProperty("fuelpump")]
        public string Fuelpump { get; set; }

        [JsonProperty("full_moon")]
        public string FullMoon { get; set; }

        [JsonProperty("full_moon_with_face")]
        public string FullMoonWithFace { get; set; }

        [JsonProperty("funeral_urn")]
        public string FuneralUrn { get; set; }

        [JsonProperty("gabon")]
        public string Gabon { get; set; }

        [JsonProperty("gambia")]
        public string Gambia { get; set; }

        [JsonProperty("game_die")]
        public string GameDie { get; set; }

        [JsonProperty("gb")]
        public string Gb { get; set; }

        [JsonProperty("gear")]
        public string Gear { get; set; }

        [JsonProperty("gem")]
        public string Gem { get; set; }

        [JsonProperty("gemini")]
        public string Gemini { get; set; }

        [JsonProperty("georgia")]
        public string Georgia { get; set; }

        [JsonProperty("ghana")]
        public string Ghana { get; set; }

        [JsonProperty("ghost")]
        public string Ghost { get; set; }

        [JsonProperty("gibraltar")]
        public string Gibraltar { get; set; }

        [JsonProperty("gift")]
        public string Gift { get; set; }

        [JsonProperty("gift_heart")]
        public string GiftHeart { get; set; }

        [JsonProperty("girl")]
        public string Girl { get; set; }

        [JsonProperty("globe_with_meridians")]
        public string GlobeWithMeridians { get; set; }

        [JsonProperty("goal_net")]
        public string GoalNet { get; set; }

        [JsonProperty("goat")]
        public string Goat { get; set; }

        [JsonProperty("goberserk")]
        public string Goberserk { get; set; }

        [JsonProperty("godmode")]
        public string Godmode { get; set; }

        [JsonProperty("golf")]
        public string Golf { get; set; }

        [JsonProperty("golfing_man")]
        public string GolfingMan { get; set; }

        [JsonProperty("golfing_woman")]
        public string GolfingWoman { get; set; }

        [JsonProperty("gorilla")]
        public string Gorilla { get; set; }

        [JsonProperty("grapes")]
        public string Grapes { get; set; }

        [JsonProperty("greece")]
        public string Greece { get; set; }

        [JsonProperty("green_apple")]
        public string GreenApple { get; set; }

        [JsonProperty("green_book")]
        public string GreenBook { get; set; }

        [JsonProperty("green_heart")]
        public string GreenHeart { get; set; }

        [JsonProperty("green_salad")]
        public string GreenSalad { get; set; }

        [JsonProperty("greenland")]
        public string Greenland { get; set; }

        [JsonProperty("grenada")]
        public string Grenada { get; set; }

        [JsonProperty("grey_exclamation")]
        public string GreyExclamation { get; set; }

        [JsonProperty("grey_question")]
        public string GreyQuestion { get; set; }

        [JsonProperty("grimacing")]
        public string Grimacing { get; set; }

        [JsonProperty("grin")]
        public string Grin { get; set; }

        [JsonProperty("grinning")]
        public string Grinning { get; set; }

        [JsonProperty("guadeloupe")]
        public string Guadeloupe { get; set; }

        [JsonProperty("guam")]
        public string Guam { get; set; }

        [JsonProperty("guardsman")]
        public string Guardsman { get; set; }

        [JsonProperty("guardswoman")]
        public string Guardswoman { get; set; }

        [JsonProperty("guatemala")]
        public string Guatemala { get; set; }

        [JsonProperty("guernsey")]
        public string Guernsey { get; set; }

        [JsonProperty("guinea")]
        public string Guinea { get; set; }

        [JsonProperty("guinea_bissau")]
        public string GuineaBissau { get; set; }

        [JsonProperty("guitar")]
        public string Guitar { get; set; }

        [JsonProperty("gun")]
        public string Gun { get; set; }

        [JsonProperty("guyana")]
        public string Guyana { get; set; }

        [JsonProperty("haircut")]
        public string Haircut { get; set; }

        [JsonProperty("haircut_man")]
        public string HaircutMan { get; set; }

        [JsonProperty("haircut_woman")]
        public string HaircutWoman { get; set; }

        [JsonProperty("haiti")]
        public string Haiti { get; set; }

        [JsonProperty("hamburger")]
        public string Hamburger { get; set; }

        [JsonProperty("hammer")]
        public string Hammer { get; set; }

        [JsonProperty("hammer_and_pick")]
        public string HammerAndPick { get; set; }

        [JsonProperty("hammer_and_wrench")]
        public string HammerAndWrench { get; set; }

        [JsonProperty("hamster")]
        public string Hamster { get; set; }

        [JsonProperty("hand")]
        public string Hand { get; set; }

        [JsonProperty("handbag")]
        public string Handbag { get; set; }

        [JsonProperty("handshake")]
        public string Handshake { get; set; }

        [JsonProperty("hankey")]
        public string Hankey { get; set; }

        [JsonProperty("hash")]
        public string Hash { get; set; }

        [JsonProperty("hatched_chick")]
        public string HatchedChick { get; set; }

        [JsonProperty("hatching_chick")]
        public string HatchingChick { get; set; }

        [JsonProperty("headphones")]
        public string Headphones { get; set; }

        [JsonProperty("hear_no_evil")]
        public string HearNoEvil { get; set; }

        [JsonProperty("heart")]
        public string Heart { get; set; }

        [JsonProperty("heart_decoration")]
        public string HeartDecoration { get; set; }

        [JsonProperty("heart_eyes")]
        public string HeartEyes { get; set; }

        [JsonProperty("heart_eyes_cat")]
        public string HeartEyesCat { get; set; }

        [JsonProperty("heartbeat")]
        public string Heartbeat { get; set; }

        [JsonProperty("heartpulse")]
        public string Heartpulse { get; set; }

        [JsonProperty("hearts")]
        public string Hearts { get; set; }

        [JsonProperty("heavy_check_mark")]
        public string HeavyCheckMark { get; set; }

        [JsonProperty("heavy_division_sign")]
        public string HeavyDivisionSign { get; set; }

        [JsonProperty("heavy_dollar_sign")]
        public string HeavyDollarSign { get; set; }

        [JsonProperty("heavy_exclamation_mark")]
        public string HeavyExclamationMark { get; set; }

        [JsonProperty("heavy_heart_exclamation")]
        public string HeavyHeartExclamation { get; set; }

        [JsonProperty("heavy_minus_sign")]
        public string HeavyMinusSign { get; set; }

        [JsonProperty("heavy_multiplication_x")]
        public string HeavyMultiplicationX { get; set; }

        [JsonProperty("heavy_plus_sign")]
        public string HeavyPlusSign { get; set; }

        [JsonProperty("helicopter")]
        public string Helicopter { get; set; }

        [JsonProperty("herb")]
        public string Herb { get; set; }

        [JsonProperty("hibiscus")]
        public string Hibiscus { get; set; }

        [JsonProperty("high_brightness")]
        public string HighBrightness { get; set; }

        [JsonProperty("high_heel")]
        public string HighHeel { get; set; }

        [JsonProperty("hocho")]
        public string Hocho { get; set; }

        [JsonProperty("hole")]
        public string Hole { get; set; }

        [JsonProperty("honduras")]
        public string Honduras { get; set; }

        [JsonProperty("honey_pot")]
        public string HoneyPot { get; set; }

        [JsonProperty("honeybee")]
        public string Honeybee { get; set; }

        [JsonProperty("hong_kong")]
        public string HongKong { get; set; }

        [JsonProperty("horse")]
        public string Horse { get; set; }

        [JsonProperty("horse_racing")]
        public string HorseRacing { get; set; }

        [JsonProperty("hospital")]
        public string Hospital { get; set; }

        [JsonProperty("hot_pepper")]
        public string HotPepper { get; set; }

        [JsonProperty("hotdog")]
        public string Hotdog { get; set; }

        [JsonProperty("hotel")]
        public string Hotel { get; set; }

        [JsonProperty("hotsprings")]
        public string Hotsprings { get; set; }

        [JsonProperty("hourglass")]
        public string Hourglass { get; set; }

        [JsonProperty("hourglass_flowing_sand")]
        public string HourglassFlowingSand { get; set; }

        [JsonProperty("house")]
        public string House { get; set; }

        [JsonProperty("house_with_garden")]
        public string HouseWithGarden { get; set; }

        [JsonProperty("houses")]
        public string Houses { get; set; }

        [JsonProperty("hugs")]
        public string Hugs { get; set; }

        [JsonProperty("hungary")]
        public string Hungary { get; set; }

        [JsonProperty("hurtrealbad")]
        public string Hurtrealbad { get; set; }

        [JsonProperty("hushed")]
        public string Hushed { get; set; }

        [JsonProperty("ice_cream")]
        public string IceCream { get; set; }

        [JsonProperty("ice_hockey")]
        public string IceHockey { get; set; }

        [JsonProperty("ice_skate")]
        public string IceSkate { get; set; }

        [JsonProperty("icecream")]
        public string Icecream { get; set; }

        [JsonProperty("iceland")]
        public string Iceland { get; set; }

        [JsonProperty("id")]
        public string Id { get; set; }

        [JsonProperty("ideograph_advantage")]
        public string IdeographAdvantage { get; set; }

        [JsonProperty("imp")]
        public string Imp { get; set; }

        [JsonProperty("inbox_tray")]
        public string InboxTray { get; set; }

        [JsonProperty("incoming_envelope")]
        public string IncomingEnvelope { get; set; }

        [JsonProperty("india")]
        public string India { get; set; }

        [JsonProperty("indonesia")]
        public string Indonesia { get; set; }

        [JsonProperty("information_desk_person")]
        public string InformationDeskPerson { get; set; }

        [JsonProperty("information_source")]
        public string InformationSource { get; set; }

        [JsonProperty("innocent")]
        public string Innocent { get; set; }

        [JsonProperty("interrobang")]
        public string Interrobang { get; set; }

        [JsonProperty("iphone")]
        public string Iphone { get; set; }

        [JsonProperty("iran")]
        public string Iran { get; set; }

        [JsonProperty("iraq")]
        public string Iraq { get; set; }

        [JsonProperty("ireland")]
        public string Ireland { get; set; }

        [JsonProperty("isle_of_man")]
        public string IsleOfMan { get; set; }

        [JsonProperty("israel")]
        public string Israel { get; set; }

        [JsonProperty("it")]
        public string It { get; set; }

        [JsonProperty("izakaya_lantern")]
        public string IzakayaLantern { get; set; }

        [JsonProperty("jack_o_lantern")]
        public string JackOLantern { get; set; }

        [JsonProperty("jamaica")]
        public string Jamaica { get; set; }

        [JsonProperty("japan")]
        public string Japan { get; set; }

        [JsonProperty("japanese_castle")]
        public string JapaneseCastle { get; set; }

        [JsonProperty("japanese_goblin")]
        public string JapaneseGoblin { get; set; }

        [JsonProperty("japanese_ogre")]
        public string JapaneseOgre { get; set; }

        [JsonProperty("jeans")]
        public string Jeans { get; set; }

        [JsonProperty("jersey")]
        public string Jersey { get; set; }

        [JsonProperty("jordan")]
        public string Jordan { get; set; }

        [JsonProperty("joy")]
        public string Joy { get; set; }

        [JsonProperty("joy_cat")]
        public string JoyCat { get; set; }

        [JsonProperty("joystick")]
        public string Joystick { get; set; }

        [JsonProperty("jp")]
        public string Jp { get; set; }

        [JsonProperty("kaaba")]
        public string Kaaba { get; set; }

        [JsonProperty("kazakhstan")]
        public string Kazakhstan { get; set; }

        [JsonProperty("kenya")]
        public string Kenya { get; set; }

        [JsonProperty("key")]
        public string Key { get; set; }

        [JsonProperty("keyboard")]
        public string Keyboard { get; set; }

        [JsonProperty("keycap_ten")]
        public string KeycapTen { get; set; }

        [JsonProperty("kick_scooter")]
        public string KickScooter { get; set; }

        [JsonProperty("kimono")]
        public string Kimono { get; set; }

        [JsonProperty("kiribati")]
        public string Kiribati { get; set; }

        [JsonProperty("kiss")]
        public string Kiss { get; set; }

        [JsonProperty("kissing")]
        public string Kissing { get; set; }

        [JsonProperty("kissing_cat")]
        public string KissingCat { get; set; }

        [JsonProperty("kissing_closed_eyes")]
        public string KissingClosedEyes { get; set; }

        [JsonProperty("kissing_heart")]
        public string KissingHeart { get; set; }

        [JsonProperty("kissing_smiling_eyes")]
        public string KissingSmilingEyes { get; set; }

        [JsonProperty("kiwi_fruit")]
        public string KiwiFruit { get; set; }

        [JsonProperty("knife")]
        public string Knife { get; set; }

        [JsonProperty("koala")]
        public string Koala { get; set; }

        [JsonProperty("koko")]
        public string Koko { get; set; }

        [JsonProperty("kosovo")]
        public string Kosovo { get; set; }

        [JsonProperty("kr")]
        public string Kr { get; set; }

        [JsonProperty("kuwait")]
        public string Kuwait { get; set; }

        [JsonProperty("kyrgyzstan")]
        public string Kyrgyzstan { get; set; }

        [JsonProperty("label")]
        public string Label { get; set; }

        [JsonProperty("lantern")]
        public string Lantern { get; set; }

        [JsonProperty("laos")]
        public string Laos { get; set; }

        [JsonProperty("large_blue_circle")]
        public string LargeBlueCircle { get; set; }

        [JsonProperty("large_blue_diamond")]
        public string LargeBlueDiamond { get; set; }

        [JsonProperty("large_orange_diamond")]
        public string LargeOrangeDiamond { get; set; }

        [JsonProperty("last_quarter_moon")]
        public string LastQuarterMoon { get; set; }

        [JsonProperty("last_quarter_moon_with_face")]
        public string LastQuarterMoonWithFace { get; set; }

        [JsonProperty("latin_cross")]
        public string LatinCross { get; set; }

        [JsonProperty("latvia")]
        public string Latvia { get; set; }

        [JsonProperty("laughing")]
        public string Laughing { get; set; }

        [JsonProperty("leaves")]
        public string Leaves { get; set; }

        [JsonProperty("lebanon")]
        public string Lebanon { get; set; }

        [JsonProperty("ledger")]
        public string Ledger { get; set; }

        [JsonProperty("left_luggage")]
        public string LeftLuggage { get; set; }

        [JsonProperty("left_right_arrow")]
        public string LeftRightArrow { get; set; }

        [JsonProperty("leftwards_arrow_with_hook")]
        public string LeftwardsArrowWithHook { get; set; }

        [JsonProperty("lemon")]
        public string Lemon { get; set; }

        [JsonProperty("leo")]
        public string Leo { get; set; }

        [JsonProperty("leopard")]
        public string Leopard { get; set; }

        [JsonProperty("lesotho")]
        public string Lesotho { get; set; }

        [JsonProperty("level_slider")]
        public string LevelSlider { get; set; }

        [JsonProperty("liberia")]
        public string Liberia { get; set; }

        [JsonProperty("libra")]
        public string Libra { get; set; }

        [JsonProperty("libya")]
        public string Libya { get; set; }

        [JsonProperty("liechtenstein")]
        public string Liechtenstein { get; set; }

        [JsonProperty("light_rail")]
        public string LightRail { get; set; }

        [JsonProperty("link")]
        public string Link { get; set; }

        [JsonProperty("lion")]
        public string Lion { get; set; }

        [JsonProperty("lips")]
        public string Lips { get; set; }

        [JsonProperty("lipstick")]
        public string Lipstick { get; set; }

        [JsonProperty("lithuania")]
        public string Lithuania { get; set; }

        [JsonProperty("lizard")]
        public string Lizard { get; set; }

        [JsonProperty("lock")]
        public string Lock { get; set; }

        [JsonProperty("lock_with_ink_pen")]
        public string LockWithInkPen { get; set; }

        [JsonProperty("lollipop")]
        public string Lollipop { get; set; }

        [JsonProperty("loop")]
        public string Loop { get; set; }

        [JsonProperty("loud_sound")]
        public string LoudSound { get; set; }

        [JsonProperty("loudspeaker")]
        public string Loudspeaker { get; set; }

        [JsonProperty("love_hotel")]
        public string LoveHotel { get; set; }

        [JsonProperty("love_letter")]
        public string LoveLetter { get; set; }

        [JsonProperty("low_brightness")]
        public string LowBrightness { get; set; }

        [JsonProperty("luxembourg")]
        public string Luxembourg { get; set; }

        [JsonProperty("lying_face")]
        public string LyingFace { get; set; }

        [JsonProperty("m")]
        public string M { get; set; }

        [JsonProperty("macau")]
        public string Macau { get; set; }

        [JsonProperty("macedonia")]
        public string Macedonia { get; set; }

        [JsonProperty("madagascar")]
        public string Madagascar { get; set; }

        [JsonProperty("mag")]
        public string Mag { get; set; }

        [JsonProperty("mag_right")]
        public string MagRight { get; set; }

        [JsonProperty("mahjong")]
        public string Mahjong { get; set; }

        [JsonProperty("mailbox")]
        public string Mailbox { get; set; }

        [JsonProperty("mailbox_closed")]
        public string MailboxClosed { get; set; }

        [JsonProperty("mailbox_with_mail")]
        public string MailboxWithMail { get; set; }

        [JsonProperty("mailbox_with_no_mail")]
        public string MailboxWithNoMail { get; set; }

        [JsonProperty("malawi")]
        public string Malawi { get; set; }

        [JsonProperty("malaysia")]
        public string Malaysia { get; set; }

        [JsonProperty("maldives")]
        public string Maldives { get; set; }

        [JsonProperty("male_detective")]
        public string MaleDetective { get; set; }

        [JsonProperty("mali")]
        public string Mali { get; set; }

        [JsonProperty("malta")]
        public string Malta { get; set; }

        [JsonProperty("man")]
        public string Man { get; set; }

        [JsonProperty("man_artist")]
        public string ManArtist { get; set; }

        [JsonProperty("man_astronaut")]
        public string ManAstronaut { get; set; }

        [JsonProperty("man_cartwheeling")]
        public string ManCartwheeling { get; set; }

        [JsonProperty("man_cook")]
        public string ManCook { get; set; }

        [JsonProperty("man_dancing")]
        public string ManDancing { get; set; }

        [JsonProperty("man_facepalming")]
        public string ManFacepalming { get; set; }

        [JsonProperty("man_factory_worker")]
        public string ManFactoryWorker { get; set; }

        [JsonProperty("man_farmer")]
        public string ManFarmer { get; set; }

        [JsonProperty("man_firefighter")]
        public string ManFirefighter { get; set; }

        [JsonProperty("man_health_worker")]
        public string ManHealthWorker { get; set; }

        [JsonProperty("man_in_tuxedo")]
        public string ManInTuxedo { get; set; }

        [JsonProperty("man_judge")]
        public string ManJudge { get; set; }

        [JsonProperty("man_juggling")]
        public string ManJuggling { get; set; }

        [JsonProperty("man_mechanic")]
        public string ManMechanic { get; set; }

        [JsonProperty("man_office_worker")]
        public string ManOfficeWorker { get; set; }

        [JsonProperty("man_pilot")]
        public string ManPilot { get; set; }

        [JsonProperty("man_playing_handball")]
        public string ManPlayingHandball { get; set; }

        [JsonProperty("man_playing_water_polo")]
        public string ManPlayingWaterPolo { get; set; }

        [JsonProperty("man_scientist")]
        public string ManScientist { get; set; }

        [JsonProperty("man_shrugging")]
        public string ManShrugging { get; set; }

        [JsonProperty("man_singer")]
        public string ManSinger { get; set; }

        [JsonProperty("man_student")]
        public string ManStudent { get; set; }

        [JsonProperty("man_teacher")]
        public string ManTeacher { get; set; }

        [JsonProperty("man_technologist")]
        public string ManTechnologist { get; set; }

        [JsonProperty("man_with_gua_pi_mao")]
        public string ManWithGuaPiMao { get; set; }

        [JsonProperty("man_with_turban")]
        public string ManWithTurban { get; set; }

        [JsonProperty("mandarin")]
        public string Mandarin { get; set; }

        [JsonProperty("mans_shoe")]
        public string MansShoe { get; set; }

        [JsonProperty("mantelpiece_clock")]
        public string MantelpieceClock { get; set; }

        [JsonProperty("maple_leaf")]
        public string MapleLeaf { get; set; }

        [JsonProperty("marshall_islands")]
        public string MarshallIslands { get; set; }

        [JsonProperty("martial_arts_uniform")]
        public string MartialArtsUniform { get; set; }

        [JsonProperty("martinique")]
        public string Martinique { get; set; }

        [JsonProperty("mask")]
        public string Mask { get; set; }

        [JsonProperty("massage")]
        public string Massage { get; set; }

        [JsonProperty("massage_man")]
        public string MassageMan { get; set; }

        [JsonProperty("massage_woman")]
        public string MassageWoman { get; set; }

        [JsonProperty("mauritania")]
        public string Mauritania { get; set; }

        [JsonProperty("mauritius")]
        public string Mauritius { get; set; }

        [JsonProperty("mayotte")]
        public string Mayotte { get; set; }

        [JsonProperty("meat_on_bone")]
        public string MeatOnBone { get; set; }

        [JsonProperty("medal_military")]
        public string MedalMilitary { get; set; }

        [JsonProperty("medal_sports")]
        public string MedalSports { get; set; }

        [JsonProperty("mega")]
        public string Mega { get; set; }

        [JsonProperty("melon")]
        public string Melon { get; set; }

        [JsonProperty("memo")]
        public string Memo { get; set; }

        [JsonProperty("men_wrestling")]
        public string MenWrestling { get; set; }

        [JsonProperty("menorah")]
        public string Menorah { get; set; }

        [JsonProperty("mens")]
        public string Mens { get; set; }

        [JsonProperty("metal")]
        public string Metal { get; set; }

        [JsonProperty("metro")]
        public string Metro { get; set; }

        [JsonProperty("mexico")]
        public string Mexico { get; set; }

        [JsonProperty("micronesia")]
        public string Micronesia { get; set; }

        [JsonProperty("microphone")]
        public string Microphone { get; set; }

        [JsonProperty("microscope")]
        public string Microscope { get; set; }

        [JsonProperty("middle_finger")]
        public string MiddleFinger { get; set; }

        [JsonProperty("milk_glass")]
        public string MilkGlass { get; set; }

        [JsonProperty("milky_way")]
        public string MilkyWay { get; set; }

        [JsonProperty("minibus")]
        public string Minibus { get; set; }

        [JsonProperty("minidisc")]
        public string Minidisc { get; set; }

        [JsonProperty("mobile_phone_off")]
        public string MobilePhoneOff { get; set; }

        [JsonProperty("moldova")]
        public string Moldova { get; set; }

        [JsonProperty("monaco")]
        public string Monaco { get; set; }

        [JsonProperty("money_mouth_face")]
        public string MoneyMouthFace { get; set; }

        [JsonProperty("money_with_wings")]
        public string MoneyWithWings { get; set; }

        [JsonProperty("moneybag")]
        public string Moneybag { get; set; }

        [JsonProperty("mongolia")]
        public string Mongolia { get; set; }

        [JsonProperty("monkey")]
        public string Monkey { get; set; }

        [JsonProperty("monkey_face")]
        public string MonkeyFace { get; set; }

        [JsonProperty("monorail")]
        public string Monorail { get; set; }

        [JsonProperty("montenegro")]
        public string Montenegro { get; set; }

        [JsonProperty("montserrat")]
        public string Montserrat { get; set; }

        [JsonProperty("moon")]
        public string Moon { get; set; }

        [JsonProperty("morocco")]
        public string Morocco { get; set; }

        [JsonProperty("mortar_board")]
        public string MortarBoard { get; set; }

        [JsonProperty("mosque")]
        public string Mosque { get; set; }

        [JsonProperty("motor_boat")]
        public string MotorBoat { get; set; }

        [JsonProperty("motor_scooter")]
        public string MotorScooter { get; set; }

        [JsonProperty("motorcycle")]
        public string Motorcycle { get; set; }

        [JsonProperty("motorway")]
        public string Motorway { get; set; }

        [JsonProperty("mount_fuji")]
        public string MountFuji { get; set; }

        [JsonProperty("mountain")]
        public string Mountain { get; set; }

        [JsonProperty("mountain_bicyclist")]
        public string MountainBicyclist { get; set; }

        [JsonProperty("mountain_biking_man")]
        public string MountainBikingMan { get; set; }

        [JsonProperty("mountain_biking_woman")]
        public string MountainBikingWoman { get; set; }

        [JsonProperty("mountain_cableway")]
        public string MountainCableway { get; set; }

        [JsonProperty("mountain_railway")]
        public string MountainRailway { get; set; }

        [JsonProperty("mountain_snow")]
        public string MountainSnow { get; set; }

        [JsonProperty("mouse")]
        public string Mouse { get; set; }

        [JsonProperty("mouse2")]
        public string Mouse2 { get; set; }

        [JsonProperty("movie_camera")]
        public string MovieCamera { get; set; }

        [JsonProperty("moyai")]
        public string Moyai { get; set; }

        [JsonProperty("mozambique")]
        public string Mozambique { get; set; }

        [JsonProperty("mrs_claus")]
        public string MrsClaus { get; set; }

        [JsonProperty("muscle")]
        public string Muscle { get; set; }

        [JsonProperty("mushroom")]
        public string Mushroom { get; set; }

        [JsonProperty("musical_keyboard")]
        public string MusicalKeyboard { get; set; }

        [JsonProperty("musical_note")]
        public string MusicalNote { get; set; }

        [JsonProperty("musical_score")]
        public string MusicalScore { get; set; }

        [JsonProperty("mute")]
        public string Mute { get; set; }

        [JsonProperty("myanmar")]
        public string Myanmar { get; set; }

        [JsonProperty("nail_care")]
        public string NailCare { get; set; }

        [JsonProperty("name_badge")]
        public string NameBadge { get; set; }

        [JsonProperty("namibia")]
        public string Namibia { get; set; }

        [JsonProperty("national_park")]
        public string NationalPark { get; set; }

        [JsonProperty("nauru")]
        public string Nauru { get; set; }

        [JsonProperty("nauseated_face")]
        public string NauseatedFace { get; set; }

        [JsonProperty("neckbeard")]
        public string Neckbeard { get; set; }

        [JsonProperty("necktie")]
        public string Necktie { get; set; }

        [JsonProperty("negative_squared_cross_mark")]
        public string NegativeSquaredCrossMark { get; set; }

        [JsonProperty("nepal")]
        public string Nepal { get; set; }

        [JsonProperty("nerd_face")]
        public string NerdFace { get; set; }

        [JsonProperty("netherlands")]
        public string Netherlands { get; set; }

        [JsonProperty("neutral_face")]
        public string NeutralFace { get; set; }

        [JsonProperty("new")]
        public string New { get; set; }

        [JsonProperty("new_caledonia")]
        public string NewCaledonia { get; set; }

        [JsonProperty("new_moon")]
        public string NewMoon { get; set; }

        [JsonProperty("new_moon_with_face")]
        public string NewMoonWithFace { get; set; }

        [JsonProperty("new_zealand")]
        public string NewZealand { get; set; }

        [JsonProperty("newspaper")]
        public string Newspaper { get; set; }

        [JsonProperty("newspaper_roll")]
        public string NewspaperRoll { get; set; }

        [JsonProperty("next_track_button")]
        public string NextTrackButton { get; set; }

        [JsonProperty("ng")]
        public string Ng { get; set; }

        [JsonProperty("ng_man")]
        public string NgMan { get; set; }

        [JsonProperty("ng_woman")]
        public string NgWoman { get; set; }

        [JsonProperty("nicaragua")]
        public string Nicaragua { get; set; }

        [JsonProperty("niger")]
        public string Niger { get; set; }

        [JsonProperty("nigeria")]
        public string Nigeria { get; set; }

        [JsonProperty("night_with_stars")]
        public string NightWithStars { get; set; }

        [JsonProperty("nine")]
        public string Nine { get; set; }

        [JsonProperty("niue")]
        public string Niue { get; set; }

        [JsonProperty("no_bell")]
        public string NoBell { get; set; }

        [JsonProperty("no_bicycles")]
        public string NoBicycles { get; set; }

        [JsonProperty("no_entry")]
        public string NoEntry { get; set; }

        [JsonProperty("no_entry_sign")]
        public string NoEntrySign { get; set; }

        [JsonProperty("no_good")]
        public string NoGood { get; set; }

        [JsonProperty("no_good_man")]
        public string NoGoodMan { get; set; }

        [JsonProperty("no_good_woman")]
        public string NoGoodWoman { get; set; }

        [JsonProperty("no_mobile_phones")]
        public string NoMobilePhones { get; set; }

        [JsonProperty("no_mouth")]
        public string NoMouth { get; set; }

        [JsonProperty("no_pedestrians")]
        public string NoPedestrians { get; set; }

        [JsonProperty("no_smoking")]
        public string NoSmoking { get; set; }

        [JsonProperty("non-potable_water")]
        public string NonPotableWater { get; set; }

        [JsonProperty("norfolk_island")]
        public string NorfolkIsland { get; set; }

        [JsonProperty("north_korea")]
        public string NorthKorea { get; set; }

        [JsonProperty("northern_mariana_islands")]
        public string NorthernMarianaIslands { get; set; }

        [JsonProperty("norway")]
        public string Norway { get; set; }

        [JsonProperty("nose")]
        public string Nose { get; set; }

        [JsonProperty("notebook")]
        public string Notebook { get; set; }

        [JsonProperty("notebook_with_decorative_cover")]
        public string NotebookWithDecorativeCover { get; set; }

        [JsonProperty("notes")]
        public string Notes { get; set; }

        [JsonProperty("nut_and_bolt")]
        public string NutAndBolt { get; set; }

        [JsonProperty("o")]
        public string O { get; set; }

        [JsonProperty("o2")]
        public string O2 { get; set; }

        [JsonProperty("ocean")]
        public string Ocean { get; set; }

        [JsonProperty("octocat")]
        public string Octocat { get; set; }

        [JsonProperty("octopus")]
        public string Octopus { get; set; }

        [JsonProperty("oden")]
        public string Oden { get; set; }

        [JsonProperty("office")]
        public string Office { get; set; }

        [JsonProperty("oil_drum")]
        public string OilDrum { get; set; }

        [JsonProperty("ok")]
        public string Ok { get; set; }

        [JsonProperty("ok_hand")]
        public string OkHand { get; set; }

        [JsonProperty("ok_man")]
        public string OkMan { get; set; }

        [JsonProperty("ok_woman")]
        public string OkWoman { get; set; }

        [JsonProperty("old_key")]
        public string OldKey { get; set; }

        [JsonProperty("older_man")]
        public string OlderMan { get; set; }

        [JsonProperty("older_woman")]
        public string OlderWoman { get; set; }

        [JsonProperty("om")]
        public string Om { get; set; }

        [JsonProperty("oman")]
        public string Oman { get; set; }

        [JsonProperty("on")]
        public string On { get; set; }

        [JsonProperty("oncoming_automobile")]
        public string OncomingAutomobile { get; set; }

        [JsonProperty("oncoming_bus")]
        public string OncomingBus { get; set; }

        [JsonProperty("oncoming_police_car")]
        public string OncomingPoliceCar { get; set; }

        [JsonProperty("oncoming_taxi")]
        public string OncomingTaxi { get; set; }

        [JsonProperty("one")]
        public string One { get; set; }

        [JsonProperty("open_book")]
        public string OpenBook { get; set; }

        [JsonProperty("open_file_folder")]
        public string OpenFileFolder { get; set; }

        [JsonProperty("open_hands")]
        public string OpenHands { get; set; }

        [JsonProperty("open_mouth")]
        public string OpenMouth { get; set; }

        [JsonProperty("open_umbrella")]
        public string OpenUmbrella { get; set; }

        [JsonProperty("ophiuchus")]
        public string Ophiuchus { get; set; }

        [JsonProperty("orange")]
        public string Orange { get; set; }

        [JsonProperty("orange_book")]
        public string OrangeBook { get; set; }

        [JsonProperty("orthodox_cross")]
        public string OrthodoxCross { get; set; }

        [JsonProperty("outbox_tray")]
        public string OutboxTray { get; set; }

        [JsonProperty("owl")]
        public string Owl { get; set; }

        [JsonProperty("ox")]
        public string Ox { get; set; }

        [JsonProperty("package")]
        public string Package { get; set; }

        [JsonProperty("page_facing_up")]
        public string PageFacingUp { get; set; }

        [JsonProperty("page_with_curl")]
        public string PageWithCurl { get; set; }

        [JsonProperty("pager")]
        public string Pager { get; set; }

        [JsonProperty("paintbrush")]
        public string Paintbrush { get; set; }

        [JsonProperty("pakistan")]
        public string Pakistan { get; set; }

        [JsonProperty("palau")]
        public string Palau { get; set; }

        [JsonProperty("palestinian_territories")]
        public string PalestinianTerritories { get; set; }

        [JsonProperty("palm_tree")]
        public string PalmTree { get; set; }

        [JsonProperty("panama")]
        public string Panama { get; set; }

        [JsonProperty("pancakes")]
        public string Pancakes { get; set; }

        [JsonProperty("panda_face")]
        public string PandaFace { get; set; }

        [JsonProperty("paperclip")]
        public string Paperclip { get; set; }

        [JsonProperty("paperclips")]
        public string Paperclips { get; set; }

        [JsonProperty("papua_new_guinea")]
        public string PapuaNewGuinea { get; set; }

        [JsonProperty("paraguay")]
        public string Paraguay { get; set; }

        [JsonProperty("parasol_on_ground")]
        public string ParasolOnGround { get; set; }

        [JsonProperty("parking")]
        public string Parking { get; set; }

        [JsonProperty("part_alternation_mark")]
        public string PartAlternationMark { get; set; }

        [JsonProperty("partly_sunny")]
        public string PartlySunny { get; set; }

        [JsonProperty("passenger_ship")]
        public string PassengerShip { get; set; }

        [JsonProperty("passport_control")]
        public string PassportControl { get; set; }

        [JsonProperty("pause_button")]
        public string PauseButton { get; set; }

        [JsonProperty("paw_prints")]
        public string PawPrints { get; set; }

        [JsonProperty("peace_symbol")]
        public string PeaceSymbol { get; set; }

        [JsonProperty("peach")]
        public string Peach { get; set; }

        [JsonProperty("peanuts")]
        public string Peanuts { get; set; }

        [JsonProperty("pear")]
        public string Pear { get; set; }

        [JsonProperty("pen")]
        public string Pen { get; set; }

        [JsonProperty("pencil")]
        public string Pencil { get; set; }

        [JsonProperty("pencil2")]
        public string Pencil2 { get; set; }

        [JsonProperty("penguin")]
        public string Penguin { get; set; }

        [JsonProperty("pensive")]
        public string Pensive { get; set; }

        [JsonProperty("performing_arts")]
        public string PerformingArts { get; set; }

        [JsonProperty("persevere")]
        public string Persevere { get; set; }

        [JsonProperty("person_fencing")]
        public string PersonFencing { get; set; }

        [JsonProperty("person_frowning")]
        public string PersonFrowning { get; set; }

        [JsonProperty("person_with_blond_hair")]
        public string PersonWithBlondHair { get; set; }

        [JsonProperty("person_with_pouting_face")]
        public string PersonWithPoutingFace { get; set; }

        [JsonProperty("peru")]
        public string Peru { get; set; }

        [JsonProperty("philippines")]
        public string Philippines { get; set; }

        [JsonProperty("phone")]
        public string Phone { get; set; }

        [JsonProperty("pick")]
        public string Pick { get; set; }

        [JsonProperty("pig")]
        public string Pig { get; set; }

        [JsonProperty("pig2")]
        public string Pig2 { get; set; }

        [JsonProperty("pig_nose")]
        public string PigNose { get; set; }

        [JsonProperty("pill")]
        public string Pill { get; set; }

        [JsonProperty("pineapple")]
        public string Pineapple { get; set; }

        [JsonProperty("ping_pong")]
        public string PingPong { get; set; }

        [JsonProperty("pisces")]
        public string Pisces { get; set; }

        [JsonProperty("pitcairn_islands")]
        public string PitcairnIslands { get; set; }

        [JsonProperty("pizza")]
        public string Pizza { get; set; }

        [JsonProperty("place_of_worship")]
        public string PlaceOfWorship { get; set; }

        [JsonProperty("plate_with_cutlery")]
        public string PlateWithCutlery { get; set; }

        [JsonProperty("play_or_pause_button")]
        public string PlayOrPauseButton { get; set; }

        [JsonProperty("point_down")]
        public string PointDown { get; set; }

        [JsonProperty("point_left")]
        public string PointLeft { get; set; }

        [JsonProperty("point_right")]
        public string PointRight { get; set; }

        [JsonProperty("point_up")]
        public string PointUp { get; set; }

        [JsonProperty("point_up_2")]
        public string PointUp2 { get; set; }

        [JsonProperty("poland")]
        public string Poland { get; set; }

        [JsonProperty("police_car")]
        public string PoliceCar { get; set; }

        [JsonProperty("policeman")]
        public string Policeman { get; set; }

        [JsonProperty("policewoman")]
        public string Policewoman { get; set; }

        [JsonProperty("poodle")]
        public string Poodle { get; set; }

        [JsonProperty("poop")]
        public string Poop { get; set; }

        [JsonProperty("popcorn")]
        public string Popcorn { get; set; }

        [JsonProperty("portugal")]
        public string Portugal { get; set; }

        [JsonProperty("post_office")]
        public string PostOffice { get; set; }

        [JsonProperty("postal_horn")]
        public string PostalHorn { get; set; }

        [JsonProperty("postbox")]
        public string Postbox { get; set; }

        [JsonProperty("potable_water")]
        public string PotableWater { get; set; }

        [JsonProperty("potato")]
        public string Potato { get; set; }

        [JsonProperty("pouch")]
        public string Pouch { get; set; }

        [JsonProperty("poultry_leg")]
        public string PoultryLeg { get; set; }

        [JsonProperty("pound")]
        public string Pound { get; set; }

        [JsonProperty("pout")]
        public string Pout { get; set; }

        [JsonProperty("pouting_cat")]
        public string PoutingCat { get; set; }

        [JsonProperty("pouting_man")]
        public string PoutingMan { get; set; }

        [JsonProperty("pouting_woman")]
        public string PoutingWoman { get; set; }

        [JsonProperty("pray")]
        public string Pray { get; set; }

        [JsonProperty("prayer_beads")]
        public string PrayerBeads { get; set; }

        [JsonProperty("pregnant_woman")]
        public string PregnantWoman { get; set; }

        [JsonProperty("previous_track_button")]
        public string PreviousTrackButton { get; set; }

        [JsonProperty("prince")]
        public string Prince { get; set; }

        [JsonProperty("princess")]
        public string Princess { get; set; }

        [JsonProperty("printer")]
        public string Printer { get; set; }

        [JsonProperty("puerto_rico")]
        public string PuertoRico { get; set; }

        [JsonProperty("punch")]
        public string Punch { get; set; }

        [JsonProperty("purple_heart")]
        public string PurpleHeart { get; set; }

        [JsonProperty("purse")]
        public string Purse { get; set; }

        [JsonProperty("pushpin")]
        public string Pushpin { get; set; }

        [JsonProperty("put_litter_in_its_place")]
        public string PutLitterInItsPlace { get; set; }

        [JsonProperty("qatar")]
        public string Qatar { get; set; }

        [JsonProperty("question")]
        public string Question { get; set; }

        [JsonProperty("rabbit")]
        public string Rabbit { get; set; }

        [JsonProperty("rabbit2")]
        public string Rabbit2 { get; set; }

        [JsonProperty("racehorse")]
        public string Racehorse { get; set; }

        [JsonProperty("racing_car")]
        public string RacingCar { get; set; }

        [JsonProperty("radio")]
        public string Radio { get; set; }

        [JsonProperty("radio_button")]
        public string RadioButton { get; set; }

        [JsonProperty("radioactive")]
        public string Radioactive { get; set; }

        [JsonProperty("rage")]
        public string Rage { get; set; }

        [JsonProperty("rage1")]
        public string Rage1 { get; set; }

        [JsonProperty("rage2")]
        public string Rage2 { get; set; }

        [JsonProperty("rage3")]
        public string Rage3 { get; set; }

        [JsonProperty("rage4")]
        public string Rage4 { get; set; }

        [JsonProperty("railway_car")]
        public string RailwayCar { get; set; }

        [JsonProperty("railway_track")]
        public string RailwayTrack { get; set; }

        [JsonProperty("rainbow")]
        public string Rainbow { get; set; }

        [JsonProperty("rainbow_flag")]
        public string RainbowFlag { get; set; }

        [JsonProperty("raised_back_of_hand")]
        public string RaisedBackOfHand { get; set; }

        [JsonProperty("raised_hand")]
        public string RaisedHand { get; set; }

        [JsonProperty("raised_hand_with_fingers_splayed")]
        public string RaisedHandWithFingersSplayed { get; set; }

        [JsonProperty("raised_hands")]
        public string RaisedHands { get; set; }

        [JsonProperty("raising_hand")]
        public string RaisingHand { get; set; }

        [JsonProperty("raising_hand_man")]
        public string RaisingHandMan { get; set; }

        [JsonProperty("raising_hand_woman")]
        public string RaisingHandWoman { get; set; }

        [JsonProperty("ram")]
        public string Ram { get; set; }

        [JsonProperty("ramen")]
        public string Ramen { get; set; }

        [JsonProperty("rat")]
        public string Rat { get; set; }

        [JsonProperty("record_button")]
        public string RecordButton { get; set; }

        [JsonProperty("recycle")]
        public string Recycle { get; set; }

        [JsonProperty("red_car")]
        public string RedCar { get; set; }

        [JsonProperty("red_circle")]
        public string RedCircle { get; set; }

        [JsonProperty("registered")]
        public string Registered { get; set; }

        [JsonProperty("relaxed")]
        public string Relaxed { get; set; }

        [JsonProperty("relieved")]
        public string Relieved { get; set; }

        [JsonProperty("reminder_ribbon")]
        public string ReminderRibbon { get; set; }

        [JsonProperty("repeat")]
        public string Repeat { get; set; }

        [JsonProperty("repeat_one")]
        public string RepeatOne { get; set; }

        [JsonProperty("rescue_worker_helmet")]
        public string RescueWorkerHelmet { get; set; }

        [JsonProperty("restroom")]
        public string Restroom { get; set; }

        [JsonProperty("reunion")]
        public string Reunion { get; set; }

        [JsonProperty("revolving_hearts")]
        public string RevolvingHearts { get; set; }

        [JsonProperty("rewind")]
        public string Rewind { get; set; }

        [JsonProperty("rhinoceros")]
        public string Rhinoceros { get; set; }

        [JsonProperty("ribbon")]
        public string Ribbon { get; set; }

        [JsonProperty("rice")]
        public string Rice { get; set; }

        [JsonProperty("rice_ball")]
        public string RiceBall { get; set; }

        [JsonProperty("rice_cracker")]
        public string RiceCracker { get; set; }

        [JsonProperty("rice_scene")]
        public string RiceScene { get; set; }

        [JsonProperty("right_anger_bubble")]
        public string RightAngerBubble { get; set; }

        [JsonProperty("ring")]
        public string Ring { get; set; }

        [JsonProperty("robot")]
        public string Robot { get; set; }

        [JsonProperty("rocket")]
        public string Rocket { get; set; }

        [JsonProperty("rofl")]
        public string Rofl { get; set; }

        [JsonProperty("roll_eyes")]
        public string RollEyes { get; set; }

        [JsonProperty("roller_coaster")]
        public string RollerCoaster { get; set; }

        [JsonProperty("romania")]
        public string Romania { get; set; }

        [JsonProperty("rooster")]
        public string Rooster { get; set; }

        [JsonProperty("rose")]
        public string Rose { get; set; }

        [JsonProperty("rosette")]
        public string Rosette { get; set; }

        [JsonProperty("rotating_light")]
        public string RotatingLight { get; set; }

        [JsonProperty("round_pushpin")]
        public string RoundPushpin { get; set; }

        [JsonProperty("rowboat")]
        public string Rowboat { get; set; }

        [JsonProperty("rowing_man")]
        public string RowingMan { get; set; }

        [JsonProperty("rowing_woman")]
        public string RowingWoman { get; set; }

        [JsonProperty("ru")]
        public string Ru { get; set; }

        [JsonProperty("rugby_football")]
        public string RugbyFootball { get; set; }

        [JsonProperty("runner")]
        public string Runner { get; set; }

        [JsonProperty("running")]
        public string Running { get; set; }

        [JsonProperty("running_man")]
        public string RunningMan { get; set; }

        [JsonProperty("running_shirt_with_sash")]
        public string RunningShirtWithSash { get; set; }

        [JsonProperty("running_woman")]
        public string RunningWoman { get; set; }

        [JsonProperty("rwanda")]
        public string Rwanda { get; set; }

        [JsonProperty("sa")]
        public string Sa { get; set; }

        [JsonProperty("sagittarius")]
        public string Sagittarius { get; set; }

        [JsonProperty("sailboat")]
        public string Sailboat { get; set; }

        [JsonProperty("sake")]
        public string Sake { get; set; }

        [JsonProperty("samoa")]
        public string Samoa { get; set; }

        [JsonProperty("san_marino")]
        public string SanMarino { get; set; }

        [JsonProperty("sandal")]
        public string Sandal { get; set; }

        [JsonProperty("santa")]
        public string Santa { get; set; }

        [JsonProperty("sao_tome_principe")]
        public string SaoTomePrincipe { get; set; }

        [JsonProperty("satellite")]
        public string Satellite { get; set; }

        [JsonProperty("satisfied")]
        public string Satisfied { get; set; }

        [JsonProperty("saudi_arabia")]
        public string SaudiArabia { get; set; }

        [JsonProperty("saxophone")]
        public string Saxophone { get; set; }

        [JsonProperty("school")]
        public string School { get; set; }

        [JsonProperty("school_satchel")]
        public string SchoolSatchel { get; set; }

        [JsonProperty("scissors")]
        public string Scissors { get; set; }

        [JsonProperty("scorpion")]
        public string Scorpion { get; set; }

        [JsonProperty("scorpius")]
        public string Scorpius { get; set; }

        [JsonProperty("scream")]
        public string Scream { get; set; }

        [JsonProperty("scream_cat")]
        public string ScreamCat { get; set; }

        [JsonProperty("scroll")]
        public string Scroll { get; set; }

        [JsonProperty("seat")]
        public string Seat { get; set; }

        [JsonProperty("secret")]
        public string Secret { get; set; }

        [JsonProperty("see_no_evil")]
        public string SeeNoEvil { get; set; }

        [JsonProperty("seedling")]
        public string Seedling { get; set; }

        [JsonProperty("selfie")]
        public string Selfie { get; set; }

        [JsonProperty("senegal")]
        public string Senegal { get; set; }

        [JsonProperty("serbia")]
        public string Serbia { get; set; }

        [JsonProperty("seven")]
        public string Seven { get; set; }

        [JsonProperty("seychelles")]
        public string Seychelles { get; set; }

        [JsonProperty("shallow_pan_of_food")]
        public string ShallowPanOfFood { get; set; }

        [JsonProperty("shamrock")]
        public string Shamrock { get; set; }

        [JsonProperty("shark")]
        public string Shark { get; set; }

        [JsonProperty("shaved_ice")]
        public string ShavedIce { get; set; }

        [JsonProperty("sheep")]
        public string Sheep { get; set; }

        [JsonProperty("shell")]
        public string Shell { get; set; }

        [JsonProperty("shield")]
        public string Shield { get; set; }

        [JsonProperty("shinto_shrine")]
        public string ShintoShrine { get; set; }

        [JsonProperty("ship")]
        public string Ship { get; set; }

        [JsonProperty("shipit")]
        public string Shipit { get; set; }

        [JsonProperty("shirt")]
        public string Shirt { get; set; }

        [JsonProperty("shit")]
        public string Shit { get; set; }

        [JsonProperty("shoe")]
        public string Shoe { get; set; }

        [JsonProperty("shopping")]
        public string Shopping { get; set; }

        [JsonProperty("shopping_cart")]
        public string ShoppingCart { get; set; }

        [JsonProperty("shower")]
        public string Shower { get; set; }

        [JsonProperty("shrimp")]
        public string Shrimp { get; set; }

        [JsonProperty("sierra_leone")]
        public string SierraLeone { get; set; }

        [JsonProperty("signal_strength")]
        public string SignalStrength { get; set; }

        [JsonProperty("singapore")]
        public string Singapore { get; set; }

        [JsonProperty("sint_maarten")]
        public string SintMaarten { get; set; }

        [JsonProperty("six")]
        public string Six { get; set; }

        [JsonProperty("six_pointed_star")]
        public string SixPointedStar { get; set; }

        [JsonProperty("ski")]
        public string Ski { get; set; }

        [JsonProperty("skier")]
        public string Skier { get; set; }

        [JsonProperty("skull")]
        public string Skull { get; set; }

        [JsonProperty("skull_and_crossbones")]
        public string SkullAndCrossbones { get; set; }

        [JsonProperty("sleeping")]
        public string Sleeping { get; set; }

        [JsonProperty("sleeping_bed")]
        public string SleepingBed { get; set; }

        [JsonProperty("sleepy")]
        public string Sleepy { get; set; }

        [JsonProperty("slightly_frowning_face")]
        public string SlightlyFrowningFace { get; set; }

        [JsonProperty("slightly_smiling_face")]
        public string SlightlySmilingFace { get; set; }

        [JsonProperty("slot_machine")]
        public string SlotMachine { get; set; }

        [JsonProperty("slovakia")]
        public string Slovakia { get; set; }

        [JsonProperty("slovenia")]
        public string Slovenia { get; set; }

        [JsonProperty("small_airplane")]
        public string SmallAirplane { get; set; }

        [JsonProperty("small_blue_diamond")]
        public string SmallBlueDiamond { get; set; }

        [JsonProperty("small_orange_diamond")]
        public string SmallOrangeDiamond { get; set; }

        [JsonProperty("small_red_triangle")]
        public string SmallRedTriangle { get; set; }

        [JsonProperty("small_red_triangle_down")]
        public string SmallRedTriangleDown { get; set; }

        [JsonProperty("smile")]
        public string Smile { get; set; }

        [JsonProperty("smile_cat")]
        public string SmileCat { get; set; }

        [JsonProperty("smiley")]
        public string Smiley { get; set; }

        [JsonProperty("smiley_cat")]
        public string SmileyCat { get; set; }

        [JsonProperty("smiling_imp")]
        public string SmilingImp { get; set; }

        [JsonProperty("smirk")]
        public string Smirk { get; set; }

        [JsonProperty("smirk_cat")]
        public string SmirkCat { get; set; }

        [JsonProperty("smoking")]
        public string Smoking { get; set; }

        [JsonProperty("snail")]
        public string Snail { get; set; }

        [JsonProperty("snake")]
        public string Snake { get; set; }

        [JsonProperty("sneezing_face")]
        public string SneezingFace { get; set; }

        [JsonProperty("snowboarder")]
        public string Snowboarder { get; set; }

        [JsonProperty("snowflake")]
        public string Snowflake { get; set; }

        [JsonProperty("snowman")]
        public string Snowman { get; set; }

        [JsonProperty("snowman_with_snow")]
        public string SnowmanWithSnow { get; set; }

        [JsonProperty("sob")]
        public string Sob { get; set; }

        [JsonProperty("soccer")]
        public string Soccer { get; set; }

        [JsonProperty("solomon_islands")]
        public string SolomonIslands { get; set; }

        [JsonProperty("somalia")]
        public string Somalia { get; set; }

        [JsonProperty("soon")]
        public string Soon { get; set; }

        [JsonProperty("sos")]
        public string Sos { get; set; }

        [JsonProperty("sound")]
        public string Sound { get; set; }

        [JsonProperty("south_africa")]
        public string SouthAfrica { get; set; }

        [JsonProperty("south_georgia_south_sandwich_islands")]
        public string SouthGeorgiaSouthSandwichIslands { get; set; }

        [JsonProperty("south_sudan")]
        public string SouthSudan { get; set; }

        [JsonProperty("space_invader")]
        public string SpaceInvader { get; set; }

        [JsonProperty("spades")]
        public string Spades { get; set; }

        [JsonProperty("spaghetti")]
        public string Spaghetti { get; set; }

        [JsonProperty("sparkle")]
        public string Sparkle { get; set; }

        [JsonProperty("sparkler")]
        public string Sparkler { get; set; }

        [JsonProperty("sparkles")]
        public string Sparkles { get; set; }

        [JsonProperty("sparkling_heart")]
        public string SparklingHeart { get; set; }

        [JsonProperty("speak_no_evil")]
        public string SpeakNoEvil { get; set; }

        [JsonProperty("speaker")]
        public string Speaker { get; set; }

        [JsonProperty("speaking_head")]
        public string SpeakingHead { get; set; }

        [JsonProperty("speech_balloon")]
        public string SpeechBalloon { get; set; }

        [JsonProperty("speedboat")]
        public string Speedboat { get; set; }

        [JsonProperty("spider")]
        public string Spider { get; set; }

        [JsonProperty("spider_web")]
        public string SpiderWeb { get; set; }

        [JsonProperty("spiral_calendar")]
        public string SpiralCalendar { get; set; }

        [JsonProperty("spiral_notepad")]
        public string SpiralNotepad { get; set; }

        [JsonProperty("spoon")]
        public string Spoon { get; set; }

        [JsonProperty("squid")]
        public string Squid { get; set; }

        [JsonProperty("squirrel")]
        public string Squirrel { get; set; }

        [JsonProperty("sri_lanka")]
        public string SriLanka { get; set; }

        [JsonProperty("st_barthelemy")]
        public string StBarthelemy { get; set; }

        [JsonProperty("st_helena")]
        public string StHelena { get; set; }

        [JsonProperty("st_kitts_nevis")]
        public string StKittsNevis { get; set; }

        [JsonProperty("st_lucia")]
        public string StLucia { get; set; }

        [JsonProperty("st_pierre_miquelon")]
        public string StPierreMiquelon { get; set; }

        [JsonProperty("st_vincent_grenadines")]
        public string StVincentGrenadines { get; set; }

        [JsonProperty("stadium")]
        public string Stadium { get; set; }

        [JsonProperty("star")]
        public string Star { get; set; }

        [JsonProperty("star2")]
        public string Star2 { get; set; }

        [JsonProperty("star_and_crescent")]
        public string StarAndCrescent { get; set; }

        [JsonProperty("star_of_david")]
        public string StarOfDavid { get; set; }

        [JsonProperty("stars")]
        public string Stars { get; set; }

        [JsonProperty("station")]
        public string Station { get; set; }

        [JsonProperty("statue_of_liberty")]
        public string StatueOfLiberty { get; set; }

        [JsonProperty("steam_locomotive")]
        public string SteamLocomotive { get; set; }

        [JsonProperty("stew")]
        public string Stew { get; set; }

        [JsonProperty("stop_button")]
        public string StopButton { get; set; }

        [JsonProperty("stop_sign")]
        public string StopSign { get; set; }

        [JsonProperty("stopwatch")]
        public string Stopwatch { get; set; }

        [JsonProperty("straight_ruler")]
        public string StraightRuler { get; set; }

        [JsonProperty("strawberry")]
        public string Strawberry { get; set; }

        [JsonProperty("stuck_out_tongue")]
        public string StuckOutTongue { get; set; }

        [JsonProperty("stuck_out_tongue_closed_eyes")]
        public string StuckOutTongueClosedEyes { get; set; }

        [JsonProperty("stuck_out_tongue_winking_eye")]
        public string StuckOutTongueWinkingEye { get; set; }

        [JsonProperty("studio_microphone")]
        public string StudioMicrophone { get; set; }

        [JsonProperty("stuffed_flatbread")]
        public string StuffedFlatbread { get; set; }

        [JsonProperty("sudan")]
        public string Sudan { get; set; }

        [JsonProperty("sun_behind_large_cloud")]
        public string SunBehindLargeCloud { get; set; }

        [JsonProperty("sun_behind_rain_cloud")]
        public string SunBehindRainCloud { get; set; }

        [JsonProperty("sun_behind_small_cloud")]
        public string SunBehindSmallCloud { get; set; }

        [JsonProperty("sun_with_face")]
        public string SunWithFace { get; set; }

        [JsonProperty("sunflower")]
        public string Sunflower { get; set; }

        [JsonProperty("sunglasses")]
        public string Sunglasses { get; set; }

        [JsonProperty("sunny")]
        public string Sunny { get; set; }

        [JsonProperty("sunrise")]
        public string Sunrise { get; set; }

        [JsonProperty("sunrise_over_mountains")]
        public string SunriseOverMountains { get; set; }

        [JsonProperty("surfer")]
        public string Surfer { get; set; }

        [JsonProperty("surfing_man")]
        public string SurfingMan { get; set; }

        [JsonProperty("surfing_woman")]
        public string SurfingWoman { get; set; }

        [JsonProperty("suriname")]
        public string Suriname { get; set; }

        [JsonProperty("sushi")]
        public string Sushi { get; set; }

        [JsonProperty("suspect")]
        public string Suspect { get; set; }

        [JsonProperty("suspension_railway")]
        public string SuspensionRailway { get; set; }

        [JsonProperty("swaziland")]
        public string Swaziland { get; set; }

        [JsonProperty("sweat")]
        public string Sweat { get; set; }

        [JsonProperty("sweat_drops")]
        public string SweatDrops { get; set; }

        [JsonProperty("sweat_smile")]
        public string SweatSmile { get; set; }

        [JsonProperty("sweden")]
        public string Sweden { get; set; }

        [JsonProperty("sweet_potato")]
        public string SweetPotato { get; set; }

        [JsonProperty("swimmer")]
        public string Swimmer { get; set; }

        [JsonProperty("swimming_man")]
        public string SwimmingMan { get; set; }

        [JsonProperty("swimming_woman")]
        public string SwimmingWoman { get; set; }

        [JsonProperty("switzerland")]
        public string Switzerland { get; set; }

        [JsonProperty("symbols")]
        public string Symbols { get; set; }

        [JsonProperty("synagogue")]
        public string Synagogue { get; set; }

        [JsonProperty("syria")]
        public string Syria { get; set; }

        [JsonProperty("syringe")]
        public string Syringe { get; set; }

        [JsonProperty("taco")]
        public string Taco { get; set; }

        [JsonProperty("tada")]
        public string Tada { get; set; }

        [JsonProperty("taiwan")]
        public string Taiwan { get; set; }

        [JsonProperty("tajikistan")]
        public string Tajikistan { get; set; }

        [JsonProperty("tanabata_tree")]
        public string TanabataTree { get; set; }

        [JsonProperty("tangerine")]
        public string Tangerine { get; set; }

        [JsonProperty("tanzania")]
        public string Tanzania { get; set; }

        [JsonProperty("taurus")]
        public string Taurus { get; set; }

        [JsonProperty("taxi")]
        public string Taxi { get; set; }

        [JsonProperty("tea")]
        public string Tea { get; set; }

        [JsonProperty("telephone")]
        public string Telephone { get; set; }

        [JsonProperty("telephone_receiver")]
        public string TelephoneReceiver { get; set; }

        [JsonProperty("telescope")]
        public string Telescope { get; set; }

        [JsonProperty("tennis")]
        public string Tennis { get; set; }

        [JsonProperty("tent")]
        public string Tent { get; set; }

        [JsonProperty("thailand")]
        public string Thailand { get; set; }

        [JsonProperty("thermometer")]
        public string Thermometer { get; set; }

        [JsonProperty("thinking")]
        public string Thinking { get; set; }

        [JsonProperty("thought_balloon")]
        public string ThoughtBalloon { get; set; }

        [JsonProperty("three")]
        public string Three { get; set; }

        [JsonProperty("thumbsdown")]
        public string Thumbsdown { get; set; }

        [JsonProperty("thumbsup")]
        public string Thumbsup { get; set; }

        [JsonProperty("ticket")]
        public string Ticket { get; set; }

        [JsonProperty("tickets")]
        public string Tickets { get; set; }

        [JsonProperty("tiger")]
        public string Tiger { get; set; }

        [JsonProperty("tiger2")]
        public string Tiger2 { get; set; }

        [JsonProperty("timer_clock")]
        public string TimerClock { get; set; }

        [JsonProperty("timor_leste")]
        public string TimorLeste { get; set; }

        [JsonProperty("tipping_hand_man")]
        public string TippingHandMan { get; set; }

        [JsonProperty("tipping_hand_woman")]
        public string TippingHandWoman { get; set; }

        [JsonProperty("tired_face")]
        public string TiredFace { get; set; }

        [JsonProperty("tm")]
        public string Tm { get; set; }

        [JsonProperty("togo")]
        public string Togo { get; set; }

        [JsonProperty("toilet")]
        public string Toilet { get; set; }

        [JsonProperty("tokelau")]
        public string Tokelau { get; set; }

        [JsonProperty("tokyo_tower")]
        public string TokyoTower { get; set; }

        [JsonProperty("tomato")]
        public string Tomato { get; set; }

        [JsonProperty("tonga")]
        public string Tonga { get; set; }

        [JsonProperty("tongue")]
        public string Tongue { get; set; }

        [JsonProperty("top")]
        public string Top { get; set; }

        [JsonProperty("tophat")]
        public string Tophat { get; set; }

        [JsonProperty("tornado")]
        public string Tornado { get; set; }

        [JsonProperty("tr")]
        public string Tr { get; set; }

        [JsonProperty("trackball")]
        public string Trackball { get; set; }

        [JsonProperty("tractor")]
        public string Tractor { get; set; }

        [JsonProperty("traffic_light")]
        public string TrafficLight { get; set; }

        [JsonProperty("train")]
        public string Train { get; set; }

        [JsonProperty("train2")]
        public string Train2 { get; set; }

        [JsonProperty("tram")]
        public string Tram { get; set; }

        [JsonProperty("triangular_flag_on_post")]
        public string TriangularFlagOnPost { get; set; }

        [JsonProperty("triangular_ruler")]
        public string TriangularRuler { get; set; }

        [JsonProperty("trident")]
        public string Trident { get; set; }

        [JsonProperty("trinidad_tobago")]
        public string TrinidadTobago { get; set; }

        [JsonProperty("triumph")]
        public string Triumph { get; set; }

        [JsonProperty("trolleybus")]
        public string Trolleybus { get; set; }

        [JsonProperty("trollface")]
        public string Trollface { get; set; }

        [JsonProperty("trophy")]
        public string Trophy { get; set; }

        [JsonProperty("tropical_drink")]
        public string TropicalDrink { get; set; }

        [JsonProperty("tropical_fish")]
        public string TropicalFish { get; set; }

        [JsonProperty("truck")]
        public string Truck { get; set; }

        [JsonProperty("trumpet")]
        public string Trumpet { get; set; }

        [JsonProperty("tshirt")]
        public string Tshirt { get; set; }

        [JsonProperty("tulip")]
        public string Tulip { get; set; }

        [JsonProperty("tumbler_glass")]
        public string TumblerGlass { get; set; }

        [JsonProperty("tunisia")]
        public string Tunisia { get; set; }

        [JsonProperty("turkey")]
        public string Turkey { get; set; }

        [JsonProperty("turkmenistan")]
        public string Turkmenistan { get; set; }

        [JsonProperty("turks_caicos_islands")]
        public string TurksCaicosIslands { get; set; }

        [JsonProperty("turtle")]
        public string Turtle { get; set; }

        [JsonProperty("tuvalu")]
        public string Tuvalu { get; set; }

        [JsonProperty("tv")]
        public string Tv { get; set; }

        [JsonProperty("twisted_rightwards_arrows")]
        public string TwistedRightwardsArrows { get; set; }

        [JsonProperty("two")]
        public string Two { get; set; }

        [JsonProperty("two_hearts")]
        public string TwoHearts { get; set; }

        [JsonProperty("two_men_holding_hands")]
        public string TwoMenHoldingHands { get; set; }

        [JsonProperty("two_women_holding_hands")]
        public string TwoWomenHoldingHands { get; set; }

        [JsonProperty("u5272")]
        public string U5272 { get; set; }

        [JsonProperty("u5408")]
        public string U5408 { get; set; }

        [JsonProperty("u55b6")]
        public string U55B6 { get; set; }

        [JsonProperty("u6307")]
        public string U6307 { get; set; }

        [JsonProperty("u6708")]
        public string U6708 { get; set; }

        [JsonProperty("u6709")]
        public string U6709 { get; set; }

        [JsonProperty("u6e80")]
        public string U6E80 { get; set; }

        [JsonProperty("u7121")]
        public string U7121 { get; set; }

        [JsonProperty("u7533")]
        public string U7533 { get; set; }

        [JsonProperty("u7981")]
        public string U7981 { get; set; }

        [JsonProperty("u7a7a")]
        public string U7A7A { get; set; }

        [JsonProperty("uganda")]
        public string Uganda { get; set; }

        [JsonProperty("uk")]
        public string Uk { get; set; }

        [JsonProperty("ukraine")]
        public string Ukraine { get; set; }

        [JsonProperty("umbrella")]
        public string Umbrella { get; set; }

        [JsonProperty("unamused")]
        public string Unamused { get; set; }

        [JsonProperty("underage")]
        public string Underage { get; set; }

        [JsonProperty("unicorn")]
        public string Unicorn { get; set; }

        [JsonProperty("united_arab_emirates")]
        public string UnitedArabEmirates { get; set; }

        [JsonProperty("unlock")]
        public string Unlock { get; set; }

        [JsonProperty("up")]
        public string Up { get; set; }

        [JsonProperty("upside_down_face")]
        public string UpsideDownFace { get; set; }

        [JsonProperty("uruguay")]
        public string Uruguay { get; set; }

        [JsonProperty("us")]
        public string Us { get; set; }

        [JsonProperty("us_virgin_islands")]
        public string UsVirginIslands { get; set; }

        [JsonProperty("uzbekistan")]
        public string Uzbekistan { get; set; }

        [JsonProperty("v")]
        public string V { get; set; }

        [JsonProperty("vanuatu")]
        public string Vanuatu { get; set; }

        [JsonProperty("vatican_city")]
        public string VaticanCity { get; set; }

        [JsonProperty("venezuela")]
        public string Venezuela { get; set; }

        [JsonProperty("vertical_traffic_light")]
        public string VerticalTrafficLight { get; set; }

        [JsonProperty("vhs")]
        public string Vhs { get; set; }

        [JsonProperty("vibration_mode")]
        public string VibrationMode { get; set; }

        [JsonProperty("video_camera")]
        public string VideoCamera { get; set; }

        [JsonProperty("video_game")]
        public string VideoGame { get; set; }

        [JsonProperty("vietnam")]
        public string Vietnam { get; set; }

        [JsonProperty("violin")]
        public string Violin { get; set; }

        [JsonProperty("virgo")]
        public string Virgo { get; set; }

        [JsonProperty("volcano")]
        public string Volcano { get; set; }

        [JsonProperty("volleyball")]
        public string Volleyball { get; set; }

        [JsonProperty("vs")]
        public string Vs { get; set; }

        [JsonProperty("vulcan_salute")]
        public string VulcanSalute { get; set; }

        [JsonProperty("walking")]
        public string Walking { get; set; }

        [JsonProperty("walking_man")]
        public string WalkingMan { get; set; }

        [JsonProperty("walking_woman")]
        public string WalkingWoman { get; set; }

        [JsonProperty("wallis_futuna")]
        public string WallisFutuna { get; set; }

        [JsonProperty("waning_crescent_moon")]
        public string WaningCrescentMoon { get; set; }

        [JsonProperty("waning_gibbous_moon")]
        public string WaningGibbousMoon { get; set; }

        [JsonProperty("warning")]
        public string Warning { get; set; }

        [JsonProperty("wastebasket")]
        public string Wastebasket { get; set; }

        [JsonProperty("watch")]
        public string Watch { get; set; }

        [JsonProperty("water_buffalo")]
        public string WaterBuffalo { get; set; }

        [JsonProperty("watermelon")]
        public string Watermelon { get; set; }

        [JsonProperty("wave")]
        public string Wave { get; set; }

        [JsonProperty("wavy_dash")]
        public string WavyDash { get; set; }

        [JsonProperty("waxing_crescent_moon")]
        public string WaxingCrescentMoon { get; set; }

        [JsonProperty("waxing_gibbous_moon")]
        public string WaxingGibbousMoon { get; set; }

        [JsonProperty("wc")]
        public string Wc { get; set; }

        [JsonProperty("weary")]
        public string Weary { get; set; }

        [JsonProperty("wedding")]
        public string Wedding { get; set; }

        [JsonProperty("weight_lifting_man")]
        public string WeightLiftingMan { get; set; }

        [JsonProperty("weight_lifting_woman")]
        public string WeightLiftingWoman { get; set; }

        [JsonProperty("western_sahara")]
        public string WesternSahara { get; set; }

        [JsonProperty("whale")]
        public string Whale { get; set; }

        [JsonProperty("whale2")]
        public string Whale2 { get; set; }

        [JsonProperty("wheel_of_dharma")]
        public string WheelOfDharma { get; set; }

        [JsonProperty("wheelchair")]
        public string Wheelchair { get; set; }

        [JsonProperty("white_check_mark")]
        public string WhiteCheckMark { get; set; }

        [JsonProperty("white_circle")]
        public string WhiteCircle { get; set; }

        [JsonProperty("white_flag")]
        public string WhiteFlag { get; set; }

        [JsonProperty("white_flower")]
        public string WhiteFlower { get; set; }

        [JsonProperty("white_large_square")]
        public string WhiteLargeSquare { get; set; }

        [JsonProperty("white_medium_small_square")]
        public string WhiteMediumSmallSquare { get; set; }

        [JsonProperty("white_medium_square")]
        public string WhiteMediumSquare { get; set; }

        [JsonProperty("white_small_square")]
        public string WhiteSmallSquare { get; set; }

        [JsonProperty("white_square_button")]
        public string WhiteSquareButton { get; set; }

        [JsonProperty("wilted_flower")]
        public string WiltedFlower { get; set; }

        [JsonProperty("wind_chime")]
        public string WindChime { get; set; }

        [JsonProperty("wind_face")]
        public string WindFace { get; set; }

        [JsonProperty("wine_glass")]
        public string WineGlass { get; set; }

        [JsonProperty("wink")]
        public string Wink { get; set; }

        [JsonProperty("wolf")]
        public string Wolf { get; set; }

        [JsonProperty("woman")]
        public string Woman { get; set; }

        [JsonProperty("woman_artist")]
        public string WomanArtist { get; set; }

        [JsonProperty("woman_astronaut")]
        public string WomanAstronaut { get; set; }

        [JsonProperty("woman_cartwheeling")]
        public string WomanCartwheeling { get; set; }

        [JsonProperty("woman_cook")]
        public string WomanCook { get; set; }

        [JsonProperty("woman_facepalming")]
        public string WomanFacepalming { get; set; }

        [JsonProperty("woman_factory_worker")]
        public string WomanFactoryWorker { get; set; }

        [JsonProperty("woman_farmer")]
        public string WomanFarmer { get; set; }

        [JsonProperty("woman_firefighter")]
        public string WomanFirefighter { get; set; }

        [JsonProperty("woman_health_worker")]
        public string WomanHealthWorker { get; set; }

        [JsonProperty("woman_judge")]
        public string WomanJudge { get; set; }

        [JsonProperty("woman_juggling")]
        public string WomanJuggling { get; set; }

        [JsonProperty("woman_mechanic")]
        public string WomanMechanic { get; set; }

        [JsonProperty("woman_office_worker")]
        public string WomanOfficeWorker { get; set; }

        [JsonProperty("woman_pilot")]
        public string WomanPilot { get; set; }

        [JsonProperty("woman_playing_handball")]
        public string WomanPlayingHandball { get; set; }

        [JsonProperty("woman_playing_water_polo")]
        public string WomanPlayingWaterPolo { get; set; }

        [JsonProperty("woman_scientist")]
        public string WomanScientist { get; set; }

        [JsonProperty("woman_shrugging")]
        public string WomanShrugging { get; set; }

        [JsonProperty("woman_singer")]
        public string WomanSinger { get; set; }

        [JsonProperty("woman_student")]
        public string WomanStudent { get; set; }

        [JsonProperty("woman_teacher")]
        public string WomanTeacher { get; set; }

        [JsonProperty("woman_technologist")]
        public string WomanTechnologist { get; set; }

        [JsonProperty("woman_with_turban")]
        public string WomanWithTurban { get; set; }

        [JsonProperty("womans_clothes")]
        public string WomansClothes { get; set; }

        [JsonProperty("womans_hat")]
        public string WomansHat { get; set; }

        [JsonProperty("women_wrestling")]
        public string WomenWrestling { get; set; }

        [JsonProperty("womens")]
        public string Womens { get; set; }

        [JsonProperty("world_map")]
        public string WorldMap { get; set; }

        [JsonProperty("worried")]
        public string Worried { get; set; }

        [JsonProperty("wrench")]
        public string Wrench { get; set; }

        [JsonProperty("writing_hand")]
        public string WritingHand { get; set; }

        [JsonProperty("x")]
        public string X { get; set; }

        [JsonProperty("yellow_heart")]
        public string YellowHeart { get; set; }

        [JsonProperty("yemen")]
        public string Yemen { get; set; }

        [JsonProperty("yen")]
        public string Yen { get; set; }

        [JsonProperty("yin_yang")]
        public string YinYang { get; set; }

        [JsonProperty("yum")]
        public string Yum { get; set; }

        [JsonProperty("zambia")]
        public string Zambia { get; set; }

        [JsonProperty("zap")]
        public string Zap { get; set; }

        [JsonProperty("zero")]
        public string Zero { get; set; }

        [JsonProperty("zimbabwe")]
        public string Zimbabwe { get; set; }

        [JsonProperty("zipper_mouth_face")]
        public string ZipperMouthFace { get; set; }

        [JsonProperty("zzz")]
        public string Zzz { get; set; }
    }

    public partial class Events
    {
        [JsonProperty("id")]
        public string Id { get; set; }

        [JsonProperty("type")]
        public string Type { get; set; }

        [JsonProperty("actor")]
        public Actor Actor { get; set; }

        [JsonProperty("repo")]
        public Repo Repo { get; set; }

        [JsonProperty("payload")]
        public Payload Payload { get; set; }

        [JsonProperty("public")]
        public bool Public { get; set; }

        [JsonProperty("created_at")]
        public System.DateTimeOffset CreatedAt { get; set; }

        [JsonProperty("org")]
        public Actor Org { get; set; }
    }

    public partial class Actor
    {
        [JsonProperty("id")]
        public long Id { get; set; }

        [JsonProperty("login")]
        public string Login { get; set; }

        [JsonProperty("display_login")]
        public string DisplayLogin { get; set; }

        [JsonProperty("gravatar_id")]
        public GravatarId GravatarId { get; set; }

        [JsonProperty("url")]
        public string Url { get; set; }

        [JsonProperty("avatar_url")]
        public string AvatarUrl { get; set; }
    }

    public partial class Payload
    {
        [JsonProperty("push_id")]
        public long? PushId { get; set; }

        [JsonProperty("size")]
        public long? Size { get; set; }

        [JsonProperty("distinct_size")]
        public long? DistinctSize { get; set; }

        [JsonProperty("ref")]
        public string Ref { get; set; }

        [JsonProperty("head")]
        public string Head { get; set; }

        [JsonProperty("before")]
        public string Before { get; set; }

        [JsonProperty("commits")]
        public Commit[] Commits { get; set; }

        [JsonProperty("forkee")]
        public Forkee Forkee { get; set; }

        [JsonProperty("action")]
        public string Action { get; set; }

        [JsonProperty("issue")]
        public Issue Issue { get; set; }

        [JsonProperty("comment")]
        public Comment Comment { get; set; }

        [JsonProperty("ref_type")]
        public string RefType { get; set; }

        [JsonProperty("master_branch")]
        public string MasterBranch { get; set; }

        [JsonProperty("description")]
        public string Description { get; set; }

        [JsonProperty("pusher_type")]
        public string PusherType { get; set; }

        [JsonProperty("release")]
        public Release Release { get; set; }

        [JsonProperty("number")]
        public long? Number { get; set; }

        [JsonProperty("pull_request")]
        public PullRequest PullRequest { get; set; }

        [JsonProperty("pages")]
        public Page[] Pages { get; set; }
    }

    public partial class Comment
    {
        [JsonProperty("url")]
        public string Url { get; set; }

        [JsonProperty("html_url")]
        public string HtmlUrl { get; set; }

        [JsonProperty("issue_url")]
        public string IssueUrl { get; set; }

        [JsonProperty("id")]
        public long Id { get; set; }

        [JsonProperty("user")]
        public User User { get; set; }

        [JsonProperty("created_at")]
        public System.DateTimeOffset CreatedAt { get; set; }

        [JsonProperty("updated_at")]
        public System.DateTimeOffset UpdatedAt { get; set; }

        [JsonProperty("author_association")]
        public string AuthorAssociation { get; set; }

        [JsonProperty("body")]
        public string Body { get; set; }
    }

    public partial class User
    {
        [JsonProperty("login")]
        public string Login { get; set; }

        [JsonProperty("id")]
        public long Id { get; set; }

        [JsonProperty("avatar_url")]
        public string AvatarUrl { get; set; }

        [JsonProperty("gravatar_id")]
        public GravatarId GravatarId { get; set; }

        [JsonProperty("url")]
        public string Url { get; set; }

        [JsonProperty("html_url")]
        public string HtmlUrl { get; set; }

        [JsonProperty("followers_url")]
        public string FollowersUrl { get; set; }

        [JsonProperty("following_url")]
        public string FollowingUrl { get; set; }

        [JsonProperty("gists_url")]
        public string GistsUrl { get; set; }

        [JsonProperty("starred_url")]
        public string StarredUrl { get; set; }

        [JsonProperty("subscriptions_url")]
        public string SubscriptionsUrl { get; set; }

        [JsonProperty("organizations_url")]
        public string OrganizationsUrl { get; set; }

        [JsonProperty("repos_url")]
        public string ReposUrl { get; set; }

        [JsonProperty("events_url")]
        public string EventsUrl { get; set; }

        [JsonProperty("received_events_url")]
        public string ReceivedEventsUrl { get; set; }

        [JsonProperty("type")]
        public UserType Type { get; set; }

        [JsonProperty("site_admin")]
        public bool SiteAdmin { get; set; }
    }

    public partial class Commit
    {
        [JsonProperty("sha")]
        public string Sha { get; set; }

        [JsonProperty("author")]
        public Author Author { get; set; }

        [JsonProperty("message")]
        public string Message { get; set; }

        [JsonProperty("distinct")]
        public bool Distinct { get; set; }

        [JsonProperty("url")]
        public string Url { get; set; }
    }

    public partial class Author
    {
        [JsonProperty("email")]
        public string Email { get; set; }

        [JsonProperty("name")]
        public string Name { get; set; }
    }

    public partial class Forkee
    {
        [JsonProperty("id")]
        public long Id { get; set; }

        [JsonProperty("name")]
        public string Name { get; set; }

        [JsonProperty("full_name")]
        public string FullName { get; set; }

        [JsonProperty("owner")]
        public User Owner { get; set; }

        [JsonProperty("private")]
        public bool Private { get; set; }

        [JsonProperty("html_url")]
        public string HtmlUrl { get; set; }

        [JsonProperty("description")]
        public string Description { get; set; }

        [JsonProperty("fork")]
        public bool Fork { get; set; }

        [JsonProperty("url")]
        public string Url { get; set; }

        [JsonProperty("forks_url")]
        public string ForksUrl { get; set; }

        [JsonProperty("keys_url")]
        public string KeysUrl { get; set; }

        [JsonProperty("collaborators_url")]
        public string CollaboratorsUrl { get; set; }

        [JsonProperty("teams_url")]
        public string TeamsUrl { get; set; }

        [JsonProperty("hooks_url")]
        public string HooksUrl { get; set; }

        [JsonProperty("issue_events_url")]
        public string IssueEventsUrl { get; set; }

        [JsonProperty("events_url")]
        public string EventsUrl { get; set; }

        [JsonProperty("assignees_url")]
        public string AssigneesUrl { get; set; }

        [JsonProperty("branches_url")]
        public string BranchesUrl { get; set; }

        [JsonProperty("tags_url")]
        public string TagsUrl { get; set; }

        [JsonProperty("blobs_url")]
        public string BlobsUrl { get; set; }

        [JsonProperty("git_tags_url")]
        public string GitTagsUrl { get; set; }

        [JsonProperty("git_refs_url")]
        public string GitRefsUrl { get; set; }

        [JsonProperty("trees_url")]
        public string TreesUrl { get; set; }

        [JsonProperty("statuses_url")]
        public string StatusesUrl { get; set; }

        [JsonProperty("languages_url")]
        public string LanguagesUrl { get; set; }

        [JsonProperty("stargazers_url")]
        public string StargazersUrl { get; set; }

        [JsonProperty("contributors_url")]
        public string ContributorsUrl { get; set; }

        [JsonProperty("subscribers_url")]
        public string SubscribersUrl { get; set; }

        [JsonProperty("subscription_url")]
        public string SubscriptionUrl { get; set; }

        [JsonProperty("commits_url")]
        public string CommitsUrl { get; set; }

        [JsonProperty("git_commits_url")]
        public string GitCommitsUrl { get; set; }

        [JsonProperty("comments_url")]
        public string CommentsUrl { get; set; }

        [JsonProperty("issue_comment_url")]
        public string IssueCommentUrl { get; set; }

        [JsonProperty("contents_url")]
        public string ContentsUrl { get; set; }

        [JsonProperty("compare_url")]
        public string CompareUrl { get; set; }

        [JsonProperty("merges_url")]
        public string MergesUrl { get; set; }

        [JsonProperty("archive_url")]
        public string ArchiveUrl { get; set; }

        [JsonProperty("downloads_url")]
        public string DownloadsUrl { get; set; }

        [JsonProperty("issues_url")]
        public string IssuesUrl { get; set; }

        [JsonProperty("pulls_url")]
        public string PullsUrl { get; set; }

        [JsonProperty("milestones_url")]
        public string MilestonesUrl { get; set; }

        [JsonProperty("notifications_url")]
        public string NotificationsUrl { get; set; }

        [JsonProperty("labels_url")]
        public string LabelsUrl { get; set; }

        [JsonProperty("releases_url")]
        public string ReleasesUrl { get; set; }

        [JsonProperty("deployments_url")]
        public string DeploymentsUrl { get; set; }

        [JsonProperty("created_at")]
        public System.DateTimeOffset CreatedAt { get; set; }

        [JsonProperty("updated_at")]
        public System.DateTimeOffset UpdatedAt { get; set; }

        [JsonProperty("pushed_at")]
        public System.DateTimeOffset PushedAt { get; set; }

        [JsonProperty("git_url")]
        public string GitUrl { get; set; }

        [JsonProperty("ssh_url")]
        public string SshUrl { get; set; }

        [JsonProperty("clone_url")]
        public string CloneUrl { get; set; }

        [JsonProperty("svn_url")]
        public string SvnUrl { get; set; }

        [JsonProperty("homepage")]
        public string Homepage { get; set; }

        [JsonProperty("size")]
        public long Size { get; set; }

        [JsonProperty("stargazers_count")]
        public long StargazersCount { get; set; }

        [JsonProperty("watchers_count")]
        public long WatchersCount { get; set; }

        [JsonProperty("language")]
        public string Language { get; set; }

        [JsonProperty("has_issues")]
        public bool HasIssues { get; set; }

        [JsonProperty("has_projects")]
        public bool HasProjects { get; set; }

        [JsonProperty("has_downloads")]
        public bool HasDownloads { get; set; }

        [JsonProperty("has_wiki")]
        public bool HasWiki { get; set; }

        [JsonProperty("has_pages")]
        public bool HasPages { get; set; }

        [JsonProperty("forks_count")]
        public long ForksCount { get; set; }

        [JsonProperty("mirror_url")]
        public object MirrorUrl { get; set; }

        [JsonProperty("archived")]
        public bool Archived { get; set; }

        [JsonProperty("open_issues_count")]
        public long OpenIssuesCount { get; set; }

        [JsonProperty("license")]
        public License License { get; set; }

        [JsonProperty("forks")]
        public long Forks { get; set; }

        [JsonProperty("open_issues")]
        public long OpenIssues { get; set; }

        [JsonProperty("watchers")]
        public long Watchers { get; set; }

        [JsonProperty("default_branch")]
        public string DefaultBranch { get; set; }

        [JsonProperty("public")]
        public bool? Public { get; set; }
    }

    public partial class License
    {
        [JsonProperty("key")]
        public string Key { get; set; }

        [JsonProperty("name")]
        public string Name { get; set; }

        [JsonProperty("spdx_id")]
        public object SpdxId { get; set; }

        [JsonProperty("url")]
        public object Url { get; set; }
    }

    public partial class Issue
    {
        [JsonProperty("url")]
        public string Url { get; set; }

        [JsonProperty("repository_url")]
        public string RepositoryUrl { get; set; }

        [JsonProperty("labels_url")]
        public string LabelsUrl { get; set; }

        [JsonProperty("comments_url")]
        public string CommentsUrl { get; set; }

        [JsonProperty("events_url")]
        public string EventsUrl { get; set; }

        [JsonProperty("html_url")]
        public string HtmlUrl { get; set; }

        [JsonProperty("id")]
        public long Id { get; set; }

        [JsonProperty("number")]
        public long Number { get; set; }

        [JsonProperty("title")]
        public string Title { get; set; }

        [JsonProperty("user")]
        public User User { get; set; }

        [JsonProperty("labels")]
        public Label[] Labels { get; set; }

        [JsonProperty("state")]
        public string State { get; set; }

        [JsonProperty("locked")]
        public bool Locked { get; set; }

        [JsonProperty("assignee")]
        public User Assignee { get; set; }

        [JsonProperty("assignees")]
        public User[] Assignees { get; set; }

        [JsonProperty("milestone")]
        public Milestone Milestone { get; set; }

        [JsonProperty("comments")]
        public long Comments { get; set; }

        [JsonProperty("created_at")]
        public System.DateTimeOffset CreatedAt { get; set; }

        [JsonProperty("updated_at")]
        public System.DateTimeOffset UpdatedAt { get; set; }

        [JsonProperty("closed_at")]
        public System.DateTimeOffset? ClosedAt { get; set; }

        [JsonProperty("author_association")]
        public string AuthorAssociation { get; set; }

        [JsonProperty("body")]
        public string Body { get; set; }
    }

    public partial class Label
    {
        [JsonProperty("id")]
        public long Id { get; set; }

        [JsonProperty("url")]
        public string Url { get; set; }

        [JsonProperty("name")]
        public string Name { get; set; }

        [JsonProperty("color")]
        public string Color { get; set; }

        [JsonProperty("default")]
        public bool Default { get; set; }
    }

    public partial class Milestone
    {
        [JsonProperty("url")]
        public string Url { get; set; }

        [JsonProperty("html_url")]
        public string HtmlUrl { get; set; }

        [JsonProperty("labels_url")]
        public string LabelsUrl { get; set; }

        [JsonProperty("id")]
        public long Id { get; set; }

        [JsonProperty("number")]
        public long Number { get; set; }

        [JsonProperty("title")]
        public string Title { get; set; }

        [JsonProperty("description")]
        public string Description { get; set; }

        [JsonProperty("creator")]
        public User Creator { get; set; }

        [JsonProperty("open_issues")]
        public long OpenIssues { get; set; }

        [JsonProperty("closed_issues")]
        public long ClosedIssues { get; set; }

        [JsonProperty("state")]
        public string State { get; set; }

        [JsonProperty("created_at")]
        public System.DateTimeOffset CreatedAt { get; set; }

        [JsonProperty("updated_at")]
        public System.DateTimeOffset UpdatedAt { get; set; }

        [JsonProperty("due_on")]
        public System.DateTimeOffset DueOn { get; set; }

        [JsonProperty("closed_at")]
        public object ClosedAt { get; set; }
    }

    public partial class Page
    {
        [JsonProperty("page_name")]
        public string PageName { get; set; }

        [JsonProperty("title")]
        public string Title { get; set; }

        [JsonProperty("summary")]
        public object Summary { get; set; }

        [JsonProperty("action")]
        public string Action { get; set; }

        [JsonProperty("sha")]
        public string Sha { get; set; }

        [JsonProperty("html_url")]
        public string HtmlUrl { get; set; }
    }

    public partial class PullRequest
    {
        [JsonProperty("url")]
        public string Url { get; set; }

        [JsonProperty("id")]
        public long Id { get; set; }

        [JsonProperty("html_url")]
        public string HtmlUrl { get; set; }

        [JsonProperty("diff_url")]
        public string DiffUrl { get; set; }

        [JsonProperty("patch_url")]
        public string PatchUrl { get; set; }

        [JsonProperty("issue_url")]
        public string IssueUrl { get; set; }

        [JsonProperty("number")]
        public long Number { get; set; }

        [JsonProperty("state")]
        public string State { get; set; }

        [JsonProperty("locked")]
        public bool Locked { get; set; }

        [JsonProperty("title")]
        public string Title { get; set; }

        [JsonProperty("user")]
        public User User { get; set; }

        [JsonProperty("body")]
        public string Body { get; set; }

        [JsonProperty("created_at")]
        public System.DateTimeOffset CreatedAt { get; set; }

        [JsonProperty("updated_at")]
        public System.DateTimeOffset UpdatedAt { get; set; }

        [JsonProperty("closed_at")]
        public System.DateTimeOffset ClosedAt { get; set; }

        [JsonProperty("merged_at")]
        public System.DateTimeOffset MergedAt { get; set; }

        [JsonProperty("merge_commit_sha")]
        public string MergeCommitSha { get; set; }

        [JsonProperty("assignee")]
        public object Assignee { get; set; }

        [JsonProperty("assignees")]
        public object[] Assignees { get; set; }

        [JsonProperty("requested_reviewers")]
        public object[] RequestedReviewers { get; set; }

        [JsonProperty("requested_teams")]
        public object[] RequestedTeams { get; set; }

        [JsonProperty("labels")]
        public object[] Labels { get; set; }

        [JsonProperty("milestone")]
        public object Milestone { get; set; }

        [JsonProperty("commits_url")]
        public string CommitsUrl { get; set; }

        [JsonProperty("review_comments_url")]
        public string ReviewCommentsUrl { get; set; }

        [JsonProperty("review_comment_url")]
        public string ReviewCommentUrl { get; set; }

        [JsonProperty("comments_url")]
        public string CommentsUrl { get; set; }

        [JsonProperty("statuses_url")]
        public string StatusesUrl { get; set; }

        [JsonProperty("head")]
        public Base Head { get; set; }

        [JsonProperty("base")]
        public Base Base { get; set; }

        [JsonProperty("_links")]
        public Links Links { get; set; }

        [JsonProperty("author_association")]
        public string AuthorAssociation { get; set; }

        [JsonProperty("merged")]
        public bool Merged { get; set; }

        [JsonProperty("mergeable")]
        public object Mergeable { get; set; }

        [JsonProperty("rebaseable")]
        public object Rebaseable { get; set; }

        [JsonProperty("mergeable_state")]
        public string MergeableState { get; set; }

        [JsonProperty("merged_by")]
        public User MergedBy { get; set; }

        [JsonProperty("comments")]
        public long Comments { get; set; }

        [JsonProperty("review_comments")]
        public long ReviewComments { get; set; }

        [JsonProperty("maintainer_can_modify")]
        public bool MaintainerCanModify { get; set; }

        [JsonProperty("commits")]
        public long Commits { get; set; }

        [JsonProperty("additions")]
        public long Additions { get; set; }

        [JsonProperty("deletions")]
        public long Deletions { get; set; }

        [JsonProperty("changed_files")]
        public long ChangedFiles { get; set; }
    }

    public partial class Base
    {
        [JsonProperty("label")]
        public string Label { get; set; }

        [JsonProperty("ref")]
        public string Ref { get; set; }

        [JsonProperty("sha")]
        public string Sha { get; set; }

        [JsonProperty("user")]
        public User User { get; set; }

        [JsonProperty("repo")]
        public Forkee Repo { get; set; }
    }

    public partial class Links
    {
        [JsonProperty("self")]
        public Comments Self { get; set; }

        [JsonProperty("html")]
        public Comments Html { get; set; }

        [JsonProperty("issue")]
        public Comments Issue { get; set; }

        [JsonProperty("comments")]
        public Comments Comments { get; set; }

        [JsonProperty("review_comments")]
        public Comments ReviewComments { get; set; }

        [JsonProperty("review_comment")]
        public Comments ReviewComment { get; set; }

        [JsonProperty("commits")]
        public Comments Commits { get; set; }

        [JsonProperty("statuses")]
        public Comments Statuses { get; set; }
    }

    public partial class Comments
    {
        [JsonProperty("href")]
        public string Href { get; set; }
    }

    public partial class Release
    {
        [JsonProperty("url")]
        public string Url { get; set; }

        [JsonProperty("assets_url")]
        public string AssetsUrl { get; set; }

        [JsonProperty("upload_url")]
        public string UploadUrl { get; set; }

        [JsonProperty("html_url")]
        public string HtmlUrl { get; set; }

        [JsonProperty("id")]
        public long Id { get; set; }

        [JsonProperty("tag_name")]
        public string TagName { get; set; }

        [JsonProperty("target_commitish")]
        public string TargetCommitish { get; set; }

        [JsonProperty("name")]
        public string Name { get; set; }

        [JsonProperty("draft")]
        public bool Draft { get; set; }

        [JsonProperty("author")]
        public User Author { get; set; }

        [JsonProperty("prerelease")]
        public bool Prerelease { get; set; }

        [JsonProperty("created_at")]
        public System.DateTimeOffset CreatedAt { get; set; }

        [JsonProperty("published_at")]
        public System.DateTimeOffset PublishedAt { get; set; }

        [JsonProperty("assets")]
        public object[] Assets { get; set; }

        [JsonProperty("tarball_url")]
        public string TarballUrl { get; set; }

        [JsonProperty("zipball_url")]
        public string ZipballUrl { get; set; }

        [JsonProperty("body")]
        public string Body { get; set; }
    }

    public partial class Repo
    {
        [JsonProperty("id")]
        public long Id { get; set; }

        [JsonProperty("name")]
        public string Name { get; set; }

        [JsonProperty("url")]
        public string Url { get; set; }
    }

    public partial class Gists
    {
        [JsonProperty("url")]
        public string Url { get; set; }

        [JsonProperty("forks_url")]
        public string ForksUrl { get; set; }

        [JsonProperty("commits_url")]
        public string CommitsUrl { get; set; }

        [JsonProperty("id")]
        public string Id { get; set; }

        [JsonProperty("git_pull_url")]
        public string GitPullUrl { get; set; }

        [JsonProperty("git_push_url")]
        public string GitPushUrl { get; set; }

        [JsonProperty("html_url")]
        public string HtmlUrl { get; set; }

        [JsonProperty("files")]
        public Dictionary<string, File> Files { get; set; }

        [JsonProperty("public")]
        public bool Public { get; set; }

        [JsonProperty("created_at")]
        public System.DateTimeOffset CreatedAt { get; set; }

        [JsonProperty("updated_at")]
        public System.DateTimeOffset UpdatedAt { get; set; }

        [JsonProperty("description")]
        public string Description { get; set; }

        [JsonProperty("comments")]
        public long Comments { get; set; }

        [JsonProperty("user")]
        public object User { get; set; }

        [JsonProperty("comments_url")]
        public string CommentsUrl { get; set; }

        [JsonProperty("owner")]
        public User Owner { get; set; }

        [JsonProperty("truncated")]
        public bool Truncated { get; set; }
    }

    public partial class File
    {
        [JsonProperty("filename")]
        public string Filename { get; set; }

        [JsonProperty("type")]
        public FileType Type { get; set; }

        [JsonProperty("language")]
        public Language? Language { get; set; }

        [JsonProperty("raw_url")]
        public string RawUrl { get; set; }

        [JsonProperty("size")]
        public long Size { get; set; }
    }

    public partial class Meta
    {
        [JsonProperty("verifiable_password_authentication")]
        public bool VerifiablePasswordAuthentication { get; set; }

        [JsonProperty("github_services_sha")]
        public string GithubServicesSha { get; set; }

        [JsonProperty("hooks")]
        public string[] Hooks { get; set; }

        [JsonProperty("git")]
        public string[] Git { get; set; }

        [JsonProperty("pages")]
        public string[] Pages { get; set; }

        [JsonProperty("importer")]
        public string[] Importer { get; set; }
    }

    public enum GravatarId { Empty };

    public enum UserType { Organization, User };

    public enum Language { Apex, Css, JavaScript, Markdown, Text };

    public enum FileType { ApplicationJavascript, TextCss, TextPlain };

    public partial class ApiData
    {
        public static ApiData FromJson(string json) => JsonConvert.DeserializeObject<ApiData>(json, QuickType.Converter.Settings);
    }

    public partial class Emojis
    {
        public static Emojis FromJson(string json) => JsonConvert.DeserializeObject<Emojis>(json, QuickType.Converter.Settings);
    }

    public partial class Events
    {
        public static Events[] FromJson(string json) => JsonConvert.DeserializeObject<Events[]>(json, QuickType.Converter.Settings);
    }

    public partial class Gists
    {
        public static Gists[] FromJson(string json) => JsonConvert.DeserializeObject<Gists[]>(json, QuickType.Converter.Settings);
    }

    public partial class Meta
    {
        public static Meta FromJson(string json) => JsonConvert.DeserializeObject<Meta>(json, QuickType.Converter.Settings);
    }

    static class GravatarIdExtensions
    {
        public static GravatarId? ValueForString(string str)
        {
            switch (str)
            {
                case "": return GravatarId.Empty;
                default: return null;
            }
        }

        public static GravatarId ReadJson(JsonReader reader, JsonSerializer serializer)
        {
            var str = serializer.Deserialize<string>(reader);
            var maybeValue = ValueForString(str);
            if (maybeValue.HasValue) return maybeValue.Value;
            throw new Exception("Unknown enum case " + str);
        }

        public static void WriteJson(this GravatarId value, JsonWriter writer, JsonSerializer serializer)
        {
            switch (value)
            {
                case GravatarId.Empty: serializer.Serialize(writer, ""); break;
            }
        }
    }

    static class UserTypeExtensions
    {
        public static UserType? ValueForString(string str)
        {
            switch (str)
            {
                case "Organization": return UserType.Organization;
                case "User": return UserType.User;
                default: return null;
            }
        }

        public static UserType ReadJson(JsonReader reader, JsonSerializer serializer)
        {
            var str = serializer.Deserialize<string>(reader);
            var maybeValue = ValueForString(str);
            if (maybeValue.HasValue) return maybeValue.Value;
            throw new Exception("Unknown enum case " + str);
        }

        public static void WriteJson(this UserType value, JsonWriter writer, JsonSerializer serializer)
        {
            switch (value)
            {
                case UserType.Organization: serializer.Serialize(writer, "Organization"); break;
                case UserType.User: serializer.Serialize(writer, "User"); break;
            }
        }
    }

    static class LanguageExtensions
    {
        public static Language? ValueForString(string str)
        {
            switch (str)
            {
                case "Apex": return Language.Apex;
                case "CSS": return Language.Css;
                case "JavaScript": return Language.JavaScript;
                case "Markdown": return Language.Markdown;
                case "Text": return Language.Text;
                default: return null;
            }
        }

        public static Language ReadJson(JsonReader reader, JsonSerializer serializer)
        {
            var str = serializer.Deserialize<string>(reader);
            var maybeValue = ValueForString(str);
            if (maybeValue.HasValue) return maybeValue.Value;
            throw new Exception("Unknown enum case " + str);
        }

        public static void WriteJson(this Language value, JsonWriter writer, JsonSerializer serializer)
        {
            switch (value)
            {
                case Language.Apex: serializer.Serialize(writer, "Apex"); break;
                case Language.Css: serializer.Serialize(writer, "CSS"); break;
                case Language.JavaScript: serializer.Serialize(writer, "JavaScript"); break;
                case Language.Markdown: serializer.Serialize(writer, "Markdown"); break;
                case Language.Text: serializer.Serialize(writer, "Text"); break;
            }
        }
    }

    static class FileTypeExtensions
    {
        public static FileType? ValueForString(string str)
        {
            switch (str)
            {
                case "application/javascript": return FileType.ApplicationJavascript;
                case "text/css": return FileType.TextCss;
                case "text/plain": return FileType.TextPlain;
                default: return null;
            }
        }

        public static FileType ReadJson(JsonReader reader, JsonSerializer serializer)
        {
            var str = serializer.Deserialize<string>(reader);
            var maybeValue = ValueForString(str);
            if (maybeValue.HasValue) return maybeValue.Value;
            throw new Exception("Unknown enum case " + str);
        }

        public static void WriteJson(this FileType value, JsonWriter writer, JsonSerializer serializer)
        {
            switch (value)
            {
                case FileType.ApplicationJavascript: serializer.Serialize(writer, "application/javascript"); break;
                case FileType.TextCss: serializer.Serialize(writer, "text/css"); break;
                case FileType.TextPlain: serializer.Serialize(writer, "text/plain"); break;
            }
        }
    }

    public static class Serialize
    {
        public static string ToJson(this ApiData self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this Emojis self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this Events[] self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this Gists[] self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
        public static string ToJson(this Meta self) => JsonConvert.SerializeObject(self, QuickType.Converter.Settings);
    }

    internal class Converter: JsonConverter
    {
        public override bool CanConvert(Type t) => t == typeof(GravatarId) || t == typeof(UserType) || t == typeof(Language) || t == typeof(FileType) || t == typeof(GravatarId?) || t == typeof(UserType?) || t == typeof(Language?) || t == typeof(FileType?);

        public override object ReadJson(JsonReader reader, Type t, object existingValue, JsonSerializer serializer)
        {
            if (t == typeof(GravatarId))
                return GravatarIdExtensions.ReadJson(reader, serializer);
            if (t == typeof(UserType))
                return UserTypeExtensions.ReadJson(reader, serializer);
            if (t == typeof(Language))
                return LanguageExtensions.ReadJson(reader, serializer);
            if (t == typeof(FileType))
                return FileTypeExtensions.ReadJson(reader, serializer);
            if (t == typeof(GravatarId?))
            {
                if (reader.TokenType == JsonToken.Null) return null;
                return GravatarIdExtensions.ReadJson(reader, serializer);
            }
            if (t == typeof(UserType?))
            {
                if (reader.TokenType == JsonToken.Null) return null;
                return UserTypeExtensions.ReadJson(reader, serializer);
            }
            if (t == typeof(Language?))
            {
                if (reader.TokenType == JsonToken.Null) return null;
                return LanguageExtensions.ReadJson(reader, serializer);
            }
            if (t == typeof(FileType?))
            {
                if (reader.TokenType == JsonToken.Null) return null;
                return FileTypeExtensions.ReadJson(reader, serializer);
            }
            throw new Exception("Unknown type");
        }

        public override void WriteJson(JsonWriter writer, object value, JsonSerializer serializer)
        {
            var t = value.GetType();
            if (t == typeof(GravatarId))
            {
                ((GravatarId)value).WriteJson(writer, serializer);
                return;
            }
            if (t == typeof(UserType))
            {
                ((UserType)value).WriteJson(writer, serializer);
                return;
            }
            if (t == typeof(Language))
            {
                ((Language)value).WriteJson(writer, serializer);
                return;
            }
            if (t == typeof(FileType))
            {
                ((FileType)value).WriteJson(writer, serializer);
                return;
            }
            throw new Exception("Unknown type");
        }

        public static readonly JsonSerializerSettings Settings = new JsonSerializerSettings
        {
            MetadataPropertyHandling = MetadataPropertyHandling.Ignore,
            DateParseHandling = DateParseHandling.None,
            Converters = { 
                new Converter(),
                new IsoDateTimeConverter()
                {
                    DateTimeStyles = DateTimeStyles.AssumeUniversal,
                },
            },
        };
    }
}
