// Example code that deserializes and serializes the model.
// extern crate serde;
// #[macro_use]
// extern crate serde_derive;
// extern crate serde_json;
// 
// use generated_module::APIData;
// 
// fn main() {
//     let json = r#"{"answer": 42}"#;
//     let model: APIData = serde_json::from_str(&json).unwrap();
// }

extern crate serde_json;
use std::collections::HashMap;

pub type Events = Vec<EventElement>;
pub type Gists = Vec<GistElement>;

#[derive(Serialize, Deserialize)]
pub struct ApiData {
    #[serde(rename = "current_user_url")]
    current_user_url: String,

    #[serde(rename = "current_user_authorizations_html_url")]
    current_user_authorizations_html_url: String,

    #[serde(rename = "authorizations_url")]
    authorizations_url: String,

    #[serde(rename = "code_search_url")]
    code_search_url: String,

    #[serde(rename = "commit_search_url")]
    commit_search_url: String,

    #[serde(rename = "emails_url")]
    emails_url: String,

    #[serde(rename = "emojis_url")]
    emojis_url: String,

    #[serde(rename = "events_url")]
    events_url: String,

    #[serde(rename = "feeds_url")]
    feeds_url: String,

    #[serde(rename = "followers_url")]
    followers_url: String,

    #[serde(rename = "following_url")]
    following_url: String,

    #[serde(rename = "gists_url")]
    gists_url: String,

    #[serde(rename = "hub_url")]
    hub_url: String,

    #[serde(rename = "issue_search_url")]
    issue_search_url: String,

    #[serde(rename = "issues_url")]
    issues_url: String,

    #[serde(rename = "keys_url")]
    keys_url: String,

    #[serde(rename = "notifications_url")]
    notifications_url: String,

    #[serde(rename = "organization_repositories_url")]
    organization_repositories_url: String,

    #[serde(rename = "organization_url")]
    organization_url: String,

    #[serde(rename = "public_gists_url")]
    public_gists_url: String,

    #[serde(rename = "rate_limit_url")]
    rate_limit_url: String,

    #[serde(rename = "repository_url")]
    repository_url: String,

    #[serde(rename = "repository_search_url")]
    repository_search_url: String,

    #[serde(rename = "current_user_repositories_url")]
    current_user_repositories_url: String,

    #[serde(rename = "starred_url")]
    starred_url: String,

    #[serde(rename = "starred_gists_url")]
    starred_gists_url: String,

    #[serde(rename = "team_url")]
    team_url: String,

    #[serde(rename = "user_url")]
    user_url: String,

    #[serde(rename = "user_organizations_url")]
    user_organizations_url: String,

    #[serde(rename = "user_repositories_url")]
    user_repositories_url: String,

    #[serde(rename = "user_search_url")]
    user_search_url: String,
}

#[derive(Serialize, Deserialize)]
pub struct Emojis {
    #[serde(rename = "+1")]
    the_1: String,

    #[serde(rename = "-1")]
    emojis_1: String,

    #[serde(rename = "100")]
    the_100: String,

    #[serde(rename = "1234")]
    the_1234: String,

    #[serde(rename = "1st_place_medal")]
    the_1_st_place_medal: String,

    #[serde(rename = "2nd_place_medal")]
    the_2_nd_place_medal: String,

    #[serde(rename = "3rd_place_medal")]
    the_3_rd_place_medal: String,

    #[serde(rename = "8ball")]
    the_8_ball: String,

    #[serde(rename = "a")]
    a: String,

    #[serde(rename = "ab")]
    ab: String,

    #[serde(rename = "abc")]
    abc: String,

    #[serde(rename = "abcd")]
    abcd: String,

    #[serde(rename = "accept")]
    accept: String,

    #[serde(rename = "aerial_tramway")]
    aerial_tramway: String,

    #[serde(rename = "afghanistan")]
    afghanistan: String,

    #[serde(rename = "airplane")]
    airplane: String,

    #[serde(rename = "aland_islands")]
    aland_islands: String,

    #[serde(rename = "alarm_clock")]
    alarm_clock: String,

    #[serde(rename = "albania")]
    albania: String,

    #[serde(rename = "alembic")]
    alembic: String,

    #[serde(rename = "algeria")]
    algeria: String,

    #[serde(rename = "alien")]
    alien: String,

    #[serde(rename = "ambulance")]
    ambulance: String,

    #[serde(rename = "american_samoa")]
    american_samoa: String,

    #[serde(rename = "amphora")]
    amphora: String,

    #[serde(rename = "anchor")]
    anchor: String,

    #[serde(rename = "andorra")]
    andorra: String,

    #[serde(rename = "angel")]
    angel: String,

    #[serde(rename = "anger")]
    anger: String,

    #[serde(rename = "angola")]
    angola: String,

    #[serde(rename = "angry")]
    angry: String,

    #[serde(rename = "anguilla")]
    anguilla: String,

    #[serde(rename = "anguished")]
    anguished: String,

    #[serde(rename = "ant")]
    ant: String,

    #[serde(rename = "antarctica")]
    antarctica: String,

    #[serde(rename = "antigua_barbuda")]
    antigua_barbuda: String,

    #[serde(rename = "apple")]
    apple: String,

    #[serde(rename = "aquarius")]
    aquarius: String,

    #[serde(rename = "argentina")]
    argentina: String,

    #[serde(rename = "aries")]
    aries: String,

    #[serde(rename = "armenia")]
    armenia: String,

    #[serde(rename = "arrow_backward")]
    arrow_backward: String,

    #[serde(rename = "arrow_double_down")]
    arrow_double_down: String,

    #[serde(rename = "arrow_double_up")]
    arrow_double_up: String,

    #[serde(rename = "arrow_down")]
    arrow_down: String,

    #[serde(rename = "arrow_down_small")]
    arrow_down_small: String,

    #[serde(rename = "arrow_forward")]
    arrow_forward: String,

    #[serde(rename = "arrow_heading_down")]
    arrow_heading_down: String,

    #[serde(rename = "arrow_heading_up")]
    arrow_heading_up: String,

    #[serde(rename = "arrow_left")]
    arrow_left: String,

    #[serde(rename = "arrow_lower_left")]
    arrow_lower_left: String,

    #[serde(rename = "arrow_lower_right")]
    arrow_lower_right: String,

    #[serde(rename = "arrow_right")]
    arrow_right: String,

    #[serde(rename = "arrow_right_hook")]
    arrow_right_hook: String,

    #[serde(rename = "arrow_up")]
    arrow_up: String,

    #[serde(rename = "arrow_up_down")]
    arrow_up_down: String,

    #[serde(rename = "arrow_up_small")]
    arrow_up_small: String,

    #[serde(rename = "arrow_upper_left")]
    arrow_upper_left: String,

    #[serde(rename = "arrow_upper_right")]
    arrow_upper_right: String,

    #[serde(rename = "arrows_clockwise")]
    arrows_clockwise: String,

    #[serde(rename = "arrows_counterclockwise")]
    arrows_counterclockwise: String,

    #[serde(rename = "art")]
    art: String,

    #[serde(rename = "articulated_lorry")]
    articulated_lorry: String,

    #[serde(rename = "artificial_satellite")]
    artificial_satellite: String,

    #[serde(rename = "aruba")]
    aruba: String,

    #[serde(rename = "asterisk")]
    asterisk: String,

    #[serde(rename = "astonished")]
    astonished: String,

    #[serde(rename = "athletic_shoe")]
    athletic_shoe: String,

    #[serde(rename = "atm")]
    atm: String,

    #[serde(rename = "atom")]
    atom: String,

    #[serde(rename = "atom_symbol")]
    atom_symbol: String,

    #[serde(rename = "australia")]
    australia: String,

    #[serde(rename = "austria")]
    austria: String,

    #[serde(rename = "avocado")]
    avocado: String,

    #[serde(rename = "azerbaijan")]
    azerbaijan: String,

    #[serde(rename = "b")]
    b: String,

    #[serde(rename = "baby")]
    baby: String,

    #[serde(rename = "baby_bottle")]
    baby_bottle: String,

    #[serde(rename = "baby_chick")]
    baby_chick: String,

    #[serde(rename = "baby_symbol")]
    baby_symbol: String,

    #[serde(rename = "back")]
    back: String,

    #[serde(rename = "bacon")]
    bacon: String,

    #[serde(rename = "badminton")]
    badminton: String,

    #[serde(rename = "baggage_claim")]
    baggage_claim: String,

    #[serde(rename = "baguette_bread")]
    baguette_bread: String,

    #[serde(rename = "bahamas")]
    bahamas: String,

    #[serde(rename = "bahrain")]
    bahrain: String,

    #[serde(rename = "balance_scale")]
    balance_scale: String,

    #[serde(rename = "balloon")]
    balloon: String,

    #[serde(rename = "ballot_box")]
    ballot_box: String,

    #[serde(rename = "ballot_box_with_check")]
    ballot_box_with_check: String,

    #[serde(rename = "bamboo")]
    bamboo: String,

    #[serde(rename = "banana")]
    banana: String,

    #[serde(rename = "bangbang")]
    bangbang: String,

    #[serde(rename = "bangladesh")]
    bangladesh: String,

    #[serde(rename = "bank")]
    bank: String,

    #[serde(rename = "bar_chart")]
    bar_chart: String,

    #[serde(rename = "barbados")]
    barbados: String,

    #[serde(rename = "barber")]
    barber: String,

    #[serde(rename = "baseball")]
    baseball: String,

    #[serde(rename = "basecamp")]
    basecamp: String,

    #[serde(rename = "basecampy")]
    basecampy: String,

    #[serde(rename = "basketball")]
    basketball: String,

    #[serde(rename = "basketball_man")]
    basketball_man: String,

    #[serde(rename = "basketball_woman")]
    basketball_woman: String,

    #[serde(rename = "bat")]
    bat: String,

    #[serde(rename = "bath")]
    bath: String,

    #[serde(rename = "bathtub")]
    bathtub: String,

    #[serde(rename = "battery")]
    battery: String,

    #[serde(rename = "beach_umbrella")]
    beach_umbrella: String,

    #[serde(rename = "bear")]
    bear: String,

    #[serde(rename = "bed")]
    bed: String,

    #[serde(rename = "bee")]
    bee: String,

    #[serde(rename = "beer")]
    beer: String,

    #[serde(rename = "beers")]
    beers: String,

    #[serde(rename = "beetle")]
    beetle: String,

    #[serde(rename = "beginner")]
    beginner: String,

    #[serde(rename = "belarus")]
    belarus: String,

    #[serde(rename = "belgium")]
    belgium: String,

    #[serde(rename = "belize")]
    belize: String,

    #[serde(rename = "bell")]
    bell: String,

    #[serde(rename = "bellhop_bell")]
    bellhop_bell: String,

    #[serde(rename = "benin")]
    benin: String,

    #[serde(rename = "bento")]
    bento: String,

    #[serde(rename = "bermuda")]
    bermuda: String,

    #[serde(rename = "bhutan")]
    bhutan: String,

    #[serde(rename = "bicyclist")]
    bicyclist: String,

    #[serde(rename = "bike")]
    bike: String,

    #[serde(rename = "biking_man")]
    biking_man: String,

    #[serde(rename = "biking_woman")]
    biking_woman: String,

    #[serde(rename = "bikini")]
    bikini: String,

    #[serde(rename = "biohazard")]
    biohazard: String,

    #[serde(rename = "bird")]
    bird: String,

    #[serde(rename = "birthday")]
    birthday: String,

    #[serde(rename = "black_circle")]
    black_circle: String,

    #[serde(rename = "black_flag")]
    black_flag: String,

    #[serde(rename = "black_heart")]
    black_heart: String,

    #[serde(rename = "black_joker")]
    black_joker: String,

    #[serde(rename = "black_large_square")]
    black_large_square: String,

    #[serde(rename = "black_medium_small_square")]
    black_medium_small_square: String,

    #[serde(rename = "black_medium_square")]
    black_medium_square: String,

    #[serde(rename = "black_nib")]
    black_nib: String,

    #[serde(rename = "black_small_square")]
    black_small_square: String,

    #[serde(rename = "black_square_button")]
    black_square_button: String,

    #[serde(rename = "blonde_man")]
    blonde_man: String,

    #[serde(rename = "blonde_woman")]
    blonde_woman: String,

    #[serde(rename = "blossom")]
    blossom: String,

    #[serde(rename = "blowfish")]
    blowfish: String,

    #[serde(rename = "blue_book")]
    blue_book: String,

    #[serde(rename = "blue_car")]
    blue_car: String,

    #[serde(rename = "blue_heart")]
    blue_heart: String,

    #[serde(rename = "blush")]
    blush: String,

    #[serde(rename = "boar")]
    boar: String,

    #[serde(rename = "boat")]
    boat: String,

    #[serde(rename = "bolivia")]
    bolivia: String,

    #[serde(rename = "bomb")]
    bomb: String,

    #[serde(rename = "book")]
    book: String,

    #[serde(rename = "bookmark")]
    bookmark: String,

    #[serde(rename = "bookmark_tabs")]
    bookmark_tabs: String,

    #[serde(rename = "books")]
    books: String,

    #[serde(rename = "boom")]
    boom: String,

    #[serde(rename = "boot")]
    boot: String,

    #[serde(rename = "bosnia_herzegovina")]
    bosnia_herzegovina: String,

    #[serde(rename = "botswana")]
    botswana: String,

    #[serde(rename = "bouquet")]
    bouquet: String,

    #[serde(rename = "bow")]
    bow: String,

    #[serde(rename = "bow_and_arrow")]
    bow_and_arrow: String,

    #[serde(rename = "bowing_man")]
    bowing_man: String,

    #[serde(rename = "bowing_woman")]
    bowing_woman: String,

    #[serde(rename = "bowling")]
    bowling: String,

    #[serde(rename = "bowtie")]
    bowtie: String,

    #[serde(rename = "boxing_glove")]
    boxing_glove: String,

    #[serde(rename = "boy")]
    boy: String,

    #[serde(rename = "brazil")]
    brazil: String,

    #[serde(rename = "bread")]
    bread: String,

    #[serde(rename = "bride_with_veil")]
    bride_with_veil: String,

    #[serde(rename = "bridge_at_night")]
    bridge_at_night: String,

    #[serde(rename = "briefcase")]
    briefcase: String,

    #[serde(rename = "british_indian_ocean_territory")]
    british_indian_ocean_territory: String,

    #[serde(rename = "british_virgin_islands")]
    british_virgin_islands: String,

    #[serde(rename = "broken_heart")]
    broken_heart: String,

    #[serde(rename = "brunei")]
    brunei: String,

    #[serde(rename = "bug")]
    bug: String,

    #[serde(rename = "building_construction")]
    building_construction: String,

    #[serde(rename = "bulb")]
    bulb: String,

    #[serde(rename = "bulgaria")]
    bulgaria: String,

    #[serde(rename = "bullettrain_front")]
    bullettrain_front: String,

    #[serde(rename = "bullettrain_side")]
    bullettrain_side: String,

    #[serde(rename = "burkina_faso")]
    burkina_faso: String,

    #[serde(rename = "burrito")]
    burrito: String,

    #[serde(rename = "burundi")]
    burundi: String,

    #[serde(rename = "bus")]
    bus: String,

    #[serde(rename = "business_suit_levitating")]
    business_suit_levitating: String,

    #[serde(rename = "busstop")]
    busstop: String,

    #[serde(rename = "bust_in_silhouette")]
    bust_in_silhouette: String,

    #[serde(rename = "busts_in_silhouette")]
    busts_in_silhouette: String,

    #[serde(rename = "butterfly")]
    butterfly: String,

    #[serde(rename = "cactus")]
    cactus: String,

    #[serde(rename = "cake")]
    cake: String,

    #[serde(rename = "calendar")]
    calendar: String,

    #[serde(rename = "call_me_hand")]
    call_me_hand: String,

    #[serde(rename = "calling")]
    calling: String,

    #[serde(rename = "cambodia")]
    cambodia: String,

    #[serde(rename = "camel")]
    camel: String,

    #[serde(rename = "camera")]
    camera: String,

    #[serde(rename = "camera_flash")]
    camera_flash: String,

    #[serde(rename = "cameroon")]
    cameroon: String,

    #[serde(rename = "camping")]
    camping: String,

    #[serde(rename = "canada")]
    canada: String,

    #[serde(rename = "canary_islands")]
    canary_islands: String,

    #[serde(rename = "cancer")]
    cancer: String,

    #[serde(rename = "candle")]
    candle: String,

    #[serde(rename = "candy")]
    candy: String,

    #[serde(rename = "canoe")]
    canoe: String,

    #[serde(rename = "cape_verde")]
    cape_verde: String,

    #[serde(rename = "capital_abcd")]
    capital_abcd: String,

    #[serde(rename = "capricorn")]
    capricorn: String,

    #[serde(rename = "car")]
    car: String,

    #[serde(rename = "card_file_box")]
    card_file_box: String,

    #[serde(rename = "card_index")]
    card_index: String,

    #[serde(rename = "card_index_dividers")]
    card_index_dividers: String,

    #[serde(rename = "caribbean_netherlands")]
    caribbean_netherlands: String,

    #[serde(rename = "carousel_horse")]
    carousel_horse: String,

    #[serde(rename = "carrot")]
    carrot: String,

    #[serde(rename = "cat")]
    cat: String,

    #[serde(rename = "cat2")]
    cat2: String,

    #[serde(rename = "cayman_islands")]
    cayman_islands: String,

    #[serde(rename = "cd")]
    cd: String,

    #[serde(rename = "central_african_republic")]
    central_african_republic: String,

    #[serde(rename = "chad")]
    chad: String,

    #[serde(rename = "chains")]
    chains: String,

    #[serde(rename = "champagne")]
    champagne: String,

    #[serde(rename = "chart")]
    chart: String,

    #[serde(rename = "chart_with_downwards_trend")]
    chart_with_downwards_trend: String,

    #[serde(rename = "chart_with_upwards_trend")]
    chart_with_upwards_trend: String,

    #[serde(rename = "checkered_flag")]
    checkered_flag: String,

    #[serde(rename = "cheese")]
    cheese: String,

    #[serde(rename = "cherries")]
    cherries: String,

    #[serde(rename = "cherry_blossom")]
    cherry_blossom: String,

    #[serde(rename = "chestnut")]
    chestnut: String,

    #[serde(rename = "chicken")]
    chicken: String,

    #[serde(rename = "children_crossing")]
    children_crossing: String,

    #[serde(rename = "chile")]
    chile: String,

    #[serde(rename = "chipmunk")]
    chipmunk: String,

    #[serde(rename = "chocolate_bar")]
    chocolate_bar: String,

    #[serde(rename = "christmas_island")]
    christmas_island: String,

    #[serde(rename = "christmas_tree")]
    christmas_tree: String,

    #[serde(rename = "church")]
    church: String,

    #[serde(rename = "cinema")]
    cinema: String,

    #[serde(rename = "circus_tent")]
    circus_tent: String,

    #[serde(rename = "city_sunrise")]
    city_sunrise: String,

    #[serde(rename = "city_sunset")]
    city_sunset: String,

    #[serde(rename = "cityscape")]
    cityscape: String,

    #[serde(rename = "cl")]
    cl: String,

    #[serde(rename = "clamp")]
    clamp: String,

    #[serde(rename = "clap")]
    clap: String,

    #[serde(rename = "clapper")]
    clapper: String,

    #[serde(rename = "classical_building")]
    classical_building: String,

    #[serde(rename = "clinking_glasses")]
    clinking_glasses: String,

    #[serde(rename = "clipboard")]
    clipboard: String,

    #[serde(rename = "clock1")]
    clock1: String,

    #[serde(rename = "clock10")]
    clock10: String,

    #[serde(rename = "clock1030")]
    clock1030: String,

    #[serde(rename = "clock11")]
    clock11: String,

    #[serde(rename = "clock1130")]
    clock1130: String,

    #[serde(rename = "clock12")]
    clock12: String,

    #[serde(rename = "clock1230")]
    clock1230: String,

    #[serde(rename = "clock130")]
    clock130: String,

    #[serde(rename = "clock2")]
    clock2: String,

    #[serde(rename = "clock230")]
    clock230: String,

    #[serde(rename = "clock3")]
    clock3: String,

    #[serde(rename = "clock330")]
    clock330: String,

    #[serde(rename = "clock4")]
    clock4: String,

    #[serde(rename = "clock430")]
    clock430: String,

    #[serde(rename = "clock5")]
    clock5: String,

    #[serde(rename = "clock530")]
    clock530: String,

    #[serde(rename = "clock6")]
    clock6: String,

    #[serde(rename = "clock630")]
    clock630: String,

    #[serde(rename = "clock7")]
    clock7: String,

    #[serde(rename = "clock730")]
    clock730: String,

    #[serde(rename = "clock8")]
    clock8: String,

    #[serde(rename = "clock830")]
    clock830: String,

    #[serde(rename = "clock9")]
    clock9: String,

    #[serde(rename = "clock930")]
    clock930: String,

    #[serde(rename = "closed_book")]
    closed_book: String,

    #[serde(rename = "closed_lock_with_key")]
    closed_lock_with_key: String,

    #[serde(rename = "closed_umbrella")]
    closed_umbrella: String,

    #[serde(rename = "cloud")]
    cloud: String,

    #[serde(rename = "cloud_with_lightning")]
    cloud_with_lightning: String,

    #[serde(rename = "cloud_with_lightning_and_rain")]
    cloud_with_lightning_and_rain: String,

    #[serde(rename = "cloud_with_rain")]
    cloud_with_rain: String,

    #[serde(rename = "cloud_with_snow")]
    cloud_with_snow: String,

    #[serde(rename = "clown_face")]
    clown_face: String,

    #[serde(rename = "clubs")]
    clubs: String,

    #[serde(rename = "cn")]
    cn: String,

    #[serde(rename = "cocktail")]
    cocktail: String,

    #[serde(rename = "cocos_islands")]
    cocos_islands: String,

    #[serde(rename = "coffee")]
    coffee: String,

    #[serde(rename = "coffin")]
    coffin: String,

    #[serde(rename = "cold_sweat")]
    cold_sweat: String,

    #[serde(rename = "collision")]
    collision: String,

    #[serde(rename = "colombia")]
    colombia: String,

    #[serde(rename = "comet")]
    comet: String,

    #[serde(rename = "comoros")]
    comoros: String,

    #[serde(rename = "computer")]
    computer: String,

    #[serde(rename = "computer_mouse")]
    computer_mouse: String,

    #[serde(rename = "confetti_ball")]
    confetti_ball: String,

    #[serde(rename = "confounded")]
    confounded: String,

    #[serde(rename = "confused")]
    confused: String,

    #[serde(rename = "congo_brazzaville")]
    congo_brazzaville: String,

    #[serde(rename = "congo_kinshasa")]
    congo_kinshasa: String,

    #[serde(rename = "congratulations")]
    congratulations: String,

    #[serde(rename = "construction")]
    construction: String,

    #[serde(rename = "construction_worker")]
    construction_worker: String,

    #[serde(rename = "construction_worker_man")]
    construction_worker_man: String,

    #[serde(rename = "construction_worker_woman")]
    construction_worker_woman: String,

    #[serde(rename = "control_knobs")]
    control_knobs: String,

    #[serde(rename = "convenience_store")]
    convenience_store: String,

    #[serde(rename = "cook_islands")]
    cook_islands: String,

    #[serde(rename = "cookie")]
    cookie: String,

    #[serde(rename = "cool")]
    cool: String,

    #[serde(rename = "cop")]
    cop: String,

    #[serde(rename = "copyright")]
    copyright: String,

    #[serde(rename = "corn")]
    corn: String,

    #[serde(rename = "costa_rica")]
    costa_rica: String,

    #[serde(rename = "cote_divoire")]
    cote_divoire: String,

    #[serde(rename = "couch_and_lamp")]
    couch_and_lamp: String,

    #[serde(rename = "couple")]
    couple: String,

    #[serde(rename = "couple_with_heart")]
    couple_with_heart: String,

    #[serde(rename = "couple_with_heart_man_man")]
    couple_with_heart_man_man: String,

    #[serde(rename = "couple_with_heart_woman_man")]
    couple_with_heart_woman_man: String,

    #[serde(rename = "couple_with_heart_woman_woman")]
    couple_with_heart_woman_woman: String,

    #[serde(rename = "couplekiss_man_man")]
    couplekiss_man_man: String,

    #[serde(rename = "couplekiss_man_woman")]
    couplekiss_man_woman: String,

    #[serde(rename = "couplekiss_woman_woman")]
    couplekiss_woman_woman: String,

    #[serde(rename = "cow")]
    cow: String,

    #[serde(rename = "cow2")]
    cow2: String,

    #[serde(rename = "cowboy_hat_face")]
    cowboy_hat_face: String,

    #[serde(rename = "crab")]
    crab: String,

    #[serde(rename = "crayon")]
    crayon: String,

    #[serde(rename = "credit_card")]
    credit_card: String,

    #[serde(rename = "crescent_moon")]
    crescent_moon: String,

    #[serde(rename = "cricket")]
    cricket: String,

    #[serde(rename = "croatia")]
    croatia: String,

    #[serde(rename = "crocodile")]
    crocodile: String,

    #[serde(rename = "croissant")]
    croissant: String,

    #[serde(rename = "crossed_fingers")]
    crossed_fingers: String,

    #[serde(rename = "crossed_flags")]
    crossed_flags: String,

    #[serde(rename = "crossed_swords")]
    crossed_swords: String,

    #[serde(rename = "crown")]
    crown: String,

    #[serde(rename = "cry")]
    cry: String,

    #[serde(rename = "crying_cat_face")]
    crying_cat_face: String,

    #[serde(rename = "crystal_ball")]
    crystal_ball: String,

    #[serde(rename = "cuba")]
    cuba: String,

    #[serde(rename = "cucumber")]
    cucumber: String,

    #[serde(rename = "cupid")]
    cupid: String,

    #[serde(rename = "curacao")]
    curacao: String,

    #[serde(rename = "curly_loop")]
    curly_loop: String,

    #[serde(rename = "currency_exchange")]
    currency_exchange: String,

    #[serde(rename = "curry")]
    curry: String,

    #[serde(rename = "custard")]
    custard: String,

    #[serde(rename = "customs")]
    customs: String,

    #[serde(rename = "cyclone")]
    cyclone: String,

    #[serde(rename = "cyprus")]
    cyprus: String,

    #[serde(rename = "czech_republic")]
    czech_republic: String,

    #[serde(rename = "dagger")]
    dagger: String,

    #[serde(rename = "dancer")]
    dancer: String,

    #[serde(rename = "dancers")]
    dancers: String,

    #[serde(rename = "dancing_men")]
    dancing_men: String,

    #[serde(rename = "dancing_women")]
    dancing_women: String,

    #[serde(rename = "dango")]
    dango: String,

    #[serde(rename = "dark_sunglasses")]
    dark_sunglasses: String,

    #[serde(rename = "dart")]
    dart: String,

    #[serde(rename = "dash")]
    dash: String,

    #[serde(rename = "date")]
    date: String,

    #[serde(rename = "de")]
    de: String,

    #[serde(rename = "deciduous_tree")]
    deciduous_tree: String,

    #[serde(rename = "deer")]
    deer: String,

    #[serde(rename = "denmark")]
    denmark: String,

    #[serde(rename = "department_store")]
    department_store: String,

    #[serde(rename = "derelict_house")]
    derelict_house: String,

    #[serde(rename = "desert")]
    desert: String,

    #[serde(rename = "desert_island")]
    desert_island: String,

    #[serde(rename = "desktop_computer")]
    desktop_computer: String,

    #[serde(rename = "detective")]
    detective: String,

    #[serde(rename = "diamond_shape_with_a_dot_inside")]
    diamond_shape_with_a_dot_inside: String,

    #[serde(rename = "diamonds")]
    diamonds: String,

    #[serde(rename = "disappointed")]
    disappointed: String,

    #[serde(rename = "disappointed_relieved")]
    disappointed_relieved: String,

    #[serde(rename = "dizzy")]
    dizzy: String,

    #[serde(rename = "dizzy_face")]
    dizzy_face: String,

    #[serde(rename = "djibouti")]
    djibouti: String,

    #[serde(rename = "do_not_litter")]
    do_not_litter: String,

    #[serde(rename = "dog")]
    dog: String,

    #[serde(rename = "dog2")]
    dog2: String,

    #[serde(rename = "dollar")]
    dollar: String,

    #[serde(rename = "dolls")]
    dolls: String,

    #[serde(rename = "dolphin")]
    dolphin: String,

    #[serde(rename = "dominica")]
    dominica: String,

    #[serde(rename = "dominican_republic")]
    dominican_republic: String,

    #[serde(rename = "door")]
    door: String,

    #[serde(rename = "doughnut")]
    doughnut: String,

    #[serde(rename = "dove")]
    dove: String,

    #[serde(rename = "dragon")]
    dragon: String,

    #[serde(rename = "dragon_face")]
    dragon_face: String,

    #[serde(rename = "dress")]
    dress: String,

    #[serde(rename = "dromedary_camel")]
    dromedary_camel: String,

    #[serde(rename = "drooling_face")]
    drooling_face: String,

    #[serde(rename = "droplet")]
    droplet: String,

    #[serde(rename = "drum")]
    drum: String,

    #[serde(rename = "duck")]
    duck: String,

    #[serde(rename = "dvd")]
    dvd: String,

    #[serde(rename = "e-mail")]
    e_mail: String,

    #[serde(rename = "eagle")]
    eagle: String,

    #[serde(rename = "ear")]
    ear: String,

    #[serde(rename = "ear_of_rice")]
    ear_of_rice: String,

    #[serde(rename = "earth_africa")]
    earth_africa: String,

    #[serde(rename = "earth_americas")]
    earth_americas: String,

    #[serde(rename = "earth_asia")]
    earth_asia: String,

    #[serde(rename = "ecuador")]
    ecuador: String,

    #[serde(rename = "egg")]
    egg: String,

    #[serde(rename = "eggplant")]
    eggplant: String,

    #[serde(rename = "egypt")]
    egypt: String,

    #[serde(rename = "eight")]
    eight: String,

    #[serde(rename = "eight_pointed_black_star")]
    eight_pointed_black_star: String,

    #[serde(rename = "eight_spoked_asterisk")]
    eight_spoked_asterisk: String,

    #[serde(rename = "el_salvador")]
    el_salvador: String,

    #[serde(rename = "electric_plug")]
    electric_plug: String,

    #[serde(rename = "electron")]
    electron: String,

    #[serde(rename = "elephant")]
    elephant: String,

    #[serde(rename = "email")]
    email: String,

    #[serde(rename = "end")]
    end: String,

    #[serde(rename = "envelope")]
    envelope: String,

    #[serde(rename = "envelope_with_arrow")]
    envelope_with_arrow: String,

    #[serde(rename = "equatorial_guinea")]
    equatorial_guinea: String,

    #[serde(rename = "eritrea")]
    eritrea: String,

    #[serde(rename = "es")]
    es: String,

    #[serde(rename = "estonia")]
    estonia: String,

    #[serde(rename = "ethiopia")]
    ethiopia: String,

    #[serde(rename = "eu")]
    eu: String,

    #[serde(rename = "euro")]
    euro: String,

    #[serde(rename = "european_castle")]
    european_castle: String,

    #[serde(rename = "european_post_office")]
    european_post_office: String,

    #[serde(rename = "european_union")]
    european_union: String,

    #[serde(rename = "evergreen_tree")]
    evergreen_tree: String,

    #[serde(rename = "exclamation")]
    exclamation: String,

    #[serde(rename = "expressionless")]
    expressionless: String,

    #[serde(rename = "eye")]
    eye: String,

    #[serde(rename = "eye_speech_bubble")]
    eye_speech_bubble: String,

    #[serde(rename = "eyeglasses")]
    eyeglasses: String,

    #[serde(rename = "eyes")]
    eyes: String,

    #[serde(rename = "face_with_head_bandage")]
    face_with_head_bandage: String,

    #[serde(rename = "face_with_thermometer")]
    face_with_thermometer: String,

    #[serde(rename = "facepunch")]
    facepunch: String,

    #[serde(rename = "factory")]
    factory: String,

    #[serde(rename = "falkland_islands")]
    falkland_islands: String,

    #[serde(rename = "fallen_leaf")]
    fallen_leaf: String,

    #[serde(rename = "family")]
    family: String,

    #[serde(rename = "family_man_boy")]
    family_man_boy: String,

    #[serde(rename = "family_man_boy_boy")]
    family_man_boy_boy: String,

    #[serde(rename = "family_man_girl")]
    family_man_girl: String,

    #[serde(rename = "family_man_girl_boy")]
    family_man_girl_boy: String,

    #[serde(rename = "family_man_girl_girl")]
    family_man_girl_girl: String,

    #[serde(rename = "family_man_man_boy")]
    family_man_man_boy: String,

    #[serde(rename = "family_man_man_boy_boy")]
    family_man_man_boy_boy: String,

    #[serde(rename = "family_man_man_girl")]
    family_man_man_girl: String,

    #[serde(rename = "family_man_man_girl_boy")]
    family_man_man_girl_boy: String,

    #[serde(rename = "family_man_man_girl_girl")]
    family_man_man_girl_girl: String,

    #[serde(rename = "family_man_woman_boy")]
    family_man_woman_boy: String,

    #[serde(rename = "family_man_woman_boy_boy")]
    family_man_woman_boy_boy: String,

    #[serde(rename = "family_man_woman_girl")]
    family_man_woman_girl: String,

    #[serde(rename = "family_man_woman_girl_boy")]
    family_man_woman_girl_boy: String,

    #[serde(rename = "family_man_woman_girl_girl")]
    family_man_woman_girl_girl: String,

    #[serde(rename = "family_woman_boy")]
    family_woman_boy: String,

    #[serde(rename = "family_woman_boy_boy")]
    family_woman_boy_boy: String,

    #[serde(rename = "family_woman_girl")]
    family_woman_girl: String,

    #[serde(rename = "family_woman_girl_boy")]
    family_woman_girl_boy: String,

    #[serde(rename = "family_woman_girl_girl")]
    family_woman_girl_girl: String,

    #[serde(rename = "family_woman_woman_boy")]
    family_woman_woman_boy: String,

    #[serde(rename = "family_woman_woman_boy_boy")]
    family_woman_woman_boy_boy: String,

    #[serde(rename = "family_woman_woman_girl")]
    family_woman_woman_girl: String,

    #[serde(rename = "family_woman_woman_girl_boy")]
    family_woman_woman_girl_boy: String,

    #[serde(rename = "family_woman_woman_girl_girl")]
    family_woman_woman_girl_girl: String,

    #[serde(rename = "faroe_islands")]
    faroe_islands: String,

    #[serde(rename = "fast_forward")]
    fast_forward: String,

    #[serde(rename = "fax")]
    fax: String,

    #[serde(rename = "fearful")]
    fearful: String,

    #[serde(rename = "feelsgood")]
    feelsgood: String,

    #[serde(rename = "feet")]
    feet: String,

    #[serde(rename = "female_detective")]
    female_detective: String,

    #[serde(rename = "ferris_wheel")]
    ferris_wheel: String,

    #[serde(rename = "ferry")]
    ferry: String,

    #[serde(rename = "field_hockey")]
    field_hockey: String,

    #[serde(rename = "fiji")]
    fiji: String,

    #[serde(rename = "file_cabinet")]
    file_cabinet: String,

    #[serde(rename = "file_folder")]
    file_folder: String,

    #[serde(rename = "film_projector")]
    film_projector: String,

    #[serde(rename = "film_strip")]
    film_strip: String,

    #[serde(rename = "finland")]
    finland: String,

    #[serde(rename = "finnadie")]
    finnadie: String,

    #[serde(rename = "fire")]
    fire: String,

    #[serde(rename = "fire_engine")]
    fire_engine: String,

    #[serde(rename = "fireworks")]
    fireworks: String,

    #[serde(rename = "first_quarter_moon")]
    first_quarter_moon: String,

    #[serde(rename = "first_quarter_moon_with_face")]
    first_quarter_moon_with_face: String,

    #[serde(rename = "fish")]
    fish: String,

    #[serde(rename = "fish_cake")]
    fish_cake: String,

    #[serde(rename = "fishing_pole_and_fish")]
    fishing_pole_and_fish: String,

    #[serde(rename = "fist")]
    fist: String,

    #[serde(rename = "fist_left")]
    fist_left: String,

    #[serde(rename = "fist_oncoming")]
    fist_oncoming: String,

    #[serde(rename = "fist_raised")]
    fist_raised: String,

    #[serde(rename = "fist_right")]
    fist_right: String,

    #[serde(rename = "five")]
    five: String,

    #[serde(rename = "flags")]
    flags: String,

    #[serde(rename = "flashlight")]
    flashlight: String,

    #[serde(rename = "fleur_de_lis")]
    fleur_de_lis: String,

    #[serde(rename = "flight_arrival")]
    flight_arrival: String,

    #[serde(rename = "flight_departure")]
    flight_departure: String,

    #[serde(rename = "flipper")]
    flipper: String,

    #[serde(rename = "floppy_disk")]
    floppy_disk: String,

    #[serde(rename = "flower_playing_cards")]
    flower_playing_cards: String,

    #[serde(rename = "flushed")]
    flushed: String,

    #[serde(rename = "fog")]
    fog: String,

    #[serde(rename = "foggy")]
    foggy: String,

    #[serde(rename = "football")]
    football: String,

    #[serde(rename = "footprints")]
    footprints: String,

    #[serde(rename = "fork_and_knife")]
    fork_and_knife: String,

    #[serde(rename = "fountain")]
    fountain: String,

    #[serde(rename = "fountain_pen")]
    fountain_pen: String,

    #[serde(rename = "four")]
    four: String,

    #[serde(rename = "four_leaf_clover")]
    four_leaf_clover: String,

    #[serde(rename = "fox_face")]
    fox_face: String,

    #[serde(rename = "fr")]
    fr: String,

    #[serde(rename = "framed_picture")]
    framed_picture: String,

    #[serde(rename = "free")]
    free: String,

    #[serde(rename = "french_guiana")]
    french_guiana: String,

    #[serde(rename = "french_polynesia")]
    french_polynesia: String,

    #[serde(rename = "french_southern_territories")]
    french_southern_territories: String,

    #[serde(rename = "fried_egg")]
    fried_egg: String,

    #[serde(rename = "fried_shrimp")]
    fried_shrimp: String,

    #[serde(rename = "fries")]
    fries: String,

    #[serde(rename = "frog")]
    frog: String,

    #[serde(rename = "frowning")]
    frowning: String,

    #[serde(rename = "frowning_face")]
    frowning_face: String,

    #[serde(rename = "frowning_man")]
    frowning_man: String,

    #[serde(rename = "frowning_woman")]
    frowning_woman: String,

    #[serde(rename = "fu")]
    fu: String,

    #[serde(rename = "fuelpump")]
    fuelpump: String,

    #[serde(rename = "full_moon")]
    full_moon: String,

    #[serde(rename = "full_moon_with_face")]
    full_moon_with_face: String,

    #[serde(rename = "funeral_urn")]
    funeral_urn: String,

    #[serde(rename = "gabon")]
    gabon: String,

    #[serde(rename = "gambia")]
    gambia: String,

    #[serde(rename = "game_die")]
    game_die: String,

    #[serde(rename = "gb")]
    gb: String,

    #[serde(rename = "gear")]
    gear: String,

    #[serde(rename = "gem")]
    gem: String,

    #[serde(rename = "gemini")]
    gemini: String,

    #[serde(rename = "georgia")]
    georgia: String,

    #[serde(rename = "ghana")]
    ghana: String,

    #[serde(rename = "ghost")]
    ghost: String,

    #[serde(rename = "gibraltar")]
    gibraltar: String,

    #[serde(rename = "gift")]
    gift: String,

    #[serde(rename = "gift_heart")]
    gift_heart: String,

    #[serde(rename = "girl")]
    girl: String,

    #[serde(rename = "globe_with_meridians")]
    globe_with_meridians: String,

    #[serde(rename = "goal_net")]
    goal_net: String,

    #[serde(rename = "goat")]
    goat: String,

    #[serde(rename = "goberserk")]
    goberserk: String,

    #[serde(rename = "godmode")]
    godmode: String,

    #[serde(rename = "golf")]
    golf: String,

    #[serde(rename = "golfing_man")]
    golfing_man: String,

    #[serde(rename = "golfing_woman")]
    golfing_woman: String,

    #[serde(rename = "gorilla")]
    gorilla: String,

    #[serde(rename = "grapes")]
    grapes: String,

    #[serde(rename = "greece")]
    greece: String,

    #[serde(rename = "green_apple")]
    green_apple: String,

    #[serde(rename = "green_book")]
    green_book: String,

    #[serde(rename = "green_heart")]
    green_heart: String,

    #[serde(rename = "green_salad")]
    green_salad: String,

    #[serde(rename = "greenland")]
    greenland: String,

    #[serde(rename = "grenada")]
    grenada: String,

    #[serde(rename = "grey_exclamation")]
    grey_exclamation: String,

    #[serde(rename = "grey_question")]
    grey_question: String,

    #[serde(rename = "grimacing")]
    grimacing: String,

    #[serde(rename = "grin")]
    grin: String,

    #[serde(rename = "grinning")]
    grinning: String,

    #[serde(rename = "guadeloupe")]
    guadeloupe: String,

    #[serde(rename = "guam")]
    guam: String,

    #[serde(rename = "guardsman")]
    guardsman: String,

    #[serde(rename = "guardswoman")]
    guardswoman: String,

    #[serde(rename = "guatemala")]
    guatemala: String,

    #[serde(rename = "guernsey")]
    guernsey: String,

    #[serde(rename = "guinea")]
    guinea: String,

    #[serde(rename = "guinea_bissau")]
    guinea_bissau: String,

    #[serde(rename = "guitar")]
    guitar: String,

    #[serde(rename = "gun")]
    gun: String,

    #[serde(rename = "guyana")]
    guyana: String,

    #[serde(rename = "haircut")]
    haircut: String,

    #[serde(rename = "haircut_man")]
    haircut_man: String,

    #[serde(rename = "haircut_woman")]
    haircut_woman: String,

    #[serde(rename = "haiti")]
    haiti: String,

    #[serde(rename = "hamburger")]
    hamburger: String,

    #[serde(rename = "hammer")]
    hammer: String,

    #[serde(rename = "hammer_and_pick")]
    hammer_and_pick: String,

    #[serde(rename = "hammer_and_wrench")]
    hammer_and_wrench: String,

    #[serde(rename = "hamster")]
    hamster: String,

    #[serde(rename = "hand")]
    hand: String,

    #[serde(rename = "handbag")]
    handbag: String,

    #[serde(rename = "handshake")]
    handshake: String,

    #[serde(rename = "hankey")]
    hankey: String,

    #[serde(rename = "hash")]
    hash: String,

    #[serde(rename = "hatched_chick")]
    hatched_chick: String,

    #[serde(rename = "hatching_chick")]
    hatching_chick: String,

    #[serde(rename = "headphones")]
    headphones: String,

    #[serde(rename = "hear_no_evil")]
    hear_no_evil: String,

    #[serde(rename = "heart")]
    heart: String,

    #[serde(rename = "heart_decoration")]
    heart_decoration: String,

    #[serde(rename = "heart_eyes")]
    heart_eyes: String,

    #[serde(rename = "heart_eyes_cat")]
    heart_eyes_cat: String,

    #[serde(rename = "heartbeat")]
    heartbeat: String,

    #[serde(rename = "heartpulse")]
    heartpulse: String,

    #[serde(rename = "hearts")]
    hearts: String,

    #[serde(rename = "heavy_check_mark")]
    heavy_check_mark: String,

    #[serde(rename = "heavy_division_sign")]
    heavy_division_sign: String,

    #[serde(rename = "heavy_dollar_sign")]
    heavy_dollar_sign: String,

    #[serde(rename = "heavy_exclamation_mark")]
    heavy_exclamation_mark: String,

    #[serde(rename = "heavy_heart_exclamation")]
    heavy_heart_exclamation: String,

    #[serde(rename = "heavy_minus_sign")]
    heavy_minus_sign: String,

    #[serde(rename = "heavy_multiplication_x")]
    heavy_multiplication_x: String,

    #[serde(rename = "heavy_plus_sign")]
    heavy_plus_sign: String,

    #[serde(rename = "helicopter")]
    helicopter: String,

    #[serde(rename = "herb")]
    herb: String,

    #[serde(rename = "hibiscus")]
    hibiscus: String,

    #[serde(rename = "high_brightness")]
    high_brightness: String,

    #[serde(rename = "high_heel")]
    high_heel: String,

    #[serde(rename = "hocho")]
    hocho: String,

    #[serde(rename = "hole")]
    hole: String,

    #[serde(rename = "honduras")]
    honduras: String,

    #[serde(rename = "honey_pot")]
    honey_pot: String,

    #[serde(rename = "honeybee")]
    honeybee: String,

    #[serde(rename = "hong_kong")]
    hong_kong: String,

    #[serde(rename = "horse")]
    horse: String,

    #[serde(rename = "horse_racing")]
    horse_racing: String,

    #[serde(rename = "hospital")]
    hospital: String,

    #[serde(rename = "hot_pepper")]
    hot_pepper: String,

    #[serde(rename = "hotdog")]
    hotdog: String,

    #[serde(rename = "hotel")]
    hotel: String,

    #[serde(rename = "hotsprings")]
    hotsprings: String,

    #[serde(rename = "hourglass")]
    hourglass: String,

    #[serde(rename = "hourglass_flowing_sand")]
    hourglass_flowing_sand: String,

    #[serde(rename = "house")]
    house: String,

    #[serde(rename = "house_with_garden")]
    house_with_garden: String,

    #[serde(rename = "houses")]
    houses: String,

    #[serde(rename = "hugs")]
    hugs: String,

    #[serde(rename = "hungary")]
    hungary: String,

    #[serde(rename = "hurtrealbad")]
    hurtrealbad: String,

    #[serde(rename = "hushed")]
    hushed: String,

    #[serde(rename = "ice_cream")]
    ice_cream: String,

    #[serde(rename = "ice_hockey")]
    ice_hockey: String,

    #[serde(rename = "ice_skate")]
    ice_skate: String,

    #[serde(rename = "icecream")]
    icecream: String,

    #[serde(rename = "iceland")]
    iceland: String,

    #[serde(rename = "id")]
    id: String,

    #[serde(rename = "ideograph_advantage")]
    ideograph_advantage: String,

    #[serde(rename = "imp")]
    imp: String,

    #[serde(rename = "inbox_tray")]
    inbox_tray: String,

    #[serde(rename = "incoming_envelope")]
    incoming_envelope: String,

    #[serde(rename = "india")]
    india: String,

    #[serde(rename = "indonesia")]
    indonesia: String,

    #[serde(rename = "information_desk_person")]
    information_desk_person: String,

    #[serde(rename = "information_source")]
    information_source: String,

    #[serde(rename = "innocent")]
    innocent: String,

    #[serde(rename = "interrobang")]
    interrobang: String,

    #[serde(rename = "iphone")]
    iphone: String,

    #[serde(rename = "iran")]
    iran: String,

    #[serde(rename = "iraq")]
    iraq: String,

    #[serde(rename = "ireland")]
    ireland: String,

    #[serde(rename = "isle_of_man")]
    isle_of_man: String,

    #[serde(rename = "israel")]
    israel: String,

    #[serde(rename = "it")]
    it: String,

    #[serde(rename = "izakaya_lantern")]
    izakaya_lantern: String,

    #[serde(rename = "jack_o_lantern")]
    jack_o_lantern: String,

    #[serde(rename = "jamaica")]
    jamaica: String,

    #[serde(rename = "japan")]
    japan: String,

    #[serde(rename = "japanese_castle")]
    japanese_castle: String,

    #[serde(rename = "japanese_goblin")]
    japanese_goblin: String,

    #[serde(rename = "japanese_ogre")]
    japanese_ogre: String,

    #[serde(rename = "jeans")]
    jeans: String,

    #[serde(rename = "jersey")]
    jersey: String,

    #[serde(rename = "jordan")]
    jordan: String,

    #[serde(rename = "joy")]
    joy: String,

    #[serde(rename = "joy_cat")]
    joy_cat: String,

    #[serde(rename = "joystick")]
    joystick: String,

    #[serde(rename = "jp")]
    jp: String,

    #[serde(rename = "kaaba")]
    kaaba: String,

    #[serde(rename = "kazakhstan")]
    kazakhstan: String,

    #[serde(rename = "kenya")]
    kenya: String,

    #[serde(rename = "key")]
    key: String,

    #[serde(rename = "keyboard")]
    keyboard: String,

    #[serde(rename = "keycap_ten")]
    keycap_ten: String,

    #[serde(rename = "kick_scooter")]
    kick_scooter: String,

    #[serde(rename = "kimono")]
    kimono: String,

    #[serde(rename = "kiribati")]
    kiribati: String,

    #[serde(rename = "kiss")]
    kiss: String,

    #[serde(rename = "kissing")]
    kissing: String,

    #[serde(rename = "kissing_cat")]
    kissing_cat: String,

    #[serde(rename = "kissing_closed_eyes")]
    kissing_closed_eyes: String,

    #[serde(rename = "kissing_heart")]
    kissing_heart: String,

    #[serde(rename = "kissing_smiling_eyes")]
    kissing_smiling_eyes: String,

    #[serde(rename = "kiwi_fruit")]
    kiwi_fruit: String,

    #[serde(rename = "knife")]
    knife: String,

    #[serde(rename = "koala")]
    koala: String,

    #[serde(rename = "koko")]
    koko: String,

    #[serde(rename = "kosovo")]
    kosovo: String,

    #[serde(rename = "kr")]
    kr: String,

    #[serde(rename = "kuwait")]
    kuwait: String,

    #[serde(rename = "kyrgyzstan")]
    kyrgyzstan: String,

    #[serde(rename = "label")]
    label: String,

    #[serde(rename = "lantern")]
    lantern: String,

    #[serde(rename = "laos")]
    laos: String,

    #[serde(rename = "large_blue_circle")]
    large_blue_circle: String,

    #[serde(rename = "large_blue_diamond")]
    large_blue_diamond: String,

    #[serde(rename = "large_orange_diamond")]
    large_orange_diamond: String,

    #[serde(rename = "last_quarter_moon")]
    last_quarter_moon: String,

    #[serde(rename = "last_quarter_moon_with_face")]
    last_quarter_moon_with_face: String,

    #[serde(rename = "latin_cross")]
    latin_cross: String,

    #[serde(rename = "latvia")]
    latvia: String,

    #[serde(rename = "laughing")]
    laughing: String,

    #[serde(rename = "leaves")]
    leaves: String,

    #[serde(rename = "lebanon")]
    lebanon: String,

    #[serde(rename = "ledger")]
    ledger: String,

    #[serde(rename = "left_luggage")]
    left_luggage: String,

    #[serde(rename = "left_right_arrow")]
    left_right_arrow: String,

    #[serde(rename = "leftwards_arrow_with_hook")]
    leftwards_arrow_with_hook: String,

    #[serde(rename = "lemon")]
    lemon: String,

    #[serde(rename = "leo")]
    leo: String,

    #[serde(rename = "leopard")]
    leopard: String,

    #[serde(rename = "lesotho")]
    lesotho: String,

    #[serde(rename = "level_slider")]
    level_slider: String,

    #[serde(rename = "liberia")]
    liberia: String,

    #[serde(rename = "libra")]
    libra: String,

    #[serde(rename = "libya")]
    libya: String,

    #[serde(rename = "liechtenstein")]
    liechtenstein: String,

    #[serde(rename = "light_rail")]
    light_rail: String,

    #[serde(rename = "link")]
    link: String,

    #[serde(rename = "lion")]
    lion: String,

    #[serde(rename = "lips")]
    lips: String,

    #[serde(rename = "lipstick")]
    lipstick: String,

    #[serde(rename = "lithuania")]
    lithuania: String,

    #[serde(rename = "lizard")]
    lizard: String,

    #[serde(rename = "lock")]
    lock: String,

    #[serde(rename = "lock_with_ink_pen")]
    lock_with_ink_pen: String,

    #[serde(rename = "lollipop")]
    lollipop: String,

    #[serde(rename = "loop")]
    emojis_loop: String,

    #[serde(rename = "loud_sound")]
    loud_sound: String,

    #[serde(rename = "loudspeaker")]
    loudspeaker: String,

    #[serde(rename = "love_hotel")]
    love_hotel: String,

    #[serde(rename = "love_letter")]
    love_letter: String,

    #[serde(rename = "low_brightness")]
    low_brightness: String,

    #[serde(rename = "luxembourg")]
    luxembourg: String,

    #[serde(rename = "lying_face")]
    lying_face: String,

    #[serde(rename = "m")]
    m: String,

    #[serde(rename = "macau")]
    macau: String,

    #[serde(rename = "macedonia")]
    macedonia: String,

    #[serde(rename = "madagascar")]
    madagascar: String,

    #[serde(rename = "mag")]
    mag: String,

    #[serde(rename = "mag_right")]
    mag_right: String,

    #[serde(rename = "mahjong")]
    mahjong: String,

    #[serde(rename = "mailbox")]
    mailbox: String,

    #[serde(rename = "mailbox_closed")]
    mailbox_closed: String,

    #[serde(rename = "mailbox_with_mail")]
    mailbox_with_mail: String,

    #[serde(rename = "mailbox_with_no_mail")]
    mailbox_with_no_mail: String,

    #[serde(rename = "malawi")]
    malawi: String,

    #[serde(rename = "malaysia")]
    malaysia: String,

    #[serde(rename = "maldives")]
    maldives: String,

    #[serde(rename = "male_detective")]
    male_detective: String,

    #[serde(rename = "mali")]
    mali: String,

    #[serde(rename = "malta")]
    malta: String,

    #[serde(rename = "man")]
    man: String,

    #[serde(rename = "man_artist")]
    man_artist: String,

    #[serde(rename = "man_astronaut")]
    man_astronaut: String,

    #[serde(rename = "man_cartwheeling")]
    man_cartwheeling: String,

    #[serde(rename = "man_cook")]
    man_cook: String,

    #[serde(rename = "man_dancing")]
    man_dancing: String,

    #[serde(rename = "man_facepalming")]
    man_facepalming: String,

    #[serde(rename = "man_factory_worker")]
    man_factory_worker: String,

    #[serde(rename = "man_farmer")]
    man_farmer: String,

    #[serde(rename = "man_firefighter")]
    man_firefighter: String,

    #[serde(rename = "man_health_worker")]
    man_health_worker: String,

    #[serde(rename = "man_in_tuxedo")]
    man_in_tuxedo: String,

    #[serde(rename = "man_judge")]
    man_judge: String,

    #[serde(rename = "man_juggling")]
    man_juggling: String,

    #[serde(rename = "man_mechanic")]
    man_mechanic: String,

    #[serde(rename = "man_office_worker")]
    man_office_worker: String,

    #[serde(rename = "man_pilot")]
    man_pilot: String,

    #[serde(rename = "man_playing_handball")]
    man_playing_handball: String,

    #[serde(rename = "man_playing_water_polo")]
    man_playing_water_polo: String,

    #[serde(rename = "man_scientist")]
    man_scientist: String,

    #[serde(rename = "man_shrugging")]
    man_shrugging: String,

    #[serde(rename = "man_singer")]
    man_singer: String,

    #[serde(rename = "man_student")]
    man_student: String,

    #[serde(rename = "man_teacher")]
    man_teacher: String,

    #[serde(rename = "man_technologist")]
    man_technologist: String,

    #[serde(rename = "man_with_gua_pi_mao")]
    man_with_gua_pi_mao: String,

    #[serde(rename = "man_with_turban")]
    man_with_turban: String,

    #[serde(rename = "mandarin")]
    mandarin: String,

    #[serde(rename = "mans_shoe")]
    mans_shoe: String,

    #[serde(rename = "mantelpiece_clock")]
    mantelpiece_clock: String,

    #[serde(rename = "maple_leaf")]
    maple_leaf: String,

    #[serde(rename = "marshall_islands")]
    marshall_islands: String,

    #[serde(rename = "martial_arts_uniform")]
    martial_arts_uniform: String,

    #[serde(rename = "martinique")]
    martinique: String,

    #[serde(rename = "mask")]
    mask: String,

    #[serde(rename = "massage")]
    massage: String,

    #[serde(rename = "massage_man")]
    massage_man: String,

    #[serde(rename = "massage_woman")]
    massage_woman: String,

    #[serde(rename = "mauritania")]
    mauritania: String,

    #[serde(rename = "mauritius")]
    mauritius: String,

    #[serde(rename = "mayotte")]
    mayotte: String,

    #[serde(rename = "meat_on_bone")]
    meat_on_bone: String,

    #[serde(rename = "medal_military")]
    medal_military: String,

    #[serde(rename = "medal_sports")]
    medal_sports: String,

    #[serde(rename = "mega")]
    mega: String,

    #[serde(rename = "melon")]
    melon: String,

    #[serde(rename = "memo")]
    memo: String,

    #[serde(rename = "men_wrestling")]
    men_wrestling: String,

    #[serde(rename = "menorah")]
    menorah: String,

    #[serde(rename = "mens")]
    mens: String,

    #[serde(rename = "metal")]
    metal: String,

    #[serde(rename = "metro")]
    metro: String,

    #[serde(rename = "mexico")]
    mexico: String,

    #[serde(rename = "micronesia")]
    micronesia: String,

    #[serde(rename = "microphone")]
    microphone: String,

    #[serde(rename = "microscope")]
    microscope: String,

    #[serde(rename = "middle_finger")]
    middle_finger: String,

    #[serde(rename = "milk_glass")]
    milk_glass: String,

    #[serde(rename = "milky_way")]
    milky_way: String,

    #[serde(rename = "minibus")]
    minibus: String,

    #[serde(rename = "minidisc")]
    minidisc: String,

    #[serde(rename = "mobile_phone_off")]
    mobile_phone_off: String,

    #[serde(rename = "moldova")]
    moldova: String,

    #[serde(rename = "monaco")]
    monaco: String,

    #[serde(rename = "money_mouth_face")]
    money_mouth_face: String,

    #[serde(rename = "money_with_wings")]
    money_with_wings: String,

    #[serde(rename = "moneybag")]
    moneybag: String,

    #[serde(rename = "mongolia")]
    mongolia: String,

    #[serde(rename = "monkey")]
    monkey: String,

    #[serde(rename = "monkey_face")]
    monkey_face: String,

    #[serde(rename = "monorail")]
    monorail: String,

    #[serde(rename = "montenegro")]
    montenegro: String,

    #[serde(rename = "montserrat")]
    montserrat: String,

    #[serde(rename = "moon")]
    moon: String,

    #[serde(rename = "morocco")]
    morocco: String,

    #[serde(rename = "mortar_board")]
    mortar_board: String,

    #[serde(rename = "mosque")]
    mosque: String,

    #[serde(rename = "motor_boat")]
    motor_boat: String,

    #[serde(rename = "motor_scooter")]
    motor_scooter: String,

    #[serde(rename = "motorcycle")]
    motorcycle: String,

    #[serde(rename = "motorway")]
    motorway: String,

    #[serde(rename = "mount_fuji")]
    mount_fuji: String,

    #[serde(rename = "mountain")]
    mountain: String,

    #[serde(rename = "mountain_bicyclist")]
    mountain_bicyclist: String,

    #[serde(rename = "mountain_biking_man")]
    mountain_biking_man: String,

    #[serde(rename = "mountain_biking_woman")]
    mountain_biking_woman: String,

    #[serde(rename = "mountain_cableway")]
    mountain_cableway: String,

    #[serde(rename = "mountain_railway")]
    mountain_railway: String,

    #[serde(rename = "mountain_snow")]
    mountain_snow: String,

    #[serde(rename = "mouse")]
    mouse: String,

    #[serde(rename = "mouse2")]
    mouse2: String,

    #[serde(rename = "movie_camera")]
    movie_camera: String,

    #[serde(rename = "moyai")]
    moyai: String,

    #[serde(rename = "mozambique")]
    mozambique: String,

    #[serde(rename = "mrs_claus")]
    mrs_claus: String,

    #[serde(rename = "muscle")]
    muscle: String,

    #[serde(rename = "mushroom")]
    mushroom: String,

    #[serde(rename = "musical_keyboard")]
    musical_keyboard: String,

    #[serde(rename = "musical_note")]
    musical_note: String,

    #[serde(rename = "musical_score")]
    musical_score: String,

    #[serde(rename = "mute")]
    mute: String,

    #[serde(rename = "myanmar")]
    myanmar: String,

    #[serde(rename = "nail_care")]
    nail_care: String,

    #[serde(rename = "name_badge")]
    name_badge: String,

    #[serde(rename = "namibia")]
    namibia: String,

    #[serde(rename = "national_park")]
    national_park: String,

    #[serde(rename = "nauru")]
    nauru: String,

    #[serde(rename = "nauseated_face")]
    nauseated_face: String,

    #[serde(rename = "neckbeard")]
    neckbeard: String,

    #[serde(rename = "necktie")]
    necktie: String,

    #[serde(rename = "negative_squared_cross_mark")]
    negative_squared_cross_mark: String,

    #[serde(rename = "nepal")]
    nepal: String,

    #[serde(rename = "nerd_face")]
    nerd_face: String,

    #[serde(rename = "netherlands")]
    netherlands: String,

    #[serde(rename = "neutral_face")]
    neutral_face: String,

    #[serde(rename = "new")]
    new: String,

    #[serde(rename = "new_caledonia")]
    new_caledonia: String,

    #[serde(rename = "new_moon")]
    new_moon: String,

    #[serde(rename = "new_moon_with_face")]
    new_moon_with_face: String,

    #[serde(rename = "new_zealand")]
    new_zealand: String,

    #[serde(rename = "newspaper")]
    newspaper: String,

    #[serde(rename = "newspaper_roll")]
    newspaper_roll: String,

    #[serde(rename = "next_track_button")]
    next_track_button: String,

    #[serde(rename = "ng")]
    ng: String,

    #[serde(rename = "ng_man")]
    ng_man: String,

    #[serde(rename = "ng_woman")]
    ng_woman: String,

    #[serde(rename = "nicaragua")]
    nicaragua: String,

    #[serde(rename = "niger")]
    niger: String,

    #[serde(rename = "nigeria")]
    nigeria: String,

    #[serde(rename = "night_with_stars")]
    night_with_stars: String,

    #[serde(rename = "nine")]
    nine: String,

    #[serde(rename = "niue")]
    niue: String,

    #[serde(rename = "no_bell")]
    no_bell: String,

    #[serde(rename = "no_bicycles")]
    no_bicycles: String,

    #[serde(rename = "no_entry")]
    no_entry: String,

    #[serde(rename = "no_entry_sign")]
    no_entry_sign: String,

    #[serde(rename = "no_good")]
    no_good: String,

    #[serde(rename = "no_good_man")]
    no_good_man: String,

    #[serde(rename = "no_good_woman")]
    no_good_woman: String,

    #[serde(rename = "no_mobile_phones")]
    no_mobile_phones: String,

    #[serde(rename = "no_mouth")]
    no_mouth: String,

    #[serde(rename = "no_pedestrians")]
    no_pedestrians: String,

    #[serde(rename = "no_smoking")]
    no_smoking: String,

    #[serde(rename = "non-potable_water")]
    non_potable_water: String,

    #[serde(rename = "norfolk_island")]
    norfolk_island: String,

    #[serde(rename = "north_korea")]
    north_korea: String,

    #[serde(rename = "northern_mariana_islands")]
    northern_mariana_islands: String,

    #[serde(rename = "norway")]
    norway: String,

    #[serde(rename = "nose")]
    nose: String,

    #[serde(rename = "notebook")]
    notebook: String,

    #[serde(rename = "notebook_with_decorative_cover")]
    notebook_with_decorative_cover: String,

    #[serde(rename = "notes")]
    notes: String,

    #[serde(rename = "nut_and_bolt")]
    nut_and_bolt: String,

    #[serde(rename = "o")]
    o: String,

    #[serde(rename = "o2")]
    o2: String,

    #[serde(rename = "ocean")]
    ocean: String,

    #[serde(rename = "octocat")]
    octocat: String,

    #[serde(rename = "octopus")]
    octopus: String,

    #[serde(rename = "oden")]
    oden: String,

    #[serde(rename = "office")]
    office: String,

    #[serde(rename = "oil_drum")]
    oil_drum: String,

    #[serde(rename = "ok")]
    ok: String,

    #[serde(rename = "ok_hand")]
    ok_hand: String,

    #[serde(rename = "ok_man")]
    ok_man: String,

    #[serde(rename = "ok_woman")]
    ok_woman: String,

    #[serde(rename = "old_key")]
    old_key: String,

    #[serde(rename = "older_man")]
    older_man: String,

    #[serde(rename = "older_woman")]
    older_woman: String,

    #[serde(rename = "om")]
    om: String,

    #[serde(rename = "oman")]
    oman: String,

    #[serde(rename = "on")]
    on: String,

    #[serde(rename = "oncoming_automobile")]
    oncoming_automobile: String,

    #[serde(rename = "oncoming_bus")]
    oncoming_bus: String,

    #[serde(rename = "oncoming_police_car")]
    oncoming_police_car: String,

    #[serde(rename = "oncoming_taxi")]
    oncoming_taxi: String,

    #[serde(rename = "one")]
    one: String,

    #[serde(rename = "open_book")]
    open_book: String,

    #[serde(rename = "open_file_folder")]
    open_file_folder: String,

    #[serde(rename = "open_hands")]
    open_hands: String,

    #[serde(rename = "open_mouth")]
    open_mouth: String,

    #[serde(rename = "open_umbrella")]
    open_umbrella: String,

    #[serde(rename = "ophiuchus")]
    ophiuchus: String,

    #[serde(rename = "orange")]
    orange: String,

    #[serde(rename = "orange_book")]
    orange_book: String,

    #[serde(rename = "orthodox_cross")]
    orthodox_cross: String,

    #[serde(rename = "outbox_tray")]
    outbox_tray: String,

    #[serde(rename = "owl")]
    owl: String,

    #[serde(rename = "ox")]
    ox: String,

    #[serde(rename = "package")]
    package: String,

    #[serde(rename = "page_facing_up")]
    page_facing_up: String,

    #[serde(rename = "page_with_curl")]
    page_with_curl: String,

    #[serde(rename = "pager")]
    pager: String,

    #[serde(rename = "paintbrush")]
    paintbrush: String,

    #[serde(rename = "pakistan")]
    pakistan: String,

    #[serde(rename = "palau")]
    palau: String,

    #[serde(rename = "palestinian_territories")]
    palestinian_territories: String,

    #[serde(rename = "palm_tree")]
    palm_tree: String,

    #[serde(rename = "panama")]
    panama: String,

    #[serde(rename = "pancakes")]
    pancakes: String,

    #[serde(rename = "panda_face")]
    panda_face: String,

    #[serde(rename = "paperclip")]
    paperclip: String,

    #[serde(rename = "paperclips")]
    paperclips: String,

    #[serde(rename = "papua_new_guinea")]
    papua_new_guinea: String,

    #[serde(rename = "paraguay")]
    paraguay: String,

    #[serde(rename = "parasol_on_ground")]
    parasol_on_ground: String,

    #[serde(rename = "parking")]
    parking: String,

    #[serde(rename = "part_alternation_mark")]
    part_alternation_mark: String,

    #[serde(rename = "partly_sunny")]
    partly_sunny: String,

    #[serde(rename = "passenger_ship")]
    passenger_ship: String,

    #[serde(rename = "passport_control")]
    passport_control: String,

    #[serde(rename = "pause_button")]
    pause_button: String,

    #[serde(rename = "paw_prints")]
    paw_prints: String,

    #[serde(rename = "peace_symbol")]
    peace_symbol: String,

    #[serde(rename = "peach")]
    peach: String,

    #[serde(rename = "peanuts")]
    peanuts: String,

    #[serde(rename = "pear")]
    pear: String,

    #[serde(rename = "pen")]
    pen: String,

    #[serde(rename = "pencil")]
    pencil: String,

    #[serde(rename = "pencil2")]
    pencil2: String,

    #[serde(rename = "penguin")]
    penguin: String,

    #[serde(rename = "pensive")]
    pensive: String,

    #[serde(rename = "performing_arts")]
    performing_arts: String,

    #[serde(rename = "persevere")]
    persevere: String,

    #[serde(rename = "person_fencing")]
    person_fencing: String,

    #[serde(rename = "person_frowning")]
    person_frowning: String,

    #[serde(rename = "person_with_blond_hair")]
    person_with_blond_hair: String,

    #[serde(rename = "person_with_pouting_face")]
    person_with_pouting_face: String,

    #[serde(rename = "peru")]
    peru: String,

    #[serde(rename = "philippines")]
    philippines: String,

    #[serde(rename = "phone")]
    phone: String,

    #[serde(rename = "pick")]
    pick: String,

    #[serde(rename = "pig")]
    pig: String,

    #[serde(rename = "pig2")]
    pig2: String,

    #[serde(rename = "pig_nose")]
    pig_nose: String,

    #[serde(rename = "pill")]
    pill: String,

    #[serde(rename = "pineapple")]
    pineapple: String,

    #[serde(rename = "ping_pong")]
    ping_pong: String,

    #[serde(rename = "pisces")]
    pisces: String,

    #[serde(rename = "pitcairn_islands")]
    pitcairn_islands: String,

    #[serde(rename = "pizza")]
    pizza: String,

    #[serde(rename = "place_of_worship")]
    place_of_worship: String,

    #[serde(rename = "plate_with_cutlery")]
    plate_with_cutlery: String,

    #[serde(rename = "play_or_pause_button")]
    play_or_pause_button: String,

    #[serde(rename = "point_down")]
    point_down: String,

    #[serde(rename = "point_left")]
    point_left: String,

    #[serde(rename = "point_right")]
    point_right: String,

    #[serde(rename = "point_up")]
    point_up: String,

    #[serde(rename = "point_up_2")]
    point_up_2: String,

    #[serde(rename = "poland")]
    poland: String,

    #[serde(rename = "police_car")]
    police_car: String,

    #[serde(rename = "policeman")]
    policeman: String,

    #[serde(rename = "policewoman")]
    policewoman: String,

    #[serde(rename = "poodle")]
    poodle: String,

    #[serde(rename = "poop")]
    poop: String,

    #[serde(rename = "popcorn")]
    popcorn: String,

    #[serde(rename = "portugal")]
    portugal: String,

    #[serde(rename = "post_office")]
    post_office: String,

    #[serde(rename = "postal_horn")]
    postal_horn: String,

    #[serde(rename = "postbox")]
    postbox: String,

    #[serde(rename = "potable_water")]
    potable_water: String,

    #[serde(rename = "potato")]
    potato: String,

    #[serde(rename = "pouch")]
    pouch: String,

    #[serde(rename = "poultry_leg")]
    poultry_leg: String,

    #[serde(rename = "pound")]
    pound: String,

    #[serde(rename = "pout")]
    pout: String,

    #[serde(rename = "pouting_cat")]
    pouting_cat: String,

    #[serde(rename = "pouting_man")]
    pouting_man: String,

    #[serde(rename = "pouting_woman")]
    pouting_woman: String,

    #[serde(rename = "pray")]
    pray: String,

    #[serde(rename = "prayer_beads")]
    prayer_beads: String,

    #[serde(rename = "pregnant_woman")]
    pregnant_woman: String,

    #[serde(rename = "previous_track_button")]
    previous_track_button: String,

    #[serde(rename = "prince")]
    prince: String,

    #[serde(rename = "princess")]
    princess: String,

    #[serde(rename = "printer")]
    printer: String,

    #[serde(rename = "puerto_rico")]
    puerto_rico: String,

    #[serde(rename = "punch")]
    punch: String,

    #[serde(rename = "purple_heart")]
    purple_heart: String,

    #[serde(rename = "purse")]
    purse: String,

    #[serde(rename = "pushpin")]
    pushpin: String,

    #[serde(rename = "put_litter_in_its_place")]
    put_litter_in_its_place: String,

    #[serde(rename = "qatar")]
    qatar: String,

    #[serde(rename = "question")]
    question: String,

    #[serde(rename = "rabbit")]
    rabbit: String,

    #[serde(rename = "rabbit2")]
    rabbit2: String,

    #[serde(rename = "racehorse")]
    racehorse: String,

    #[serde(rename = "racing_car")]
    racing_car: String,

    #[serde(rename = "radio")]
    radio: String,

    #[serde(rename = "radio_button")]
    radio_button: String,

    #[serde(rename = "radioactive")]
    radioactive: String,

    #[serde(rename = "rage")]
    rage: String,

    #[serde(rename = "rage1")]
    rage1: String,

    #[serde(rename = "rage2")]
    rage2: String,

    #[serde(rename = "rage3")]
    rage3: String,

    #[serde(rename = "rage4")]
    rage4: String,

    #[serde(rename = "railway_car")]
    railway_car: String,

    #[serde(rename = "railway_track")]
    railway_track: String,

    #[serde(rename = "rainbow")]
    rainbow: String,

    #[serde(rename = "rainbow_flag")]
    rainbow_flag: String,

    #[serde(rename = "raised_back_of_hand")]
    raised_back_of_hand: String,

    #[serde(rename = "raised_hand")]
    raised_hand: String,

    #[serde(rename = "raised_hand_with_fingers_splayed")]
    raised_hand_with_fingers_splayed: String,

    #[serde(rename = "raised_hands")]
    raised_hands: String,

    #[serde(rename = "raising_hand")]
    raising_hand: String,

    #[serde(rename = "raising_hand_man")]
    raising_hand_man: String,

    #[serde(rename = "raising_hand_woman")]
    raising_hand_woman: String,

    #[serde(rename = "ram")]
    ram: String,

    #[serde(rename = "ramen")]
    ramen: String,

    #[serde(rename = "rat")]
    rat: String,

    #[serde(rename = "record_button")]
    record_button: String,

    #[serde(rename = "recycle")]
    recycle: String,

    #[serde(rename = "red_car")]
    red_car: String,

    #[serde(rename = "red_circle")]
    red_circle: String,

    #[serde(rename = "registered")]
    registered: String,

    #[serde(rename = "relaxed")]
    relaxed: String,

    #[serde(rename = "relieved")]
    relieved: String,

    #[serde(rename = "reminder_ribbon")]
    reminder_ribbon: String,

    #[serde(rename = "repeat")]
    repeat: String,

    #[serde(rename = "repeat_one")]
    repeat_one: String,

    #[serde(rename = "rescue_worker_helmet")]
    rescue_worker_helmet: String,

    #[serde(rename = "restroom")]
    restroom: String,

    #[serde(rename = "reunion")]
    reunion: String,

    #[serde(rename = "revolving_hearts")]
    revolving_hearts: String,

    #[serde(rename = "rewind")]
    rewind: String,

    #[serde(rename = "rhinoceros")]
    rhinoceros: String,

    #[serde(rename = "ribbon")]
    ribbon: String,

    #[serde(rename = "rice")]
    rice: String,

    #[serde(rename = "rice_ball")]
    rice_ball: String,

    #[serde(rename = "rice_cracker")]
    rice_cracker: String,

    #[serde(rename = "rice_scene")]
    rice_scene: String,

    #[serde(rename = "right_anger_bubble")]
    right_anger_bubble: String,

    #[serde(rename = "ring")]
    ring: String,

    #[serde(rename = "robot")]
    robot: String,

    #[serde(rename = "rocket")]
    rocket: String,

    #[serde(rename = "rofl")]
    rofl: String,

    #[serde(rename = "roll_eyes")]
    roll_eyes: String,

    #[serde(rename = "roller_coaster")]
    roller_coaster: String,

    #[serde(rename = "romania")]
    romania: String,

    #[serde(rename = "rooster")]
    rooster: String,

    #[serde(rename = "rose")]
    rose: String,

    #[serde(rename = "rosette")]
    rosette: String,

    #[serde(rename = "rotating_light")]
    rotating_light: String,

    #[serde(rename = "round_pushpin")]
    round_pushpin: String,

    #[serde(rename = "rowboat")]
    rowboat: String,

    #[serde(rename = "rowing_man")]
    rowing_man: String,

    #[serde(rename = "rowing_woman")]
    rowing_woman: String,

    #[serde(rename = "ru")]
    ru: String,

    #[serde(rename = "rugby_football")]
    rugby_football: String,

    #[serde(rename = "runner")]
    runner: String,

    #[serde(rename = "running")]
    running: String,

    #[serde(rename = "running_man")]
    running_man: String,

    #[serde(rename = "running_shirt_with_sash")]
    running_shirt_with_sash: String,

    #[serde(rename = "running_woman")]
    running_woman: String,

    #[serde(rename = "rwanda")]
    rwanda: String,

    #[serde(rename = "sa")]
    sa: String,

    #[serde(rename = "sagittarius")]
    sagittarius: String,

    #[serde(rename = "sailboat")]
    sailboat: String,

    #[serde(rename = "sake")]
    sake: String,

    #[serde(rename = "samoa")]
    samoa: String,

    #[serde(rename = "san_marino")]
    san_marino: String,

    #[serde(rename = "sandal")]
    sandal: String,

    #[serde(rename = "santa")]
    santa: String,

    #[serde(rename = "sao_tome_principe")]
    sao_tome_principe: String,

    #[serde(rename = "satellite")]
    satellite: String,

    #[serde(rename = "satisfied")]
    satisfied: String,

    #[serde(rename = "saudi_arabia")]
    saudi_arabia: String,

    #[serde(rename = "saxophone")]
    saxophone: String,

    #[serde(rename = "school")]
    school: String,

    #[serde(rename = "school_satchel")]
    school_satchel: String,

    #[serde(rename = "scissors")]
    scissors: String,

    #[serde(rename = "scorpion")]
    scorpion: String,

    #[serde(rename = "scorpius")]
    scorpius: String,

    #[serde(rename = "scream")]
    scream: String,

    #[serde(rename = "scream_cat")]
    scream_cat: String,

    #[serde(rename = "scroll")]
    scroll: String,

    #[serde(rename = "seat")]
    seat: String,

    #[serde(rename = "secret")]
    secret: String,

    #[serde(rename = "see_no_evil")]
    see_no_evil: String,

    #[serde(rename = "seedling")]
    seedling: String,

    #[serde(rename = "selfie")]
    selfie: String,

    #[serde(rename = "senegal")]
    senegal: String,

    #[serde(rename = "serbia")]
    serbia: String,

    #[serde(rename = "seven")]
    seven: String,

    #[serde(rename = "seychelles")]
    seychelles: String,

    #[serde(rename = "shallow_pan_of_food")]
    shallow_pan_of_food: String,

    #[serde(rename = "shamrock")]
    shamrock: String,

    #[serde(rename = "shark")]
    shark: String,

    #[serde(rename = "shaved_ice")]
    shaved_ice: String,

    #[serde(rename = "sheep")]
    sheep: String,

    #[serde(rename = "shell")]
    shell: String,

    #[serde(rename = "shield")]
    shield: String,

    #[serde(rename = "shinto_shrine")]
    shinto_shrine: String,

    #[serde(rename = "ship")]
    ship: String,

    #[serde(rename = "shipit")]
    shipit: String,

    #[serde(rename = "shirt")]
    shirt: String,

    #[serde(rename = "shit")]
    shit: String,

    #[serde(rename = "shoe")]
    shoe: String,

    #[serde(rename = "shopping")]
    shopping: String,

    #[serde(rename = "shopping_cart")]
    shopping_cart: String,

    #[serde(rename = "shower")]
    shower: String,

    #[serde(rename = "shrimp")]
    shrimp: String,

    #[serde(rename = "sierra_leone")]
    sierra_leone: String,

    #[serde(rename = "signal_strength")]
    signal_strength: String,

    #[serde(rename = "singapore")]
    singapore: String,

    #[serde(rename = "sint_maarten")]
    sint_maarten: String,

    #[serde(rename = "six")]
    six: String,

    #[serde(rename = "six_pointed_star")]
    six_pointed_star: String,

    #[serde(rename = "ski")]
    ski: String,

    #[serde(rename = "skier")]
    skier: String,

    #[serde(rename = "skull")]
    skull: String,

    #[serde(rename = "skull_and_crossbones")]
    skull_and_crossbones: String,

    #[serde(rename = "sleeping")]
    sleeping: String,

    #[serde(rename = "sleeping_bed")]
    sleeping_bed: String,

    #[serde(rename = "sleepy")]
    sleepy: String,

    #[serde(rename = "slightly_frowning_face")]
    slightly_frowning_face: String,

    #[serde(rename = "slightly_smiling_face")]
    slightly_smiling_face: String,

    #[serde(rename = "slot_machine")]
    slot_machine: String,

    #[serde(rename = "slovakia")]
    slovakia: String,

    #[serde(rename = "slovenia")]
    slovenia: String,

    #[serde(rename = "small_airplane")]
    small_airplane: String,

    #[serde(rename = "small_blue_diamond")]
    small_blue_diamond: String,

    #[serde(rename = "small_orange_diamond")]
    small_orange_diamond: String,

    #[serde(rename = "small_red_triangle")]
    small_red_triangle: String,

    #[serde(rename = "small_red_triangle_down")]
    small_red_triangle_down: String,

    #[serde(rename = "smile")]
    smile: String,

    #[serde(rename = "smile_cat")]
    smile_cat: String,

    #[serde(rename = "smiley")]
    smiley: String,

    #[serde(rename = "smiley_cat")]
    smiley_cat: String,

    #[serde(rename = "smiling_imp")]
    smiling_imp: String,

    #[serde(rename = "smirk")]
    smirk: String,

    #[serde(rename = "smirk_cat")]
    smirk_cat: String,

    #[serde(rename = "smoking")]
    smoking: String,

    #[serde(rename = "snail")]
    snail: String,

    #[serde(rename = "snake")]
    snake: String,

    #[serde(rename = "sneezing_face")]
    sneezing_face: String,

    #[serde(rename = "snowboarder")]
    snowboarder: String,

    #[serde(rename = "snowflake")]
    snowflake: String,

    #[serde(rename = "snowman")]
    snowman: String,

    #[serde(rename = "snowman_with_snow")]
    snowman_with_snow: String,

    #[serde(rename = "sob")]
    sob: String,

    #[serde(rename = "soccer")]
    soccer: String,

    #[serde(rename = "solomon_islands")]
    solomon_islands: String,

    #[serde(rename = "somalia")]
    somalia: String,

    #[serde(rename = "soon")]
    soon: String,

    #[serde(rename = "sos")]
    sos: String,

    #[serde(rename = "sound")]
    sound: String,

    #[serde(rename = "south_africa")]
    south_africa: String,

    #[serde(rename = "south_georgia_south_sandwich_islands")]
    south_georgia_south_sandwich_islands: String,

    #[serde(rename = "south_sudan")]
    south_sudan: String,

    #[serde(rename = "space_invader")]
    space_invader: String,

    #[serde(rename = "spades")]
    spades: String,

    #[serde(rename = "spaghetti")]
    spaghetti: String,

    #[serde(rename = "sparkle")]
    sparkle: String,

    #[serde(rename = "sparkler")]
    sparkler: String,

    #[serde(rename = "sparkles")]
    sparkles: String,

    #[serde(rename = "sparkling_heart")]
    sparkling_heart: String,

    #[serde(rename = "speak_no_evil")]
    speak_no_evil: String,

    #[serde(rename = "speaker")]
    speaker: String,

    #[serde(rename = "speaking_head")]
    speaking_head: String,

    #[serde(rename = "speech_balloon")]
    speech_balloon: String,

    #[serde(rename = "speedboat")]
    speedboat: String,

    #[serde(rename = "spider")]
    spider: String,

    #[serde(rename = "spider_web")]
    spider_web: String,

    #[serde(rename = "spiral_calendar")]
    spiral_calendar: String,

    #[serde(rename = "spiral_notepad")]
    spiral_notepad: String,

    #[serde(rename = "spoon")]
    spoon: String,

    #[serde(rename = "squid")]
    squid: String,

    #[serde(rename = "squirrel")]
    squirrel: String,

    #[serde(rename = "sri_lanka")]
    sri_lanka: String,

    #[serde(rename = "st_barthelemy")]
    st_barthelemy: String,

    #[serde(rename = "st_helena")]
    st_helena: String,

    #[serde(rename = "st_kitts_nevis")]
    st_kitts_nevis: String,

    #[serde(rename = "st_lucia")]
    st_lucia: String,

    #[serde(rename = "st_pierre_miquelon")]
    st_pierre_miquelon: String,

    #[serde(rename = "st_vincent_grenadines")]
    st_vincent_grenadines: String,

    #[serde(rename = "stadium")]
    stadium: String,

    #[serde(rename = "star")]
    star: String,

    #[serde(rename = "star2")]
    star2: String,

    #[serde(rename = "star_and_crescent")]
    star_and_crescent: String,

    #[serde(rename = "star_of_david")]
    star_of_david: String,

    #[serde(rename = "stars")]
    stars: String,

    #[serde(rename = "station")]
    station: String,

    #[serde(rename = "statue_of_liberty")]
    statue_of_liberty: String,

    #[serde(rename = "steam_locomotive")]
    steam_locomotive: String,

    #[serde(rename = "stew")]
    stew: String,

    #[serde(rename = "stop_button")]
    stop_button: String,

    #[serde(rename = "stop_sign")]
    stop_sign: String,

    #[serde(rename = "stopwatch")]
    stopwatch: String,

    #[serde(rename = "straight_ruler")]
    straight_ruler: String,

    #[serde(rename = "strawberry")]
    strawberry: String,

    #[serde(rename = "stuck_out_tongue")]
    stuck_out_tongue: String,

    #[serde(rename = "stuck_out_tongue_closed_eyes")]
    stuck_out_tongue_closed_eyes: String,

    #[serde(rename = "stuck_out_tongue_winking_eye")]
    stuck_out_tongue_winking_eye: String,

    #[serde(rename = "studio_microphone")]
    studio_microphone: String,

    #[serde(rename = "stuffed_flatbread")]
    stuffed_flatbread: String,

    #[serde(rename = "sudan")]
    sudan: String,

    #[serde(rename = "sun_behind_large_cloud")]
    sun_behind_large_cloud: String,

    #[serde(rename = "sun_behind_rain_cloud")]
    sun_behind_rain_cloud: String,

    #[serde(rename = "sun_behind_small_cloud")]
    sun_behind_small_cloud: String,

    #[serde(rename = "sun_with_face")]
    sun_with_face: String,

    #[serde(rename = "sunflower")]
    sunflower: String,

    #[serde(rename = "sunglasses")]
    sunglasses: String,

    #[serde(rename = "sunny")]
    sunny: String,

    #[serde(rename = "sunrise")]
    sunrise: String,

    #[serde(rename = "sunrise_over_mountains")]
    sunrise_over_mountains: String,

    #[serde(rename = "surfer")]
    surfer: String,

    #[serde(rename = "surfing_man")]
    surfing_man: String,

    #[serde(rename = "surfing_woman")]
    surfing_woman: String,

    #[serde(rename = "suriname")]
    suriname: String,

    #[serde(rename = "sushi")]
    sushi: String,

    #[serde(rename = "suspect")]
    suspect: String,

    #[serde(rename = "suspension_railway")]
    suspension_railway: String,

    #[serde(rename = "swaziland")]
    swaziland: String,

    #[serde(rename = "sweat")]
    sweat: String,

    #[serde(rename = "sweat_drops")]
    sweat_drops: String,

    #[serde(rename = "sweat_smile")]
    sweat_smile: String,

    #[serde(rename = "sweden")]
    sweden: String,

    #[serde(rename = "sweet_potato")]
    sweet_potato: String,

    #[serde(rename = "swimmer")]
    swimmer: String,

    #[serde(rename = "swimming_man")]
    swimming_man: String,

    #[serde(rename = "swimming_woman")]
    swimming_woman: String,

    #[serde(rename = "switzerland")]
    switzerland: String,

    #[serde(rename = "symbols")]
    symbols: String,

    #[serde(rename = "synagogue")]
    synagogue: String,

    #[serde(rename = "syria")]
    syria: String,

    #[serde(rename = "syringe")]
    syringe: String,

    #[serde(rename = "taco")]
    taco: String,

    #[serde(rename = "tada")]
    tada: String,

    #[serde(rename = "taiwan")]
    taiwan: String,

    #[serde(rename = "tajikistan")]
    tajikistan: String,

    #[serde(rename = "tanabata_tree")]
    tanabata_tree: String,

    #[serde(rename = "tangerine")]
    tangerine: String,

    #[serde(rename = "tanzania")]
    tanzania: String,

    #[serde(rename = "taurus")]
    taurus: String,

    #[serde(rename = "taxi")]
    taxi: String,

    #[serde(rename = "tea")]
    tea: String,

    #[serde(rename = "telephone")]
    telephone: String,

    #[serde(rename = "telephone_receiver")]
    telephone_receiver: String,

    #[serde(rename = "telescope")]
    telescope: String,

    #[serde(rename = "tennis")]
    tennis: String,

    #[serde(rename = "tent")]
    tent: String,

    #[serde(rename = "thailand")]
    thailand: String,

    #[serde(rename = "thermometer")]
    thermometer: String,

    #[serde(rename = "thinking")]
    thinking: String,

    #[serde(rename = "thought_balloon")]
    thought_balloon: String,

    #[serde(rename = "three")]
    three: String,

    #[serde(rename = "thumbsdown")]
    thumbsdown: String,

    #[serde(rename = "thumbsup")]
    thumbsup: String,

    #[serde(rename = "ticket")]
    ticket: String,

    #[serde(rename = "tickets")]
    tickets: String,

    #[serde(rename = "tiger")]
    tiger: String,

    #[serde(rename = "tiger2")]
    tiger2: String,

    #[serde(rename = "timer_clock")]
    timer_clock: String,

    #[serde(rename = "timor_leste")]
    timor_leste: String,

    #[serde(rename = "tipping_hand_man")]
    tipping_hand_man: String,

    #[serde(rename = "tipping_hand_woman")]
    tipping_hand_woman: String,

    #[serde(rename = "tired_face")]
    tired_face: String,

    #[serde(rename = "tm")]
    tm: String,

    #[serde(rename = "togo")]
    togo: String,

    #[serde(rename = "toilet")]
    toilet: String,

    #[serde(rename = "tokelau")]
    tokelau: String,

    #[serde(rename = "tokyo_tower")]
    tokyo_tower: String,

    #[serde(rename = "tomato")]
    tomato: String,

    #[serde(rename = "tonga")]
    tonga: String,

    #[serde(rename = "tongue")]
    tongue: String,

    #[serde(rename = "top")]
    top: String,

    #[serde(rename = "tophat")]
    tophat: String,

    #[serde(rename = "tornado")]
    tornado: String,

    #[serde(rename = "tr")]
    tr: String,

    #[serde(rename = "trackball")]
    trackball: String,

    #[serde(rename = "tractor")]
    tractor: String,

    #[serde(rename = "traffic_light")]
    traffic_light: String,

    #[serde(rename = "train")]
    train: String,

    #[serde(rename = "train2")]
    train2: String,

    #[serde(rename = "tram")]
    tram: String,

    #[serde(rename = "triangular_flag_on_post")]
    triangular_flag_on_post: String,

    #[serde(rename = "triangular_ruler")]
    triangular_ruler: String,

    #[serde(rename = "trident")]
    trident: String,

    #[serde(rename = "trinidad_tobago")]
    trinidad_tobago: String,

    #[serde(rename = "triumph")]
    triumph: String,

    #[serde(rename = "trolleybus")]
    trolleybus: String,

    #[serde(rename = "trollface")]
    trollface: String,

    #[serde(rename = "trophy")]
    trophy: String,

    #[serde(rename = "tropical_drink")]
    tropical_drink: String,

    #[serde(rename = "tropical_fish")]
    tropical_fish: String,

    #[serde(rename = "truck")]
    truck: String,

    #[serde(rename = "trumpet")]
    trumpet: String,

    #[serde(rename = "tshirt")]
    tshirt: String,

    #[serde(rename = "tulip")]
    tulip: String,

    #[serde(rename = "tumbler_glass")]
    tumbler_glass: String,

    #[serde(rename = "tunisia")]
    tunisia: String,

    #[serde(rename = "turkey")]
    turkey: String,

    #[serde(rename = "turkmenistan")]
    turkmenistan: String,

    #[serde(rename = "turks_caicos_islands")]
    turks_caicos_islands: String,

    #[serde(rename = "turtle")]
    turtle: String,

    #[serde(rename = "tuvalu")]
    tuvalu: String,

    #[serde(rename = "tv")]
    tv: String,

    #[serde(rename = "twisted_rightwards_arrows")]
    twisted_rightwards_arrows: String,

    #[serde(rename = "two")]
    two: String,

    #[serde(rename = "two_hearts")]
    two_hearts: String,

    #[serde(rename = "two_men_holding_hands")]
    two_men_holding_hands: String,

    #[serde(rename = "two_women_holding_hands")]
    two_women_holding_hands: String,

    #[serde(rename = "u5272")]
    u5272: String,

    #[serde(rename = "u5408")]
    u5408: String,

    #[serde(rename = "u55b6")]
    u55_b6: String,

    #[serde(rename = "u6307")]
    u6307: String,

    #[serde(rename = "u6708")]
    u6708: String,

    #[serde(rename = "u6709")]
    u6709: String,

    #[serde(rename = "u6e80")]
    u6_e80: String,

    #[serde(rename = "u7121")]
    u7121: String,

    #[serde(rename = "u7533")]
    u7533: String,

    #[serde(rename = "u7981")]
    u7981: String,

    #[serde(rename = "u7a7a")]
    u7_a7_a: String,

    #[serde(rename = "uganda")]
    uganda: String,

    #[serde(rename = "uk")]
    uk: String,

    #[serde(rename = "ukraine")]
    ukraine: String,

    #[serde(rename = "umbrella")]
    umbrella: String,

    #[serde(rename = "unamused")]
    unamused: String,

    #[serde(rename = "underage")]
    underage: String,

    #[serde(rename = "unicorn")]
    unicorn: String,

    #[serde(rename = "united_arab_emirates")]
    united_arab_emirates: String,

    #[serde(rename = "unlock")]
    unlock: String,

    #[serde(rename = "up")]
    up: String,

    #[serde(rename = "upside_down_face")]
    upside_down_face: String,

    #[serde(rename = "uruguay")]
    uruguay: String,

    #[serde(rename = "us")]
    us: String,

    #[serde(rename = "us_virgin_islands")]
    us_virgin_islands: String,

    #[serde(rename = "uzbekistan")]
    uzbekistan: String,

    #[serde(rename = "v")]
    v: String,

    #[serde(rename = "vanuatu")]
    vanuatu: String,

    #[serde(rename = "vatican_city")]
    vatican_city: String,

    #[serde(rename = "venezuela")]
    venezuela: String,

    #[serde(rename = "vertical_traffic_light")]
    vertical_traffic_light: String,

    #[serde(rename = "vhs")]
    vhs: String,

    #[serde(rename = "vibration_mode")]
    vibration_mode: String,

    #[serde(rename = "video_camera")]
    video_camera: String,

    #[serde(rename = "video_game")]
    video_game: String,

    #[serde(rename = "vietnam")]
    vietnam: String,

    #[serde(rename = "violin")]
    violin: String,

    #[serde(rename = "virgo")]
    virgo: String,

    #[serde(rename = "volcano")]
    volcano: String,

    #[serde(rename = "volleyball")]
    volleyball: String,

    #[serde(rename = "vs")]
    vs: String,

    #[serde(rename = "vulcan_salute")]
    vulcan_salute: String,

    #[serde(rename = "walking")]
    walking: String,

    #[serde(rename = "walking_man")]
    walking_man: String,

    #[serde(rename = "walking_woman")]
    walking_woman: String,

    #[serde(rename = "wallis_futuna")]
    wallis_futuna: String,

    #[serde(rename = "waning_crescent_moon")]
    waning_crescent_moon: String,

    #[serde(rename = "waning_gibbous_moon")]
    waning_gibbous_moon: String,

    #[serde(rename = "warning")]
    warning: String,

    #[serde(rename = "wastebasket")]
    wastebasket: String,

    #[serde(rename = "watch")]
    watch: String,

    #[serde(rename = "water_buffalo")]
    water_buffalo: String,

    #[serde(rename = "watermelon")]
    watermelon: String,

    #[serde(rename = "wave")]
    wave: String,

    #[serde(rename = "wavy_dash")]
    wavy_dash: String,

    #[serde(rename = "waxing_crescent_moon")]
    waxing_crescent_moon: String,

    #[serde(rename = "waxing_gibbous_moon")]
    waxing_gibbous_moon: String,

    #[serde(rename = "wc")]
    wc: String,

    #[serde(rename = "weary")]
    weary: String,

    #[serde(rename = "wedding")]
    wedding: String,

    #[serde(rename = "weight_lifting_man")]
    weight_lifting_man: String,

    #[serde(rename = "weight_lifting_woman")]
    weight_lifting_woman: String,

    #[serde(rename = "western_sahara")]
    western_sahara: String,

    #[serde(rename = "whale")]
    whale: String,

    #[serde(rename = "whale2")]
    whale2: String,

    #[serde(rename = "wheel_of_dharma")]
    wheel_of_dharma: String,

    #[serde(rename = "wheelchair")]
    wheelchair: String,

    #[serde(rename = "white_check_mark")]
    white_check_mark: String,

    #[serde(rename = "white_circle")]
    white_circle: String,

    #[serde(rename = "white_flag")]
    white_flag: String,

    #[serde(rename = "white_flower")]
    white_flower: String,

    #[serde(rename = "white_large_square")]
    white_large_square: String,

    #[serde(rename = "white_medium_small_square")]
    white_medium_small_square: String,

    #[serde(rename = "white_medium_square")]
    white_medium_square: String,

    #[serde(rename = "white_small_square")]
    white_small_square: String,

    #[serde(rename = "white_square_button")]
    white_square_button: String,

    #[serde(rename = "wilted_flower")]
    wilted_flower: String,

    #[serde(rename = "wind_chime")]
    wind_chime: String,

    #[serde(rename = "wind_face")]
    wind_face: String,

    #[serde(rename = "wine_glass")]
    wine_glass: String,

    #[serde(rename = "wink")]
    wink: String,

    #[serde(rename = "wolf")]
    wolf: String,

    #[serde(rename = "woman")]
    woman: String,

    #[serde(rename = "woman_artist")]
    woman_artist: String,

    #[serde(rename = "woman_astronaut")]
    woman_astronaut: String,

    #[serde(rename = "woman_cartwheeling")]
    woman_cartwheeling: String,

    #[serde(rename = "woman_cook")]
    woman_cook: String,

    #[serde(rename = "woman_facepalming")]
    woman_facepalming: String,

    #[serde(rename = "woman_factory_worker")]
    woman_factory_worker: String,

    #[serde(rename = "woman_farmer")]
    woman_farmer: String,

    #[serde(rename = "woman_firefighter")]
    woman_firefighter: String,

    #[serde(rename = "woman_health_worker")]
    woman_health_worker: String,

    #[serde(rename = "woman_judge")]
    woman_judge: String,

    #[serde(rename = "woman_juggling")]
    woman_juggling: String,

    #[serde(rename = "woman_mechanic")]
    woman_mechanic: String,

    #[serde(rename = "woman_office_worker")]
    woman_office_worker: String,

    #[serde(rename = "woman_pilot")]
    woman_pilot: String,

    #[serde(rename = "woman_playing_handball")]
    woman_playing_handball: String,

    #[serde(rename = "woman_playing_water_polo")]
    woman_playing_water_polo: String,

    #[serde(rename = "woman_scientist")]
    woman_scientist: String,

    #[serde(rename = "woman_shrugging")]
    woman_shrugging: String,

    #[serde(rename = "woman_singer")]
    woman_singer: String,

    #[serde(rename = "woman_student")]
    woman_student: String,

    #[serde(rename = "woman_teacher")]
    woman_teacher: String,

    #[serde(rename = "woman_technologist")]
    woman_technologist: String,

    #[serde(rename = "woman_with_turban")]
    woman_with_turban: String,

    #[serde(rename = "womans_clothes")]
    womans_clothes: String,

    #[serde(rename = "womans_hat")]
    womans_hat: String,

    #[serde(rename = "women_wrestling")]
    women_wrestling: String,

    #[serde(rename = "womens")]
    womens: String,

    #[serde(rename = "world_map")]
    world_map: String,

    #[serde(rename = "worried")]
    worried: String,

    #[serde(rename = "wrench")]
    wrench: String,

    #[serde(rename = "writing_hand")]
    writing_hand: String,

    #[serde(rename = "x")]
    x: String,

    #[serde(rename = "yellow_heart")]
    yellow_heart: String,

    #[serde(rename = "yemen")]
    yemen: String,

    #[serde(rename = "yen")]
    yen: String,

    #[serde(rename = "yin_yang")]
    yin_yang: String,

    #[serde(rename = "yum")]
    yum: String,

    #[serde(rename = "zambia")]
    zambia: String,

    #[serde(rename = "zap")]
    zap: String,

    #[serde(rename = "zero")]
    zero: String,

    #[serde(rename = "zimbabwe")]
    zimbabwe: String,

    #[serde(rename = "zipper_mouth_face")]
    zipper_mouth_face: String,

    #[serde(rename = "zzz")]
    zzz: String,
}

#[derive(Serialize, Deserialize)]
pub struct EventElement {
    #[serde(rename = "id")]
    id: String,

    #[serde(rename = "type")]
    events_type: String,

    #[serde(rename = "actor")]
    actor: Actor,

    #[serde(rename = "repo")]
    repo: Repo,

    #[serde(rename = "payload")]
    payload: Payload,

    #[serde(rename = "public")]
    public: bool,

    #[serde(rename = "created_at")]
    created_at: String,

    #[serde(rename = "org")]
    org: Option<Actor>,
}

#[derive(Serialize, Deserialize)]
pub struct Actor {
    #[serde(rename = "id")]
    id: i64,

    #[serde(rename = "login")]
    login: String,

    #[serde(rename = "display_login")]
    display_login: Option<String>,

    #[serde(rename = "gravatar_id")]
    gravatar_id: GravatarId,

    #[serde(rename = "url")]
    url: String,

    #[serde(rename = "avatar_url")]
    avatar_url: String,
}

#[derive(Serialize, Deserialize)]
pub struct Payload {
    #[serde(rename = "push_id")]
    push_id: Option<i64>,

    #[serde(rename = "size")]
    size: Option<i64>,

    #[serde(rename = "distinct_size")]
    distinct_size: Option<i64>,

    #[serde(rename = "ref")]
    payload_ref: Option<String>,

    #[serde(rename = "head")]
    head: Option<String>,

    #[serde(rename = "before")]
    before: Option<String>,

    #[serde(rename = "commits")]
    commits: Option<Vec<Commit>>,

    #[serde(rename = "forkee")]
    forkee: Option<Forkee>,

    #[serde(rename = "action")]
    action: Option<String>,

    #[serde(rename = "issue")]
    issue: Option<Issue>,

    #[serde(rename = "comment")]
    comment: Option<Comment>,

    #[serde(rename = "ref_type")]
    ref_type: Option<String>,

    #[serde(rename = "master_branch")]
    master_branch: Option<String>,

    #[serde(rename = "description")]
    description: Option<String>,

    #[serde(rename = "pusher_type")]
    pusher_type: Option<String>,

    #[serde(rename = "release")]
    release: Option<Release>,

    #[serde(rename = "number")]
    number: Option<i64>,

    #[serde(rename = "pull_request")]
    pull_request: Option<PullRequest>,

    #[serde(rename = "pages")]
    pages: Option<Vec<Page>>,
}

#[derive(Serialize, Deserialize)]
pub struct Comment {
    #[serde(rename = "url")]
    url: String,

    #[serde(rename = "html_url")]
    html_url: String,

    #[serde(rename = "issue_url")]
    issue_url: String,

    #[serde(rename = "id")]
    id: i64,

    #[serde(rename = "user")]
    user: User,

    #[serde(rename = "created_at")]
    created_at: String,

    #[serde(rename = "updated_at")]
    updated_at: String,

    #[serde(rename = "author_association")]
    author_association: String,

    #[serde(rename = "body")]
    body: String,
}

#[derive(Serialize, Deserialize)]
pub struct User {
    #[serde(rename = "login")]
    login: String,

    #[serde(rename = "id")]
    id: i64,

    #[serde(rename = "avatar_url")]
    avatar_url: String,

    #[serde(rename = "gravatar_id")]
    gravatar_id: GravatarId,

    #[serde(rename = "url")]
    url: String,

    #[serde(rename = "html_url")]
    html_url: String,

    #[serde(rename = "followers_url")]
    followers_url: String,

    #[serde(rename = "following_url")]
    following_url: String,

    #[serde(rename = "gists_url")]
    gists_url: String,

    #[serde(rename = "starred_url")]
    starred_url: String,

    #[serde(rename = "subscriptions_url")]
    subscriptions_url: String,

    #[serde(rename = "organizations_url")]
    organizations_url: String,

    #[serde(rename = "repos_url")]
    repos_url: String,

    #[serde(rename = "events_url")]
    events_url: String,

    #[serde(rename = "received_events_url")]
    received_events_url: String,

    #[serde(rename = "type")]
    user_type: UserType,

    #[serde(rename = "site_admin")]
    site_admin: bool,
}

#[derive(Serialize, Deserialize)]
pub struct Commit {
    #[serde(rename = "sha")]
    sha: String,

    #[serde(rename = "author")]
    author: Author,

    #[serde(rename = "message")]
    message: String,

    #[serde(rename = "distinct")]
    distinct: bool,

    #[serde(rename = "url")]
    url: String,
}

#[derive(Serialize, Deserialize)]
pub struct Author {
    #[serde(rename = "email")]
    email: String,

    #[serde(rename = "name")]
    name: String,
}

#[derive(Serialize, Deserialize)]
pub struct Forkee {
    #[serde(rename = "id")]
    id: i64,

    #[serde(rename = "name")]
    name: String,

    #[serde(rename = "full_name")]
    full_name: String,

    #[serde(rename = "owner")]
    owner: User,

    #[serde(rename = "private")]
    private: bool,

    #[serde(rename = "html_url")]
    html_url: String,

    #[serde(rename = "description")]
    description: Option<String>,

    #[serde(rename = "fork")]
    fork: bool,

    #[serde(rename = "url")]
    url: String,

    #[serde(rename = "forks_url")]
    forks_url: String,

    #[serde(rename = "keys_url")]
    keys_url: String,

    #[serde(rename = "collaborators_url")]
    collaborators_url: String,

    #[serde(rename = "teams_url")]
    teams_url: String,

    #[serde(rename = "hooks_url")]
    hooks_url: String,

    #[serde(rename = "issue_events_url")]
    issue_events_url: String,

    #[serde(rename = "events_url")]
    events_url: String,

    #[serde(rename = "assignees_url")]
    assignees_url: String,

    #[serde(rename = "branches_url")]
    branches_url: String,

    #[serde(rename = "tags_url")]
    tags_url: String,

    #[serde(rename = "blobs_url")]
    blobs_url: String,

    #[serde(rename = "git_tags_url")]
    git_tags_url: String,

    #[serde(rename = "git_refs_url")]
    git_refs_url: String,

    #[serde(rename = "trees_url")]
    trees_url: String,

    #[serde(rename = "statuses_url")]
    statuses_url: String,

    #[serde(rename = "languages_url")]
    languages_url: String,

    #[serde(rename = "stargazers_url")]
    stargazers_url: String,

    #[serde(rename = "contributors_url")]
    contributors_url: String,

    #[serde(rename = "subscribers_url")]
    subscribers_url: String,

    #[serde(rename = "subscription_url")]
    subscription_url: String,

    #[serde(rename = "commits_url")]
    commits_url: String,

    #[serde(rename = "git_commits_url")]
    git_commits_url: String,

    #[serde(rename = "comments_url")]
    comments_url: String,

    #[serde(rename = "issue_comment_url")]
    issue_comment_url: String,

    #[serde(rename = "contents_url")]
    contents_url: String,

    #[serde(rename = "compare_url")]
    compare_url: String,

    #[serde(rename = "merges_url")]
    merges_url: String,

    #[serde(rename = "archive_url")]
    archive_url: String,

    #[serde(rename = "downloads_url")]
    downloads_url: String,

    #[serde(rename = "issues_url")]
    issues_url: String,

    #[serde(rename = "pulls_url")]
    pulls_url: String,

    #[serde(rename = "milestones_url")]
    milestones_url: String,

    #[serde(rename = "notifications_url")]
    notifications_url: String,

    #[serde(rename = "labels_url")]
    labels_url: String,

    #[serde(rename = "releases_url")]
    releases_url: String,

    #[serde(rename = "deployments_url")]
    deployments_url: String,

    #[serde(rename = "created_at")]
    created_at: String,

    #[serde(rename = "updated_at")]
    updated_at: String,

    #[serde(rename = "pushed_at")]
    pushed_at: String,

    #[serde(rename = "git_url")]
    git_url: String,

    #[serde(rename = "ssh_url")]
    ssh_url: String,

    #[serde(rename = "clone_url")]
    clone_url: String,

    #[serde(rename = "svn_url")]
    svn_url: String,

    #[serde(rename = "homepage")]
    homepage: Option<String>,

    #[serde(rename = "size")]
    size: i64,

    #[serde(rename = "stargazers_count")]
    stargazers_count: i64,

    #[serde(rename = "watchers_count")]
    watchers_count: i64,

    #[serde(rename = "language")]
    language: Option<String>,

    #[serde(rename = "has_issues")]
    has_issues: bool,

    #[serde(rename = "has_projects")]
    has_projects: bool,

    #[serde(rename = "has_downloads")]
    has_downloads: bool,

    #[serde(rename = "has_wiki")]
    has_wiki: bool,

    #[serde(rename = "has_pages")]
    has_pages: bool,

    #[serde(rename = "forks_count")]
    forks_count: i64,

    #[serde(rename = "mirror_url")]
    mirror_url: Option<serde_json::Value>,

    #[serde(rename = "archived")]
    archived: bool,

    #[serde(rename = "open_issues_count")]
    open_issues_count: i64,

    #[serde(rename = "license")]
    license: Option<License>,

    #[serde(rename = "forks")]
    forks: i64,

    #[serde(rename = "open_issues")]
    open_issues: i64,

    #[serde(rename = "watchers")]
    watchers: i64,

    #[serde(rename = "default_branch")]
    default_branch: String,

    #[serde(rename = "public")]
    public: Option<bool>,
}

#[derive(Serialize, Deserialize)]
pub struct License {
    #[serde(rename = "key")]
    key: String,

    #[serde(rename = "name")]
    name: String,

    #[serde(rename = "spdx_id")]
    spdx_id: Option<serde_json::Value>,

    #[serde(rename = "url")]
    url: Option<serde_json::Value>,
}

#[derive(Serialize, Deserialize)]
pub struct Issue {
    #[serde(rename = "url")]
    url: String,

    #[serde(rename = "repository_url")]
    repository_url: String,

    #[serde(rename = "labels_url")]
    labels_url: String,

    #[serde(rename = "comments_url")]
    comments_url: String,

    #[serde(rename = "events_url")]
    events_url: String,

    #[serde(rename = "html_url")]
    html_url: String,

    #[serde(rename = "id")]
    id: i64,

    #[serde(rename = "number")]
    number: i64,

    #[serde(rename = "title")]
    title: String,

    #[serde(rename = "user")]
    user: User,

    #[serde(rename = "labels")]
    labels: Vec<Label>,

    #[serde(rename = "state")]
    state: String,

    #[serde(rename = "locked")]
    locked: bool,

    #[serde(rename = "assignee")]
    assignee: Option<User>,

    #[serde(rename = "assignees")]
    assignees: Vec<User>,

    #[serde(rename = "milestone")]
    milestone: Option<Milestone>,

    #[serde(rename = "comments")]
    comments: i64,

    #[serde(rename = "created_at")]
    created_at: String,

    #[serde(rename = "updated_at")]
    updated_at: String,

    #[serde(rename = "closed_at")]
    closed_at: Option<String>,

    #[serde(rename = "author_association")]
    author_association: String,

    #[serde(rename = "body")]
    body: String,
}

#[derive(Serialize, Deserialize)]
pub struct Label {
    #[serde(rename = "id")]
    id: i64,

    #[serde(rename = "url")]
    url: String,

    #[serde(rename = "name")]
    name: String,

    #[serde(rename = "color")]
    color: String,

    #[serde(rename = "default")]
    label_default: bool,
}

#[derive(Serialize, Deserialize)]
pub struct Milestone {
    #[serde(rename = "url")]
    url: String,

    #[serde(rename = "html_url")]
    html_url: String,

    #[serde(rename = "labels_url")]
    labels_url: String,

    #[serde(rename = "id")]
    id: i64,

    #[serde(rename = "number")]
    number: i64,

    #[serde(rename = "title")]
    title: String,

    #[serde(rename = "description")]
    description: String,

    #[serde(rename = "creator")]
    creator: User,

    #[serde(rename = "open_issues")]
    open_issues: i64,

    #[serde(rename = "closed_issues")]
    closed_issues: i64,

    #[serde(rename = "state")]
    state: String,

    #[serde(rename = "created_at")]
    created_at: String,

    #[serde(rename = "updated_at")]
    updated_at: String,

    #[serde(rename = "due_on")]
    due_on: String,

    #[serde(rename = "closed_at")]
    closed_at: Option<serde_json::Value>,
}

#[derive(Serialize, Deserialize)]
pub struct Page {
    #[serde(rename = "page_name")]
    page_name: String,

    #[serde(rename = "title")]
    title: String,

    #[serde(rename = "summary")]
    summary: Option<serde_json::Value>,

    #[serde(rename = "action")]
    action: String,

    #[serde(rename = "sha")]
    sha: String,

    #[serde(rename = "html_url")]
    html_url: String,
}

#[derive(Serialize, Deserialize)]
pub struct PullRequest {
    #[serde(rename = "url")]
    url: String,

    #[serde(rename = "id")]
    id: i64,

    #[serde(rename = "html_url")]
    html_url: String,

    #[serde(rename = "diff_url")]
    diff_url: String,

    #[serde(rename = "patch_url")]
    patch_url: String,

    #[serde(rename = "issue_url")]
    issue_url: String,

    #[serde(rename = "number")]
    number: i64,

    #[serde(rename = "state")]
    state: String,

    #[serde(rename = "locked")]
    locked: bool,

    #[serde(rename = "title")]
    title: String,

    #[serde(rename = "user")]
    user: User,

    #[serde(rename = "body")]
    body: String,

    #[serde(rename = "created_at")]
    created_at: String,

    #[serde(rename = "updated_at")]
    updated_at: String,

    #[serde(rename = "closed_at")]
    closed_at: String,

    #[serde(rename = "merged_at")]
    merged_at: String,

    #[serde(rename = "merge_commit_sha")]
    merge_commit_sha: String,

    #[serde(rename = "assignee")]
    assignee: Option<serde_json::Value>,

    #[serde(rename = "assignees")]
    assignees: Vec<serde_json::Value>,

    #[serde(rename = "requested_reviewers")]
    requested_reviewers: Vec<serde_json::Value>,

    #[serde(rename = "requested_teams")]
    requested_teams: Vec<serde_json::Value>,

    #[serde(rename = "labels")]
    labels: Vec<serde_json::Value>,

    #[serde(rename = "milestone")]
    milestone: Option<serde_json::Value>,

    #[serde(rename = "commits_url")]
    commits_url: String,

    #[serde(rename = "review_comments_url")]
    review_comments_url: String,

    #[serde(rename = "review_comment_url")]
    review_comment_url: String,

    #[serde(rename = "comments_url")]
    comments_url: String,

    #[serde(rename = "statuses_url")]
    statuses_url: String,

    #[serde(rename = "head")]
    head: Base,

    #[serde(rename = "base")]
    base: Base,

    #[serde(rename = "_links")]
    links: Links,

    #[serde(rename = "author_association")]
    author_association: String,

    #[serde(rename = "merged")]
    merged: bool,

    #[serde(rename = "mergeable")]
    mergeable: Option<serde_json::Value>,

    #[serde(rename = "rebaseable")]
    rebaseable: Option<serde_json::Value>,

    #[serde(rename = "mergeable_state")]
    mergeable_state: String,

    #[serde(rename = "merged_by")]
    merged_by: User,

    #[serde(rename = "comments")]
    comments: i64,

    #[serde(rename = "review_comments")]
    review_comments: i64,

    #[serde(rename = "maintainer_can_modify")]
    maintainer_can_modify: bool,

    #[serde(rename = "commits")]
    commits: i64,

    #[serde(rename = "additions")]
    additions: i64,

    #[serde(rename = "deletions")]
    deletions: i64,

    #[serde(rename = "changed_files")]
    changed_files: i64,
}

#[derive(Serialize, Deserialize)]
pub struct Base {
    #[serde(rename = "label")]
    label: String,

    #[serde(rename = "ref")]
    base_ref: String,

    #[serde(rename = "sha")]
    sha: String,

    #[serde(rename = "user")]
    user: User,

    #[serde(rename = "repo")]
    repo: Forkee,
}

#[derive(Serialize, Deserialize)]
pub struct Links {
    #[serde(rename = "self")]
    links_self: Comments,

    #[serde(rename = "html")]
    html: Comments,

    #[serde(rename = "issue")]
    issue: Comments,

    #[serde(rename = "comments")]
    comments: Comments,

    #[serde(rename = "review_comments")]
    review_comments: Comments,

    #[serde(rename = "review_comment")]
    review_comment: Comments,

    #[serde(rename = "commits")]
    commits: Comments,

    #[serde(rename = "statuses")]
    statuses: Comments,
}

#[derive(Serialize, Deserialize)]
pub struct Comments {
    #[serde(rename = "href")]
    href: String,
}

#[derive(Serialize, Deserialize)]
pub struct Release {
    #[serde(rename = "url")]
    url: String,

    #[serde(rename = "assets_url")]
    assets_url: String,

    #[serde(rename = "upload_url")]
    upload_url: String,

    #[serde(rename = "html_url")]
    html_url: String,

    #[serde(rename = "id")]
    id: i64,

    #[serde(rename = "tag_name")]
    tag_name: String,

    #[serde(rename = "target_commitish")]
    target_commitish: String,

    #[serde(rename = "name")]
    name: String,

    #[serde(rename = "draft")]
    draft: bool,

    #[serde(rename = "author")]
    author: User,

    #[serde(rename = "prerelease")]
    prerelease: bool,

    #[serde(rename = "created_at")]
    created_at: String,

    #[serde(rename = "published_at")]
    published_at: String,

    #[serde(rename = "assets")]
    assets: Vec<serde_json::Value>,

    #[serde(rename = "tarball_url")]
    tarball_url: String,

    #[serde(rename = "zipball_url")]
    zipball_url: String,

    #[serde(rename = "body")]
    body: String,
}

#[derive(Serialize, Deserialize)]
pub struct Repo {
    #[serde(rename = "id")]
    id: i64,

    #[serde(rename = "name")]
    name: String,

    #[serde(rename = "url")]
    url: String,
}

#[derive(Serialize, Deserialize)]
pub struct GistElement {
    #[serde(rename = "url")]
    url: String,

    #[serde(rename = "forks_url")]
    forks_url: String,

    #[serde(rename = "commits_url")]
    commits_url: String,

    #[serde(rename = "id")]
    id: String,

    #[serde(rename = "git_pull_url")]
    git_pull_url: String,

    #[serde(rename = "git_push_url")]
    git_push_url: String,

    #[serde(rename = "html_url")]
    html_url: String,

    #[serde(rename = "files")]
    files: HashMap<String, File>,

    #[serde(rename = "public")]
    public: bool,

    #[serde(rename = "created_at")]
    created_at: String,

    #[serde(rename = "updated_at")]
    updated_at: String,

    #[serde(rename = "description")]
    description: Option<String>,

    #[serde(rename = "comments")]
    comments: i64,

    #[serde(rename = "user")]
    user: Option<serde_json::Value>,

    #[serde(rename = "comments_url")]
    comments_url: String,

    #[serde(rename = "owner")]
    owner: Option<User>,

    #[serde(rename = "truncated")]
    truncated: bool,
}

#[derive(Serialize, Deserialize)]
pub struct File {
    #[serde(rename = "filename")]
    filename: String,

    #[serde(rename = "type")]
    file_type: FileType,

    #[serde(rename = "language")]
    language: Option<Language>,

    #[serde(rename = "raw_url")]
    raw_url: String,

    #[serde(rename = "size")]
    size: i64,
}

#[derive(Serialize, Deserialize)]
pub struct Meta {
    #[serde(rename = "verifiable_password_authentication")]
    verifiable_password_authentication: bool,

    #[serde(rename = "github_services_sha")]
    github_services_sha: String,

    #[serde(rename = "hooks")]
    hooks: Vec<String>,

    #[serde(rename = "git")]
    git: Vec<String>,

    #[serde(rename = "pages")]
    pages: Vec<String>,

    #[serde(rename = "importer")]
    importer: Vec<String>,
}

#[derive(Serialize, Deserialize)]
pub enum GravatarId {
    #[serde(rename = "")]
    Empty,
}

#[derive(Serialize, Deserialize)]
pub enum UserType {
    #[serde(rename = "Organization")]
    Organization,

    #[serde(rename = "User")]
    User,
}

#[derive(Serialize, Deserialize)]
pub enum FileType {
    #[serde(rename = "application/javascript")]
    ApplicationJavascript,

    #[serde(rename = "text/css")]
    TextCss,

    #[serde(rename = "text/plain")]
    TextPlain,
}

#[derive(Serialize, Deserialize)]
pub enum Language {
    #[serde(rename = "Apex")]
    Apex,

    #[serde(rename = "CSS")]
    Css,

    #[serde(rename = "JavaScript")]
    JavaScript,

    #[serde(rename = "Markdown")]
    Markdown,

    #[serde(rename = "Text")]
    Text,
}
