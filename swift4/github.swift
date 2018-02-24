// To parse the JSON, add this file to your project and do:
//
//   let aPIData = try APIData(json)
//   let emojis = try Emojis(json)
//   let events = try Events(json)
//   let gists = try Gists(json)
//   let meta = try Meta(json)

import Foundation

typealias Events = [EventElement]
typealias Gists = [GistElement]

struct APIData: Codable {
    let currentUserURL, currentUserAuthorizationsHTMLURL, authorizationsURL, codeSearchURL: String
    let commitSearchURL, emailsURL, emojisURL, eventsURL: String
    let feedsURL, followersURL, followingURL, gistsURL: String
    let hubURL, issueSearchURL, issuesURL, keysURL: String
    let notificationsURL, organizationRepositoriesURL, organizationURL, publicGistsURL: String
    let rateLimitURL, repositoryURL, repositorySearchURL, currentUserRepositoriesURL: String
    let starredURL, starredGistsURL, teamURL, userURL: String
    let userOrganizationsURL, userRepositoriesURL, userSearchURL: String

    enum CodingKeys: String, CodingKey {
        case currentUserURL = "current_user_url"
        case currentUserAuthorizationsHTMLURL = "current_user_authorizations_html_url"
        case authorizationsURL = "authorizations_url"
        case codeSearchURL = "code_search_url"
        case commitSearchURL = "commit_search_url"
        case emailsURL = "emails_url"
        case emojisURL = "emojis_url"
        case eventsURL = "events_url"
        case feedsURL = "feeds_url"
        case followersURL = "followers_url"
        case followingURL = "following_url"
        case gistsURL = "gists_url"
        case hubURL = "hub_url"
        case issueSearchURL = "issue_search_url"
        case issuesURL = "issues_url"
        case keysURL = "keys_url"
        case notificationsURL = "notifications_url"
        case organizationRepositoriesURL = "organization_repositories_url"
        case organizationURL = "organization_url"
        case publicGistsURL = "public_gists_url"
        case rateLimitURL = "rate_limit_url"
        case repositoryURL = "repository_url"
        case repositorySearchURL = "repository_search_url"
        case currentUserRepositoriesURL = "current_user_repositories_url"
        case starredURL = "starred_url"
        case starredGistsURL = "starred_gists_url"
        case teamURL = "team_url"
        case userURL = "user_url"
        case userOrganizationsURL = "user_organizations_url"
        case userRepositoriesURL = "user_repositories_url"
        case userSearchURL = "user_search_url"
    }
}

struct Emojis: Codable {
    let the1, emojis1, the100, the1234: String
    let the1StPlaceMedal, the2NdPlaceMedal, the3RDPlaceMedal, the8Ball: String
    let a, ab, abc, abcd: String
    let accept, aerialTramway, afghanistan, airplane: String
    let alandIslands, alarmClock, albania, alembic: String
    let algeria, alien, ambulance, americanSamoa: String
    let amphora, anchor, andorra, angel: String
    let anger, angola, angry, anguilla: String
    let anguished, ant, antarctica, antiguaBarbuda: String
    let apple, aquarius, argentina, aries: String
    let armenia, arrowBackward, arrowDoubleDown, arrowDoubleUp: String
    let arrowDown, arrowDownSmall, arrowForward, arrowHeadingDown: String
    let arrowHeadingUp, arrowLeft, arrowLowerLeft, arrowLowerRight: String
    let arrowRight, arrowRightHook, arrowUp, arrowUpDown: String
    let arrowUpSmall, arrowUpperLeft, arrowUpperRight, arrowsClockwise: String
    let arrowsCounterclockwise, art, articulatedLorry, artificialSatellite: String
    let aruba, asterisk, astonished, athleticShoe: String
    let atm, atom, atomSymbol, australia: String
    let austria, avocado, azerbaijan, b: String
    let baby, babyBottle, babyChick, babySymbol: String
    let back, bacon, badminton, baggageClaim: String
    let baguetteBread, bahamas, bahrain, balanceScale: String
    let balloon, ballotBox, ballotBoxWithCheck, bamboo: String
    let banana, bangbang, bangladesh, bank: String
    let barChart, barbados, barber, baseball: String
    let basecamp, basecampy, basketball, basketballMan: String
    let basketballWoman, bat, bath, bathtub: String
    let battery, beachUmbrella, bear, bed: String
    let bee, beer, beers, beetle: String
    let beginner, belarus, belgium, belize: String
    let bell, bellhopBell, benin, bento: String
    let bermuda, bhutan, bicyclist, bike: String
    let bikingMan, bikingWoman, bikini, biohazard: String
    let bird, birthday, blackCircle, blackFlag: String
    let blackHeart, blackJoker, blackLargeSquare, blackMediumSmallSquare: String
    let blackMediumSquare, blackNib, blackSmallSquare, blackSquareButton: String
    let blondeMan, blondeWoman, blossom, blowfish: String
    let blueBook, blueCar, blueHeart, blush: String
    let boar, boat, bolivia, bomb: String
    let book, bookmark, bookmarkTabs, books: String
    let boom, boot, bosniaHerzegovina, botswana: String
    let bouquet, bow, bowAndArrow, bowingMan: String
    let bowingWoman, bowling, bowtie, boxingGlove: String
    let boy, brazil, bread, brideWithVeil: String
    let bridgeAtNight, briefcase, britishIndianOceanTerritory, britishVirginIslands: String
    let brokenHeart, brunei, bug, buildingConstruction: String
    let bulb, bulgaria, bullettrainFront, bullettrainSide: String
    let burkinaFaso, burrito, burundi, bus: String
    let businessSuitLevitating, busstop, bustInSilhouette, bustsInSilhouette: String
    let butterfly, cactus, cake, calendar: String
    let callMeHand, calling, cambodia, camel: String
    let camera, cameraFlash, cameroon, camping: String
    let canada, canaryIslands, cancer, candle: String
    let candy, canoe, capeVerde, capitalAbcd: String
    let capricorn, car, cardFileBox, cardIndex: String
    let cardIndexDividers, caribbeanNetherlands, carouselHorse, carrot: String
    let cat, cat2, caymanIslands, cd: String
    let centralAfricanRepublic, chad, chains, champagne: String
    let chart, chartWithDownwardsTrend, chartWithUpwardsTrend, checkeredFlag: String
    let cheese, cherries, cherryBlossom, chestnut: String
    let chicken, childrenCrossing, chile, chipmunk: String
    let chocolateBar, christmasIsland, christmasTree, church: String
    let cinema, circusTent, citySunrise, citySunset: String
    let cityscape, cl, clamp, clap: String
    let clapper, classicalBuilding, clinkingGlasses, clipboard: String
    let clock1, clock10, clock1030, clock11: String
    let clock1130, clock12, clock1230, clock130: String
    let clock2, clock230, clock3, clock330: String
    let clock4, clock430, clock5, clock530: String
    let clock6, clock630, clock7, clock730: String
    let clock8, clock830, clock9, clock930: String
    let closedBook, closedLockWithKey, closedUmbrella, cloud: String
    let cloudWithLightning, cloudWithLightningAndRain, cloudWithRain, cloudWithSnow: String
    let clownFace, clubs, cn, cocktail: String
    let cocosIslands, coffee, coffin, coldSweat: String
    let collision, colombia, comet, comoros: String
    let computer, computerMouse, confettiBall, confounded: String
    let confused, congoBrazzaville, congoKinshasa, congratulations: String
    let construction, constructionWorker, constructionWorkerMan, constructionWorkerWoman: String
    let controlKnobs, convenienceStore, cookIslands, cookie: String
    let cool, cop, copyright, corn: String
    let costaRica, coteDivoire, couchAndLamp, couple: String
    let coupleWithHeart, coupleWithHeartManMan, coupleWithHeartWomanMan, coupleWithHeartWomanWoman: String
    let couplekissManMan, couplekissManWoman, couplekissWomanWoman, cow: String
    let cow2, cowboyHatFace, crab, crayon: String
    let creditCard, crescentMoon, cricket, croatia: String
    let crocodile, croissant, crossedFingers, crossedFlags: String
    let crossedSwords, crown, cry, cryingCatFace: String
    let crystalBall, cuba, cucumber, cupid: String
    let curacao, curlyLoop, currencyExchange, curry: String
    let custard, customs, cyclone, cyprus: String
    let czechRepublic, dagger, dancer, dancers: String
    let dancingMen, dancingWomen, dango, darkSunglasses: String
    let dart, dash, date, de: String
    let deciduousTree, deer, denmark, departmentStore: String
    let derelictHouse, desert, desertIsland, desktopComputer: String
    let detective, diamondShapeWithADotInside, diamonds, disappointed: String
    let disappointedRelieved, dizzy, dizzyFace, djibouti: String
    let doNotLitter, dog, dog2, dollar: String
    let dolls, dolphin, dominica, dominicanRepublic: String
    let door, doughnut, dove, dragon: String
    let dragonFace, dress, dromedaryCamel, droolingFace: String
    let droplet, drum, duck, dvd: String
    let eMail, eagle, ear, earOfRice: String
    let earthAfrica, earthAmericas, earthAsia, ecuador: String
    let egg, eggplant, egypt, eight: String
    let eightPointedBlackStar, eightSpokedAsterisk, elSalvador, electricPlug: String
    let electron, elephant, email, end: String
    let envelope, envelopeWithArrow, equatorialGuinea, eritrea: String
    let es, estonia, ethiopia, eu: String
    let euro, europeanCastle, europeanPostOffice, europeanUnion: String
    let evergreenTree, exclamation, expressionless, eye: String
    let eyeSpeechBubble, eyeglasses, eyes, faceWithHeadBandage: String
    let faceWithThermometer, facepunch, factory, falklandIslands: String
    let fallenLeaf, family, familyManBoy, familyManBoyBoy: String
    let familyManGirl, familyManGirlBoy, familyManGirlGirl, familyManManBoy: String
    let familyManManBoyBoy, familyManManGirl, familyManManGirlBoy, familyManManGirlGirl: String
    let familyManWomanBoy, familyManWomanBoyBoy, familyManWomanGirl, familyManWomanGirlBoy: String
    let familyManWomanGirlGirl, familyWomanBoy, familyWomanBoyBoy, familyWomanGirl: String
    let familyWomanGirlBoy, familyWomanGirlGirl, familyWomanWomanBoy, familyWomanWomanBoyBoy: String
    let familyWomanWomanGirl, familyWomanWomanGirlBoy, familyWomanWomanGirlGirl, faroeIslands: String
    let fastForward, fax, fearful, feelsgood: String
    let feet, femaleDetective, ferrisWheel, ferry: String
    let fieldHockey, fiji, fileCabinet, fileFolder: String
    let filmProjector, filmStrip, finland, finnadie: String
    let fire, fireEngine, fireworks, firstQuarterMoon: String
    let firstQuarterMoonWithFace, fish, fishCake, fishingPoleAndFish: String
    let fist, fistLeft, fistOncoming, fistRaised: String
    let fistRight, five, flags, flashlight: String
    let fleurDeLis, flightArrival, flightDeparture, flipper: String
    let floppyDisk, flowerPlayingCards, flushed, fog: String
    let foggy, football, footprints, forkAndKnife: String
    let fountain, fountainPen, four, fourLeafClover: String
    let foxFace, fr, framedPicture, free: String
    let frenchGuiana, frenchPolynesia, frenchSouthernTerritories, friedEgg: String
    let friedShrimp, fries, frog, frowning: String
    let frowningFace, frowningMan, frowningWoman, fu: String
    let fuelpump, fullMoon, fullMoonWithFace, funeralUrn: String
    let gabon, gambia, gameDie, gb: String
    let gear, gem, gemini, georgia: String
    let ghana, ghost, gibraltar, gift: String
    let giftHeart, girl, globeWithMeridians, goalNet: String
    let goat, goberserk, godmode, golf: String
    let golfingMan, golfingWoman, gorilla, grapes: String
    let greece, greenApple, greenBook, greenHeart: String
    let greenSalad, greenland, grenada, greyExclamation: String
    let greyQuestion, grimacing, grin, grinning: String
    let guadeloupe, guam, guardsman, guardswoman: String
    let guatemala, guernsey, guinea, guineaBissau: String
    let guitar, gun, guyana, haircut: String
    let haircutMan, haircutWoman, haiti, hamburger: String
    let hammer, hammerAndPick, hammerAndWrench, hamster: String
    let hand, handbag, handshake, hankey: String
    let hash, hatchedChick, hatchingChick, headphones: String
    let hearNoEvil, heart, heartDecoration, heartEyes: String
    let heartEyesCat, heartbeat, heartpulse, hearts: String
    let heavyCheckMark, heavyDivisionSign, heavyDollarSign, heavyExclamationMark: String
    let heavyHeartExclamation, heavyMinusSign, heavyMultiplicationX, heavyPlusSign: String
    let helicopter, herb, hibiscus, highBrightness: String
    let highHeel, hocho, hole, honduras: String
    let honeyPot, honeybee, hongKong, horse: String
    let horseRacing, hospital, hotPepper, hotdog: String
    let hotel, hotsprings, hourglass, hourglassFlowingSand: String
    let house, houseWithGarden, houses, hugs: String
    let hungary, hurtrealbad, hushed, iceCream: String
    let iceHockey, iceSkate, icecream, iceland: String
    let id, ideographAdvantage, imp, inboxTray: String
    let incomingEnvelope, india, indonesia, informationDeskPerson: String
    let informationSource, innocent, interrobang, iphone: String
    let iran, iraq, ireland, isleOfMan: String
    let israel, it, izakayaLantern, jackOLantern: String
    let jamaica, japan, japaneseCastle, japaneseGoblin: String
    let japaneseOgre, jeans, jersey, jordan: String
    let joy, joyCat, joystick, jp: String
    let kaaba, kazakhstan, kenya, key: String
    let keyboard, keycapTen, kickScooter, kimono: String
    let kiribati, kiss, kissing, kissingCat: String
    let kissingClosedEyes, kissingHeart, kissingSmilingEyes, kiwiFruit: String
    let knife, koala, koko, kosovo: String
    let kr, kuwait, kyrgyzstan, label: String
    let lantern, laos, largeBlueCircle, largeBlueDiamond: String
    let largeOrangeDiamond, lastQuarterMoon, lastQuarterMoonWithFace, latinCross: String
    let latvia, laughing, leaves, lebanon: String
    let ledger, leftLuggage, leftRightArrow, leftwardsArrowWithHook: String
    let lemon, leo, leopard, lesotho: String
    let levelSlider, liberia, libra, libya: String
    let liechtenstein, lightRail, link, lion: String
    let lips, lipstick, lithuania, lizard: String
    let lock, lockWithInkPen, lollipop, loop: String
    let loudSound, loudspeaker, loveHotel, loveLetter: String
    let lowBrightness, luxembourg, lyingFace, m: String
    let macau, macedonia, madagascar, mag: String
    let magRight, mahjong, mailbox, mailboxClosed: String
    let mailboxWithMail, mailboxWithNoMail, malawi, malaysia: String
    let maldives, maleDetective, mali, malta: String
    let man, manArtist, manAstronaut, manCartwheeling: String
    let manCook, manDancing, manFacepalming, manFactoryWorker: String
    let manFarmer, manFirefighter, manHealthWorker, manInTuxedo: String
    let manJudge, manJuggling, manMechanic, manOfficeWorker: String
    let manPilot, manPlayingHandball, manPlayingWaterPolo, manScientist: String
    let manShrugging, manSinger, manStudent, manTeacher: String
    let manTechnologist, manWithGuaPiMao, manWithTurban, mandarin: String
    let mansShoe, mantelpieceClock, mapleLeaf, marshallIslands: String
    let martialArtsUniform, martinique, mask, massage: String
    let massageMan, massageWoman, mauritania, mauritius: String
    let mayotte, meatOnBone, medalMilitary, medalSports: String
    let mega, melon, memo, menWrestling: String
    let menorah, mens, metal, metro: String
    let mexico, micronesia, microphone, microscope: String
    let middleFinger, milkGlass, milkyWay, minibus: String
    let minidisc, mobilePhoneOff, moldova, monaco: String
    let moneyMouthFace, moneyWithWings, moneybag, mongolia: String
    let monkey, monkeyFace, monorail, montenegro: String
    let montserrat, moon, morocco, mortarBoard: String
    let mosque, motorBoat, motorScooter, motorcycle: String
    let motorway, mountFuji, mountain, mountainBicyclist: String
    let mountainBikingMan, mountainBikingWoman, mountainCableway, mountainRailway: String
    let mountainSnow, mouse, mouse2, movieCamera: String
    let moyai, mozambique, mrsClaus, muscle: String
    let mushroom, musicalKeyboard, musicalNote, musicalScore: String
    let mute, myanmar, nailCare, nameBadge: String
    let namibia, nationalPark, nauru, nauseatedFace: String
    let neckbeard, necktie, negativeSquaredCrossMark, nepal: String
    let nerdFace, netherlands, neutralFace, new: String
    let newCaledonia, newMoon, newMoonWithFace, newZealand: String
    let newspaper, newspaperRoll, nextTrackButton, ng: String
    let ngMan, ngWoman, nicaragua, niger: String
    let nigeria, nightWithStars, nine, niue: String
    let noBell, noBicycles, noEntry, noEntrySign: String
    let noGood, noGoodMan, noGoodWoman, noMobilePhones: String
    let noMouth, noPedestrians, noSmoking, nonPotableWater: String
    let norfolkIsland, northKorea, northernMarianaIslands, norway: String
    let nose, notebook, notebookWithDecorativeCover, notes: String
    let nutAndBolt, o, o2, ocean: String
    let octocat, octopus, oden, office: String
    let oilDrum, ok, okHand, okMan: String
    let okWoman, oldKey, olderMan, olderWoman: String
    let om, oman, on, oncomingAutomobile: String
    let oncomingBus, oncomingPoliceCar, oncomingTaxi, one: String
    let openBook, openFileFolder, openHands, openMouth: String
    let openUmbrella, ophiuchus, orange, orangeBook: String
    let orthodoxCross, outboxTray, owl, ox: String
    let package, pageFacingUp, pageWithCurl, pager: String
    let paintbrush, pakistan, palau, palestinianTerritories: String
    let palmTree, panama, pancakes, pandaFace: String
    let paperclip, paperclips, papuaNewGuinea, paraguay: String
    let parasolOnGround, parking, partAlternationMark, partlySunny: String
    let passengerShip, passportControl, pauseButton, pawPrints: String
    let peaceSymbol, peach, peanuts, pear: String
    let pen, pencil, pencil2, penguin: String
    let pensive, performingArts, persevere, personFencing: String
    let personFrowning, personWithBlondHair, personWithPoutingFace, peru: String
    let philippines, phone, pick, pig: String
    let pig2, pigNose, pill, pineapple: String
    let pingPong, pisces, pitcairnIslands, pizza: String
    let placeOfWorship, plateWithCutlery, playOrPauseButton, pointDown: String
    let pointLeft, pointRight, pointUp, pointUp2: String
    let poland, policeCar, policeman, policewoman: String
    let poodle, poop, popcorn, portugal: String
    let postOffice, postalHorn, postbox, potableWater: String
    let potato, pouch, poultryLeg, pound: String
    let pout, poutingCat, poutingMan, poutingWoman: String
    let pray, prayerBeads, pregnantWoman, previousTrackButton: String
    let prince, princess, printer, puertoRico: String
    let punch, purpleHeart, purse, pushpin: String
    let putLitterInItsPlace, qatar, question, rabbit: String
    let rabbit2, racehorse, racingCar, radio: String
    let radioButton, radioactive, rage, rage1: String
    let rage2, rage3, rage4, railwayCar: String
    let railwayTrack, rainbow, rainbowFlag, raisedBackOfHand: String
    let raisedHand, raisedHandWithFingersSplayed, raisedHands, raisingHand: String
    let raisingHandMan, raisingHandWoman, ram, ramen: String
    let rat, recordButton, recycle, redCar: String
    let redCircle, registered, relaxed, relieved: String
    let reminderRibbon, emojisRepeat, repeatOne, rescueWorkerHelmet: String
    let restroom, reunion, revolvingHearts, rewind: String
    let rhinoceros, ribbon, rice, riceBall: String
    let riceCracker, riceScene, rightAngerBubble, ring: String
    let robot, rocket, rofl, rollEyes: String
    let rollerCoaster, romania, rooster, rose: String
    let rosette, rotatingLight, roundPushpin, rowboat: String
    let rowingMan, rowingWoman, ru, rugbyFootball: String
    let runner, running, runningMan, runningShirtWithSash: String
    let runningWoman, rwanda, sa, sagittarius: String
    let sailboat, sake, samoa, sanMarino: String
    let sandal, santa, saoTomePrincipe, satellite: String
    let satisfied, saudiArabia, saxophone, school: String
    let schoolSatchel, scissors, scorpion, scorpius: String
    let scream, screamCat, scroll, seat: String
    let secret, seeNoEvil, seedling, selfie: String
    let senegal, serbia, seven, seychelles: String
    let shallowPanOfFood, shamrock, shark, shavedIce: String
    let sheep, shell, shield, shintoShrine: String
    let ship, shipit, shirt, shit: String
    let shoe, shopping, shoppingCart, shower: String
    let shrimp, sierraLeone, signalStrength, singapore: String
    let sintMaarten, six, sixPointedStar, ski: String
    let skier, skull, skullAndCrossbones, sleeping: String
    let sleepingBed, sleepy, slightlyFrowningFace, slightlySmilingFace: String
    let slotMachine, slovakia, slovenia, smallAirplane: String
    let smallBlueDiamond, smallOrangeDiamond, smallRedTriangle, smallRedTriangleDown: String
    let smile, smileCat, smiley, smileyCat: String
    let smilingImp, smirk, smirkCat, smoking: String
    let snail, snake, sneezingFace, snowboarder: String
    let snowflake, snowman, snowmanWithSnow, sob: String
    let soccer, solomonIslands, somalia, soon: String
    let sos, sound, southAfrica, southGeorgiaSouthSandwichIslands: String
    let southSudan, spaceInvader, spades, spaghetti: String
    let sparkle, sparkler, sparkles, sparklingHeart: String
    let speakNoEvil, speaker, speakingHead, speechBalloon: String
    let speedboat, spider, spiderWeb, spiralCalendar: String
    let spiralNotepad, spoon, squid, squirrel: String
    let sriLanka, stBarthelemy, stHelena, stKittsNevis: String
    let stLucia, stPierreMiquelon, stVincentGrenadines, stadium: String
    let star, star2, starAndCrescent, starOfDavid: String
    let stars, station, statueOfLiberty, steamLocomotive: String
    let stew, stopButton, stopSign, stopwatch: String
    let straightRuler, strawberry, stuckOutTongue, stuckOutTongueClosedEyes: String
    let stuckOutTongueWinkingEye, studioMicrophone, stuffedFlatbread, sudan: String
    let sunBehindLargeCloud, sunBehindRainCloud, sunBehindSmallCloud, sunWithFace: String
    let sunflower, sunglasses, sunny, sunrise: String
    let sunriseOverMountains, surfer, surfingMan, surfingWoman: String
    let suriname, sushi, suspect, suspensionRailway: String
    let swaziland, sweat, sweatDrops, sweatSmile: String
    let sweden, sweetPotato, swimmer, swimmingMan: String
    let swimmingWoman, switzerland, symbols, synagogue: String
    let syria, syringe, taco, tada: String
    let taiwan, tajikistan, tanabataTree, tangerine: String
    let tanzania, taurus, taxi, tea: String
    let telephone, telephoneReceiver, telescope, tennis: String
    let tent, thailand, thermometer, thinking: String
    let thoughtBalloon, three, thumbsdown, thumbsup: String
    let ticket, tickets, tiger, tiger2: String
    let timerClock, timorLeste, tippingHandMan, tippingHandWoman: String
    let tiredFace, tm, togo, toilet: String
    let tokelau, tokyoTower, tomato, tonga: String
    let tongue, top, tophat, tornado: String
    let tr, trackball, tractor, trafficLight: String
    let train, train2, tram, triangularFlagOnPost: String
    let triangularRuler, trident, trinidadTobago, triumph: String
    let trolleybus, trollface, trophy, tropicalDrink: String
    let tropicalFish, truck, trumpet, tshirt: String
    let tulip, tumblerGlass, tunisia, turkey: String
    let turkmenistan, turksCaicosIslands, turtle, tuvalu: String
    let tv, twistedRightwardsArrows, two, twoHearts: String
    let twoMenHoldingHands, twoWomenHoldingHands, u5272, u5408: String
    let u55B6, u6307, u6708, u6709: String
    let u6E80, u7121, u7533, u7981: String
    let u7A7A, uganda, uk, ukraine: String
    let umbrella, unamused, underage, unicorn: String
    let unitedArabEmirates, unlock, up, upsideDownFace: String
    let uruguay, us, usVirginIslands, uzbekistan: String
    let v, vanuatu, vaticanCity, venezuela: String
    let verticalTrafficLight, vhs, vibrationMode, videoCamera: String
    let videoGame, vietnam, violin, virgo: String
    let volcano, volleyball, vs, vulcanSalute: String
    let walking, walkingMan, walkingWoman, wallisFutuna: String
    let waningCrescentMoon, waningGibbousMoon, warning, wastebasket: String
    let watch, waterBuffalo, watermelon, wave: String
    let wavyDash, waxingCrescentMoon, waxingGibbousMoon, wc: String
    let weary, wedding, weightLiftingMan, weightLiftingWoman: String
    let westernSahara, whale, whale2, wheelOfDharma: String
    let wheelchair, whiteCheckMark, whiteCircle, whiteFlag: String
    let whiteFlower, whiteLargeSquare, whiteMediumSmallSquare, whiteMediumSquare: String
    let whiteSmallSquare, whiteSquareButton, wiltedFlower, windChime: String
    let windFace, wineGlass, wink, wolf: String
    let woman, womanArtist, womanAstronaut, womanCartwheeling: String
    let womanCook, womanFacepalming, womanFactoryWorker, womanFarmer: String
    let womanFirefighter, womanHealthWorker, womanJudge, womanJuggling: String
    let womanMechanic, womanOfficeWorker, womanPilot, womanPlayingHandball: String
    let womanPlayingWaterPolo, womanScientist, womanShrugging, womanSinger: String
    let womanStudent, womanTeacher, womanTechnologist, womanWithTurban: String
    let womansClothes, womansHat, womenWrestling, womens: String
    let worldMap, worried, wrench, writingHand: String
    let x, yellowHeart, yemen, yen: String
    let yinYang, yum, zambia, zap: String
    let zero, zimbabwe, zipperMouthFace, zzz: String

    enum CodingKeys: String, CodingKey {
        case the1 = "+1"
        case emojis1 = "-1"
        case the100 = "100"
        case the1234 = "1234"
        case the1StPlaceMedal = "1st_place_medal"
        case the2NdPlaceMedal = "2nd_place_medal"
        case the3RDPlaceMedal = "3rd_place_medal"
        case the8Ball = "8ball"
        case a, ab, abc, abcd, accept
        case aerialTramway = "aerial_tramway"
        case afghanistan, airplane
        case alandIslands = "aland_islands"
        case alarmClock = "alarm_clock"
        case albania, alembic, algeria, alien, ambulance
        case americanSamoa = "american_samoa"
        case amphora, anchor, andorra, angel, anger, angola, angry, anguilla, anguished, ant, antarctica
        case antiguaBarbuda = "antigua_barbuda"
        case apple, aquarius, argentina, aries, armenia
        case arrowBackward = "arrow_backward"
        case arrowDoubleDown = "arrow_double_down"
        case arrowDoubleUp = "arrow_double_up"
        case arrowDown = "arrow_down"
        case arrowDownSmall = "arrow_down_small"
        case arrowForward = "arrow_forward"
        case arrowHeadingDown = "arrow_heading_down"
        case arrowHeadingUp = "arrow_heading_up"
        case arrowLeft = "arrow_left"
        case arrowLowerLeft = "arrow_lower_left"
        case arrowLowerRight = "arrow_lower_right"
        case arrowRight = "arrow_right"
        case arrowRightHook = "arrow_right_hook"
        case arrowUp = "arrow_up"
        case arrowUpDown = "arrow_up_down"
        case arrowUpSmall = "arrow_up_small"
        case arrowUpperLeft = "arrow_upper_left"
        case arrowUpperRight = "arrow_upper_right"
        case arrowsClockwise = "arrows_clockwise"
        case arrowsCounterclockwise = "arrows_counterclockwise"
        case art
        case articulatedLorry = "articulated_lorry"
        case artificialSatellite = "artificial_satellite"
        case aruba, asterisk, astonished
        case athleticShoe = "athletic_shoe"
        case atm, atom
        case atomSymbol = "atom_symbol"
        case australia, austria, avocado, azerbaijan, b, baby
        case babyBottle = "baby_bottle"
        case babyChick = "baby_chick"
        case babySymbol = "baby_symbol"
        case back, bacon, badminton
        case baggageClaim = "baggage_claim"
        case baguetteBread = "baguette_bread"
        case bahamas, bahrain
        case balanceScale = "balance_scale"
        case balloon
        case ballotBox = "ballot_box"
        case ballotBoxWithCheck = "ballot_box_with_check"
        case bamboo, banana, bangbang, bangladesh, bank
        case barChart = "bar_chart"
        case barbados, barber, baseball, basecamp, basecampy, basketball
        case basketballMan = "basketball_man"
        case basketballWoman = "basketball_woman"
        case bat, bath, bathtub, battery
        case beachUmbrella = "beach_umbrella"
        case bear, bed, bee, beer, beers, beetle, beginner, belarus, belgium, belize, bell
        case bellhopBell = "bellhop_bell"
        case benin, bento, bermuda, bhutan, bicyclist, bike
        case bikingMan = "biking_man"
        case bikingWoman = "biking_woman"
        case bikini, biohazard, bird, birthday
        case blackCircle = "black_circle"
        case blackFlag = "black_flag"
        case blackHeart = "black_heart"
        case blackJoker = "black_joker"
        case blackLargeSquare = "black_large_square"
        case blackMediumSmallSquare = "black_medium_small_square"
        case blackMediumSquare = "black_medium_square"
        case blackNib = "black_nib"
        case blackSmallSquare = "black_small_square"
        case blackSquareButton = "black_square_button"
        case blondeMan = "blonde_man"
        case blondeWoman = "blonde_woman"
        case blossom, blowfish
        case blueBook = "blue_book"
        case blueCar = "blue_car"
        case blueHeart = "blue_heart"
        case blush, boar, boat, bolivia, bomb, book, bookmark
        case bookmarkTabs = "bookmark_tabs"
        case books, boom, boot
        case bosniaHerzegovina = "bosnia_herzegovina"
        case botswana, bouquet, bow
        case bowAndArrow = "bow_and_arrow"
        case bowingMan = "bowing_man"
        case bowingWoman = "bowing_woman"
        case bowling, bowtie
        case boxingGlove = "boxing_glove"
        case boy, brazil, bread
        case brideWithVeil = "bride_with_veil"
        case bridgeAtNight = "bridge_at_night"
        case briefcase
        case britishIndianOceanTerritory = "british_indian_ocean_territory"
        case britishVirginIslands = "british_virgin_islands"
        case brokenHeart = "broken_heart"
        case brunei, bug
        case buildingConstruction = "building_construction"
        case bulb, bulgaria
        case bullettrainFront = "bullettrain_front"
        case bullettrainSide = "bullettrain_side"
        case burkinaFaso = "burkina_faso"
        case burrito, burundi, bus
        case businessSuitLevitating = "business_suit_levitating"
        case busstop
        case bustInSilhouette = "bust_in_silhouette"
        case bustsInSilhouette = "busts_in_silhouette"
        case butterfly, cactus, cake, calendar
        case callMeHand = "call_me_hand"
        case calling, cambodia, camel, camera
        case cameraFlash = "camera_flash"
        case cameroon, camping, canada
        case canaryIslands = "canary_islands"
        case cancer, candle, candy, canoe
        case capeVerde = "cape_verde"
        case capitalAbcd = "capital_abcd"
        case capricorn, car
        case cardFileBox = "card_file_box"
        case cardIndex = "card_index"
        case cardIndexDividers = "card_index_dividers"
        case caribbeanNetherlands = "caribbean_netherlands"
        case carouselHorse = "carousel_horse"
        case carrot, cat, cat2
        case caymanIslands = "cayman_islands"
        case cd
        case centralAfricanRepublic = "central_african_republic"
        case chad, chains, champagne, chart
        case chartWithDownwardsTrend = "chart_with_downwards_trend"
        case chartWithUpwardsTrend = "chart_with_upwards_trend"
        case checkeredFlag = "checkered_flag"
        case cheese, cherries
        case cherryBlossom = "cherry_blossom"
        case chestnut, chicken
        case childrenCrossing = "children_crossing"
        case chile, chipmunk
        case chocolateBar = "chocolate_bar"
        case christmasIsland = "christmas_island"
        case christmasTree = "christmas_tree"
        case church, cinema
        case circusTent = "circus_tent"
        case citySunrise = "city_sunrise"
        case citySunset = "city_sunset"
        case cityscape, cl, clamp, clap, clapper
        case classicalBuilding = "classical_building"
        case clinkingGlasses = "clinking_glasses"
        case clipboard, clock1, clock10, clock1030, clock11, clock1130, clock12, clock1230, clock130, clock2, clock230, clock3, clock330, clock4, clock430, clock5, clock530, clock6, clock630, clock7, clock730, clock8, clock830, clock9, clock930
        case closedBook = "closed_book"
        case closedLockWithKey = "closed_lock_with_key"
        case closedUmbrella = "closed_umbrella"
        case cloud
        case cloudWithLightning = "cloud_with_lightning"
        case cloudWithLightningAndRain = "cloud_with_lightning_and_rain"
        case cloudWithRain = "cloud_with_rain"
        case cloudWithSnow = "cloud_with_snow"
        case clownFace = "clown_face"
        case clubs, cn, cocktail
        case cocosIslands = "cocos_islands"
        case coffee, coffin
        case coldSweat = "cold_sweat"
        case collision, colombia, comet, comoros, computer
        case computerMouse = "computer_mouse"
        case confettiBall = "confetti_ball"
        case confounded, confused
        case congoBrazzaville = "congo_brazzaville"
        case congoKinshasa = "congo_kinshasa"
        case congratulations, construction
        case constructionWorker = "construction_worker"
        case constructionWorkerMan = "construction_worker_man"
        case constructionWorkerWoman = "construction_worker_woman"
        case controlKnobs = "control_knobs"
        case convenienceStore = "convenience_store"
        case cookIslands = "cook_islands"
        case cookie, cool, cop, copyright, corn
        case costaRica = "costa_rica"
        case coteDivoire = "cote_divoire"
        case couchAndLamp = "couch_and_lamp"
        case couple
        case coupleWithHeart = "couple_with_heart"
        case coupleWithHeartManMan = "couple_with_heart_man_man"
        case coupleWithHeartWomanMan = "couple_with_heart_woman_man"
        case coupleWithHeartWomanWoman = "couple_with_heart_woman_woman"
        case couplekissManMan = "couplekiss_man_man"
        case couplekissManWoman = "couplekiss_man_woman"
        case couplekissWomanWoman = "couplekiss_woman_woman"
        case cow, cow2
        case cowboyHatFace = "cowboy_hat_face"
        case crab, crayon
        case creditCard = "credit_card"
        case crescentMoon = "crescent_moon"
        case cricket, croatia, crocodile, croissant
        case crossedFingers = "crossed_fingers"
        case crossedFlags = "crossed_flags"
        case crossedSwords = "crossed_swords"
        case crown, cry
        case cryingCatFace = "crying_cat_face"
        case crystalBall = "crystal_ball"
        case cuba, cucumber, cupid, curacao
        case curlyLoop = "curly_loop"
        case currencyExchange = "currency_exchange"
        case curry, custard, customs, cyclone, cyprus
        case czechRepublic = "czech_republic"
        case dagger, dancer, dancers
        case dancingMen = "dancing_men"
        case dancingWomen = "dancing_women"
        case dango
        case darkSunglasses = "dark_sunglasses"
        case dart, dash, date, de
        case deciduousTree = "deciduous_tree"
        case deer, denmark
        case departmentStore = "department_store"
        case derelictHouse = "derelict_house"
        case desert
        case desertIsland = "desert_island"
        case desktopComputer = "desktop_computer"
        case detective
        case diamondShapeWithADotInside = "diamond_shape_with_a_dot_inside"
        case diamonds, disappointed
        case disappointedRelieved = "disappointed_relieved"
        case dizzy
        case dizzyFace = "dizzy_face"
        case djibouti
        case doNotLitter = "do_not_litter"
        case dog, dog2, dollar, dolls, dolphin, dominica
        case dominicanRepublic = "dominican_republic"
        case door, doughnut, dove, dragon
        case dragonFace = "dragon_face"
        case dress
        case dromedaryCamel = "dromedary_camel"
        case droolingFace = "drooling_face"
        case droplet, drum, duck, dvd
        case eMail = "e-mail"
        case eagle, ear
        case earOfRice = "ear_of_rice"
        case earthAfrica = "earth_africa"
        case earthAmericas = "earth_americas"
        case earthAsia = "earth_asia"
        case ecuador, egg, eggplant, egypt, eight
        case eightPointedBlackStar = "eight_pointed_black_star"
        case eightSpokedAsterisk = "eight_spoked_asterisk"
        case elSalvador = "el_salvador"
        case electricPlug = "electric_plug"
        case electron, elephant, email, end, envelope
        case envelopeWithArrow = "envelope_with_arrow"
        case equatorialGuinea = "equatorial_guinea"
        case eritrea, es, estonia, ethiopia, eu, euro
        case europeanCastle = "european_castle"
        case europeanPostOffice = "european_post_office"
        case europeanUnion = "european_union"
        case evergreenTree = "evergreen_tree"
        case exclamation, expressionless, eye
        case eyeSpeechBubble = "eye_speech_bubble"
        case eyeglasses, eyes
        case faceWithHeadBandage = "face_with_head_bandage"
        case faceWithThermometer = "face_with_thermometer"
        case facepunch, factory
        case falklandIslands = "falkland_islands"
        case fallenLeaf = "fallen_leaf"
        case family
        case familyManBoy = "family_man_boy"
        case familyManBoyBoy = "family_man_boy_boy"
        case familyManGirl = "family_man_girl"
        case familyManGirlBoy = "family_man_girl_boy"
        case familyManGirlGirl = "family_man_girl_girl"
        case familyManManBoy = "family_man_man_boy"
        case familyManManBoyBoy = "family_man_man_boy_boy"
        case familyManManGirl = "family_man_man_girl"
        case familyManManGirlBoy = "family_man_man_girl_boy"
        case familyManManGirlGirl = "family_man_man_girl_girl"
        case familyManWomanBoy = "family_man_woman_boy"
        case familyManWomanBoyBoy = "family_man_woman_boy_boy"
        case familyManWomanGirl = "family_man_woman_girl"
        case familyManWomanGirlBoy = "family_man_woman_girl_boy"
        case familyManWomanGirlGirl = "family_man_woman_girl_girl"
        case familyWomanBoy = "family_woman_boy"
        case familyWomanBoyBoy = "family_woman_boy_boy"
        case familyWomanGirl = "family_woman_girl"
        case familyWomanGirlBoy = "family_woman_girl_boy"
        case familyWomanGirlGirl = "family_woman_girl_girl"
        case familyWomanWomanBoy = "family_woman_woman_boy"
        case familyWomanWomanBoyBoy = "family_woman_woman_boy_boy"
        case familyWomanWomanGirl = "family_woman_woman_girl"
        case familyWomanWomanGirlBoy = "family_woman_woman_girl_boy"
        case familyWomanWomanGirlGirl = "family_woman_woman_girl_girl"
        case faroeIslands = "faroe_islands"
        case fastForward = "fast_forward"
        case fax, fearful, feelsgood, feet
        case femaleDetective = "female_detective"
        case ferrisWheel = "ferris_wheel"
        case ferry
        case fieldHockey = "field_hockey"
        case fiji
        case fileCabinet = "file_cabinet"
        case fileFolder = "file_folder"
        case filmProjector = "film_projector"
        case filmStrip = "film_strip"
        case finland, finnadie, fire
        case fireEngine = "fire_engine"
        case fireworks
        case firstQuarterMoon = "first_quarter_moon"
        case firstQuarterMoonWithFace = "first_quarter_moon_with_face"
        case fish
        case fishCake = "fish_cake"
        case fishingPoleAndFish = "fishing_pole_and_fish"
        case fist
        case fistLeft = "fist_left"
        case fistOncoming = "fist_oncoming"
        case fistRaised = "fist_raised"
        case fistRight = "fist_right"
        case five, flags, flashlight
        case fleurDeLis = "fleur_de_lis"
        case flightArrival = "flight_arrival"
        case flightDeparture = "flight_departure"
        case flipper
        case floppyDisk = "floppy_disk"
        case flowerPlayingCards = "flower_playing_cards"
        case flushed, fog, foggy, football, footprints
        case forkAndKnife = "fork_and_knife"
        case fountain
        case fountainPen = "fountain_pen"
        case four
        case fourLeafClover = "four_leaf_clover"
        case foxFace = "fox_face"
        case fr
        case framedPicture = "framed_picture"
        case free
        case frenchGuiana = "french_guiana"
        case frenchPolynesia = "french_polynesia"
        case frenchSouthernTerritories = "french_southern_territories"
        case friedEgg = "fried_egg"
        case friedShrimp = "fried_shrimp"
        case fries, frog, frowning
        case frowningFace = "frowning_face"
        case frowningMan = "frowning_man"
        case frowningWoman = "frowning_woman"
        case fu, fuelpump
        case fullMoon = "full_moon"
        case fullMoonWithFace = "full_moon_with_face"
        case funeralUrn = "funeral_urn"
        case gabon, gambia
        case gameDie = "game_die"
        case gb, gear, gem, gemini, georgia, ghana, ghost, gibraltar, gift
        case giftHeart = "gift_heart"
        case girl
        case globeWithMeridians = "globe_with_meridians"
        case goalNet = "goal_net"
        case goat, goberserk, godmode, golf
        case golfingMan = "golfing_man"
        case golfingWoman = "golfing_woman"
        case gorilla, grapes, greece
        case greenApple = "green_apple"
        case greenBook = "green_book"
        case greenHeart = "green_heart"
        case greenSalad = "green_salad"
        case greenland, grenada
        case greyExclamation = "grey_exclamation"
        case greyQuestion = "grey_question"
        case grimacing, grin, grinning, guadeloupe, guam, guardsman, guardswoman, guatemala, guernsey, guinea
        case guineaBissau = "guinea_bissau"
        case guitar, gun, guyana, haircut
        case haircutMan = "haircut_man"
        case haircutWoman = "haircut_woman"
        case haiti, hamburger, hammer
        case hammerAndPick = "hammer_and_pick"
        case hammerAndWrench = "hammer_and_wrench"
        case hamster, hand, handbag, handshake, hankey, hash
        case hatchedChick = "hatched_chick"
        case hatchingChick = "hatching_chick"
        case headphones
        case hearNoEvil = "hear_no_evil"
        case heart
        case heartDecoration = "heart_decoration"
        case heartEyes = "heart_eyes"
        case heartEyesCat = "heart_eyes_cat"
        case heartbeat, heartpulse, hearts
        case heavyCheckMark = "heavy_check_mark"
        case heavyDivisionSign = "heavy_division_sign"
        case heavyDollarSign = "heavy_dollar_sign"
        case heavyExclamationMark = "heavy_exclamation_mark"
        case heavyHeartExclamation = "heavy_heart_exclamation"
        case heavyMinusSign = "heavy_minus_sign"
        case heavyMultiplicationX = "heavy_multiplication_x"
        case heavyPlusSign = "heavy_plus_sign"
        case helicopter, herb, hibiscus
        case highBrightness = "high_brightness"
        case highHeel = "high_heel"
        case hocho, hole, honduras
        case honeyPot = "honey_pot"
        case honeybee
        case hongKong = "hong_kong"
        case horse
        case horseRacing = "horse_racing"
        case hospital
        case hotPepper = "hot_pepper"
        case hotdog, hotel, hotsprings, hourglass
        case hourglassFlowingSand = "hourglass_flowing_sand"
        case house
        case houseWithGarden = "house_with_garden"
        case houses, hugs, hungary, hurtrealbad, hushed
        case iceCream = "ice_cream"
        case iceHockey = "ice_hockey"
        case iceSkate = "ice_skate"
        case icecream, iceland, id
        case ideographAdvantage = "ideograph_advantage"
        case imp
        case inboxTray = "inbox_tray"
        case incomingEnvelope = "incoming_envelope"
        case india, indonesia
        case informationDeskPerson = "information_desk_person"
        case informationSource = "information_source"
        case innocent, interrobang, iphone, iran, iraq, ireland
        case isleOfMan = "isle_of_man"
        case israel, it
        case izakayaLantern = "izakaya_lantern"
        case jackOLantern = "jack_o_lantern"
        case jamaica, japan
        case japaneseCastle = "japanese_castle"
        case japaneseGoblin = "japanese_goblin"
        case japaneseOgre = "japanese_ogre"
        case jeans, jersey, jordan, joy
        case joyCat = "joy_cat"
        case joystick, jp, kaaba, kazakhstan, kenya, key, keyboard
        case keycapTen = "keycap_ten"
        case kickScooter = "kick_scooter"
        case kimono, kiribati, kiss, kissing
        case kissingCat = "kissing_cat"
        case kissingClosedEyes = "kissing_closed_eyes"
        case kissingHeart = "kissing_heart"
        case kissingSmilingEyes = "kissing_smiling_eyes"
        case kiwiFruit = "kiwi_fruit"
        case knife, koala, koko, kosovo, kr, kuwait, kyrgyzstan, label, lantern, laos
        case largeBlueCircle = "large_blue_circle"
        case largeBlueDiamond = "large_blue_diamond"
        case largeOrangeDiamond = "large_orange_diamond"
        case lastQuarterMoon = "last_quarter_moon"
        case lastQuarterMoonWithFace = "last_quarter_moon_with_face"
        case latinCross = "latin_cross"
        case latvia, laughing, leaves, lebanon, ledger
        case leftLuggage = "left_luggage"
        case leftRightArrow = "left_right_arrow"
        case leftwardsArrowWithHook = "leftwards_arrow_with_hook"
        case lemon, leo, leopard, lesotho
        case levelSlider = "level_slider"
        case liberia, libra, libya, liechtenstein
        case lightRail = "light_rail"
        case link, lion, lips, lipstick, lithuania, lizard, lock
        case lockWithInkPen = "lock_with_ink_pen"
        case lollipop, loop
        case loudSound = "loud_sound"
        case loudspeaker
        case loveHotel = "love_hotel"
        case loveLetter = "love_letter"
        case lowBrightness = "low_brightness"
        case luxembourg
        case lyingFace = "lying_face"
        case m, macau, macedonia, madagascar, mag
        case magRight = "mag_right"
        case mahjong, mailbox
        case mailboxClosed = "mailbox_closed"
        case mailboxWithMail = "mailbox_with_mail"
        case mailboxWithNoMail = "mailbox_with_no_mail"
        case malawi, malaysia, maldives
        case maleDetective = "male_detective"
        case mali, malta, man
        case manArtist = "man_artist"
        case manAstronaut = "man_astronaut"
        case manCartwheeling = "man_cartwheeling"
        case manCook = "man_cook"
        case manDancing = "man_dancing"
        case manFacepalming = "man_facepalming"
        case manFactoryWorker = "man_factory_worker"
        case manFarmer = "man_farmer"
        case manFirefighter = "man_firefighter"
        case manHealthWorker = "man_health_worker"
        case manInTuxedo = "man_in_tuxedo"
        case manJudge = "man_judge"
        case manJuggling = "man_juggling"
        case manMechanic = "man_mechanic"
        case manOfficeWorker = "man_office_worker"
        case manPilot = "man_pilot"
        case manPlayingHandball = "man_playing_handball"
        case manPlayingWaterPolo = "man_playing_water_polo"
        case manScientist = "man_scientist"
        case manShrugging = "man_shrugging"
        case manSinger = "man_singer"
        case manStudent = "man_student"
        case manTeacher = "man_teacher"
        case manTechnologist = "man_technologist"
        case manWithGuaPiMao = "man_with_gua_pi_mao"
        case manWithTurban = "man_with_turban"
        case mandarin
        case mansShoe = "mans_shoe"
        case mantelpieceClock = "mantelpiece_clock"
        case mapleLeaf = "maple_leaf"
        case marshallIslands = "marshall_islands"
        case martialArtsUniform = "martial_arts_uniform"
        case martinique, mask, massage
        case massageMan = "massage_man"
        case massageWoman = "massage_woman"
        case mauritania, mauritius, mayotte
        case meatOnBone = "meat_on_bone"
        case medalMilitary = "medal_military"
        case medalSports = "medal_sports"
        case mega, melon, memo
        case menWrestling = "men_wrestling"
        case menorah, mens, metal, metro, mexico, micronesia, microphone, microscope
        case middleFinger = "middle_finger"
        case milkGlass = "milk_glass"
        case milkyWay = "milky_way"
        case minibus, minidisc
        case mobilePhoneOff = "mobile_phone_off"
        case moldova, monaco
        case moneyMouthFace = "money_mouth_face"
        case moneyWithWings = "money_with_wings"
        case moneybag, mongolia, monkey
        case monkeyFace = "monkey_face"
        case monorail, montenegro, montserrat, moon, morocco
        case mortarBoard = "mortar_board"
        case mosque
        case motorBoat = "motor_boat"
        case motorScooter = "motor_scooter"
        case motorcycle, motorway
        case mountFuji = "mount_fuji"
        case mountain
        case mountainBicyclist = "mountain_bicyclist"
        case mountainBikingMan = "mountain_biking_man"
        case mountainBikingWoman = "mountain_biking_woman"
        case mountainCableway = "mountain_cableway"
        case mountainRailway = "mountain_railway"
        case mountainSnow = "mountain_snow"
        case mouse, mouse2
        case movieCamera = "movie_camera"
        case moyai, mozambique
        case mrsClaus = "mrs_claus"
        case muscle, mushroom
        case musicalKeyboard = "musical_keyboard"
        case musicalNote = "musical_note"
        case musicalScore = "musical_score"
        case mute, myanmar
        case nailCare = "nail_care"
        case nameBadge = "name_badge"
        case namibia
        case nationalPark = "national_park"
        case nauru
        case nauseatedFace = "nauseated_face"
        case neckbeard, necktie
        case negativeSquaredCrossMark = "negative_squared_cross_mark"
        case nepal
        case nerdFace = "nerd_face"
        case netherlands
        case neutralFace = "neutral_face"
        case new
        case newCaledonia = "new_caledonia"
        case newMoon = "new_moon"
        case newMoonWithFace = "new_moon_with_face"
        case newZealand = "new_zealand"
        case newspaper
        case newspaperRoll = "newspaper_roll"
        case nextTrackButton = "next_track_button"
        case ng
        case ngMan = "ng_man"
        case ngWoman = "ng_woman"
        case nicaragua, niger, nigeria
        case nightWithStars = "night_with_stars"
        case nine, niue
        case noBell = "no_bell"
        case noBicycles = "no_bicycles"
        case noEntry = "no_entry"
        case noEntrySign = "no_entry_sign"
        case noGood = "no_good"
        case noGoodMan = "no_good_man"
        case noGoodWoman = "no_good_woman"
        case noMobilePhones = "no_mobile_phones"
        case noMouth = "no_mouth"
        case noPedestrians = "no_pedestrians"
        case noSmoking = "no_smoking"
        case nonPotableWater = "non-potable_water"
        case norfolkIsland = "norfolk_island"
        case northKorea = "north_korea"
        case northernMarianaIslands = "northern_mariana_islands"
        case norway, nose, notebook
        case notebookWithDecorativeCover = "notebook_with_decorative_cover"
        case notes
        case nutAndBolt = "nut_and_bolt"
        case o, o2, ocean, octocat, octopus, oden, office
        case oilDrum = "oil_drum"
        case ok
        case okHand = "ok_hand"
        case okMan = "ok_man"
        case okWoman = "ok_woman"
        case oldKey = "old_key"
        case olderMan = "older_man"
        case olderWoman = "older_woman"
        case om, oman, on
        case oncomingAutomobile = "oncoming_automobile"
        case oncomingBus = "oncoming_bus"
        case oncomingPoliceCar = "oncoming_police_car"
        case oncomingTaxi = "oncoming_taxi"
        case one
        case openBook = "open_book"
        case openFileFolder = "open_file_folder"
        case openHands = "open_hands"
        case openMouth = "open_mouth"
        case openUmbrella = "open_umbrella"
        case ophiuchus, orange
        case orangeBook = "orange_book"
        case orthodoxCross = "orthodox_cross"
        case outboxTray = "outbox_tray"
        case owl, ox, package
        case pageFacingUp = "page_facing_up"
        case pageWithCurl = "page_with_curl"
        case pager, paintbrush, pakistan, palau
        case palestinianTerritories = "palestinian_territories"
        case palmTree = "palm_tree"
        case panama, pancakes
        case pandaFace = "panda_face"
        case paperclip, paperclips
        case papuaNewGuinea = "papua_new_guinea"
        case paraguay
        case parasolOnGround = "parasol_on_ground"
        case parking
        case partAlternationMark = "part_alternation_mark"
        case partlySunny = "partly_sunny"
        case passengerShip = "passenger_ship"
        case passportControl = "passport_control"
        case pauseButton = "pause_button"
        case pawPrints = "paw_prints"
        case peaceSymbol = "peace_symbol"
        case peach, peanuts, pear, pen, pencil, pencil2, penguin, pensive
        case performingArts = "performing_arts"
        case persevere
        case personFencing = "person_fencing"
        case personFrowning = "person_frowning"
        case personWithBlondHair = "person_with_blond_hair"
        case personWithPoutingFace = "person_with_pouting_face"
        case peru, philippines, phone, pick, pig, pig2
        case pigNose = "pig_nose"
        case pill, pineapple
        case pingPong = "ping_pong"
        case pisces
        case pitcairnIslands = "pitcairn_islands"
        case pizza
        case placeOfWorship = "place_of_worship"
        case plateWithCutlery = "plate_with_cutlery"
        case playOrPauseButton = "play_or_pause_button"
        case pointDown = "point_down"
        case pointLeft = "point_left"
        case pointRight = "point_right"
        case pointUp = "point_up"
        case pointUp2 = "point_up_2"
        case poland
        case policeCar = "police_car"
        case policeman, policewoman, poodle, poop, popcorn, portugal
        case postOffice = "post_office"
        case postalHorn = "postal_horn"
        case postbox
        case potableWater = "potable_water"
        case potato, pouch
        case poultryLeg = "poultry_leg"
        case pound, pout
        case poutingCat = "pouting_cat"
        case poutingMan = "pouting_man"
        case poutingWoman = "pouting_woman"
        case pray
        case prayerBeads = "prayer_beads"
        case pregnantWoman = "pregnant_woman"
        case previousTrackButton = "previous_track_button"
        case prince, princess, printer
        case puertoRico = "puerto_rico"
        case punch
        case purpleHeart = "purple_heart"
        case purse, pushpin
        case putLitterInItsPlace = "put_litter_in_its_place"
        case qatar, question, rabbit, rabbit2, racehorse
        case racingCar = "racing_car"
        case radio
        case radioButton = "radio_button"
        case radioactive, rage, rage1, rage2, rage3, rage4
        case railwayCar = "railway_car"
        case railwayTrack = "railway_track"
        case rainbow
        case rainbowFlag = "rainbow_flag"
        case raisedBackOfHand = "raised_back_of_hand"
        case raisedHand = "raised_hand"
        case raisedHandWithFingersSplayed = "raised_hand_with_fingers_splayed"
        case raisedHands = "raised_hands"
        case raisingHand = "raising_hand"
        case raisingHandMan = "raising_hand_man"
        case raisingHandWoman = "raising_hand_woman"
        case ram, ramen, rat
        case recordButton = "record_button"
        case recycle
        case redCar = "red_car"
        case redCircle = "red_circle"
        case registered, relaxed, relieved
        case reminderRibbon = "reminder_ribbon"
        case emojisRepeat = "repeat"
        case repeatOne = "repeat_one"
        case rescueWorkerHelmet = "rescue_worker_helmet"
        case restroom, reunion
        case revolvingHearts = "revolving_hearts"
        case rewind, rhinoceros, ribbon, rice
        case riceBall = "rice_ball"
        case riceCracker = "rice_cracker"
        case riceScene = "rice_scene"
        case rightAngerBubble = "right_anger_bubble"
        case ring, robot, rocket, rofl
        case rollEyes = "roll_eyes"
        case rollerCoaster = "roller_coaster"
        case romania, rooster, rose, rosette
        case rotatingLight = "rotating_light"
        case roundPushpin = "round_pushpin"
        case rowboat
        case rowingMan = "rowing_man"
        case rowingWoman = "rowing_woman"
        case ru
        case rugbyFootball = "rugby_football"
        case runner, running
        case runningMan = "running_man"
        case runningShirtWithSash = "running_shirt_with_sash"
        case runningWoman = "running_woman"
        case rwanda, sa, sagittarius, sailboat, sake, samoa
        case sanMarino = "san_marino"
        case sandal, santa
        case saoTomePrincipe = "sao_tome_principe"
        case satellite, satisfied
        case saudiArabia = "saudi_arabia"
        case saxophone, school
        case schoolSatchel = "school_satchel"
        case scissors, scorpion, scorpius, scream
        case screamCat = "scream_cat"
        case scroll, seat, secret
        case seeNoEvil = "see_no_evil"
        case seedling, selfie, senegal, serbia, seven, seychelles
        case shallowPanOfFood = "shallow_pan_of_food"
        case shamrock, shark
        case shavedIce = "shaved_ice"
        case sheep, shell, shield
        case shintoShrine = "shinto_shrine"
        case ship, shipit, shirt, shit, shoe, shopping
        case shoppingCart = "shopping_cart"
        case shower, shrimp
        case sierraLeone = "sierra_leone"
        case signalStrength = "signal_strength"
        case singapore
        case sintMaarten = "sint_maarten"
        case six
        case sixPointedStar = "six_pointed_star"
        case ski, skier, skull
        case skullAndCrossbones = "skull_and_crossbones"
        case sleeping
        case sleepingBed = "sleeping_bed"
        case sleepy
        case slightlyFrowningFace = "slightly_frowning_face"
        case slightlySmilingFace = "slightly_smiling_face"
        case slotMachine = "slot_machine"
        case slovakia, slovenia
        case smallAirplane = "small_airplane"
        case smallBlueDiamond = "small_blue_diamond"
        case smallOrangeDiamond = "small_orange_diamond"
        case smallRedTriangle = "small_red_triangle"
        case smallRedTriangleDown = "small_red_triangle_down"
        case smile
        case smileCat = "smile_cat"
        case smiley
        case smileyCat = "smiley_cat"
        case smilingImp = "smiling_imp"
        case smirk
        case smirkCat = "smirk_cat"
        case smoking, snail, snake
        case sneezingFace = "sneezing_face"
        case snowboarder, snowflake, snowman
        case snowmanWithSnow = "snowman_with_snow"
        case sob, soccer
        case solomonIslands = "solomon_islands"
        case somalia, soon, sos, sound
        case southAfrica = "south_africa"
        case southGeorgiaSouthSandwichIslands = "south_georgia_south_sandwich_islands"
        case southSudan = "south_sudan"
        case spaceInvader = "space_invader"
        case spades, spaghetti, sparkle, sparkler, sparkles
        case sparklingHeart = "sparkling_heart"
        case speakNoEvil = "speak_no_evil"
        case speaker
        case speakingHead = "speaking_head"
        case speechBalloon = "speech_balloon"
        case speedboat, spider
        case spiderWeb = "spider_web"
        case spiralCalendar = "spiral_calendar"
        case spiralNotepad = "spiral_notepad"
        case spoon, squid, squirrel
        case sriLanka = "sri_lanka"
        case stBarthelemy = "st_barthelemy"
        case stHelena = "st_helena"
        case stKittsNevis = "st_kitts_nevis"
        case stLucia = "st_lucia"
        case stPierreMiquelon = "st_pierre_miquelon"
        case stVincentGrenadines = "st_vincent_grenadines"
        case stadium, star, star2
        case starAndCrescent = "star_and_crescent"
        case starOfDavid = "star_of_david"
        case stars, station
        case statueOfLiberty = "statue_of_liberty"
        case steamLocomotive = "steam_locomotive"
        case stew
        case stopButton = "stop_button"
        case stopSign = "stop_sign"
        case stopwatch
        case straightRuler = "straight_ruler"
        case strawberry
        case stuckOutTongue = "stuck_out_tongue"
        case stuckOutTongueClosedEyes = "stuck_out_tongue_closed_eyes"
        case stuckOutTongueWinkingEye = "stuck_out_tongue_winking_eye"
        case studioMicrophone = "studio_microphone"
        case stuffedFlatbread = "stuffed_flatbread"
        case sudan
        case sunBehindLargeCloud = "sun_behind_large_cloud"
        case sunBehindRainCloud = "sun_behind_rain_cloud"
        case sunBehindSmallCloud = "sun_behind_small_cloud"
        case sunWithFace = "sun_with_face"
        case sunflower, sunglasses, sunny, sunrise
        case sunriseOverMountains = "sunrise_over_mountains"
        case surfer
        case surfingMan = "surfing_man"
        case surfingWoman = "surfing_woman"
        case suriname, sushi, suspect
        case suspensionRailway = "suspension_railway"
        case swaziland, sweat
        case sweatDrops = "sweat_drops"
        case sweatSmile = "sweat_smile"
        case sweden
        case sweetPotato = "sweet_potato"
        case swimmer
        case swimmingMan = "swimming_man"
        case swimmingWoman = "swimming_woman"
        case switzerland, symbols, synagogue, syria, syringe, taco, tada, taiwan, tajikistan
        case tanabataTree = "tanabata_tree"
        case tangerine, tanzania, taurus, taxi, tea, telephone
        case telephoneReceiver = "telephone_receiver"
        case telescope, tennis, tent, thailand, thermometer, thinking
        case thoughtBalloon = "thought_balloon"
        case three, thumbsdown, thumbsup, ticket, tickets, tiger, tiger2
        case timerClock = "timer_clock"
        case timorLeste = "timor_leste"
        case tippingHandMan = "tipping_hand_man"
        case tippingHandWoman = "tipping_hand_woman"
        case tiredFace = "tired_face"
        case tm, togo, toilet, tokelau
        case tokyoTower = "tokyo_tower"
        case tomato, tonga, tongue, top, tophat, tornado, tr, trackball, tractor
        case trafficLight = "traffic_light"
        case train, train2, tram
        case triangularFlagOnPost = "triangular_flag_on_post"
        case triangularRuler = "triangular_ruler"
        case trident
        case trinidadTobago = "trinidad_tobago"
        case triumph, trolleybus, trollface, trophy
        case tropicalDrink = "tropical_drink"
        case tropicalFish = "tropical_fish"
        case truck, trumpet, tshirt, tulip
        case tumblerGlass = "tumbler_glass"
        case tunisia, turkey, turkmenistan
        case turksCaicosIslands = "turks_caicos_islands"
        case turtle, tuvalu, tv
        case twistedRightwardsArrows = "twisted_rightwards_arrows"
        case two
        case twoHearts = "two_hearts"
        case twoMenHoldingHands = "two_men_holding_hands"
        case twoWomenHoldingHands = "two_women_holding_hands"
        case u5272, u5408
        case u55B6 = "u55b6"
        case u6307, u6708, u6709
        case u6E80 = "u6e80"
        case u7121, u7533, u7981
        case u7A7A = "u7a7a"
        case uganda, uk, ukraine, umbrella, unamused, underage, unicorn
        case unitedArabEmirates = "united_arab_emirates"
        case unlock, up
        case upsideDownFace = "upside_down_face"
        case uruguay, us
        case usVirginIslands = "us_virgin_islands"
        case uzbekistan, v, vanuatu
        case vaticanCity = "vatican_city"
        case venezuela
        case verticalTrafficLight = "vertical_traffic_light"
        case vhs
        case vibrationMode = "vibration_mode"
        case videoCamera = "video_camera"
        case videoGame = "video_game"
        case vietnam, violin, virgo, volcano, volleyball, vs
        case vulcanSalute = "vulcan_salute"
        case walking
        case walkingMan = "walking_man"
        case walkingWoman = "walking_woman"
        case wallisFutuna = "wallis_futuna"
        case waningCrescentMoon = "waning_crescent_moon"
        case waningGibbousMoon = "waning_gibbous_moon"
        case warning, wastebasket, watch
        case waterBuffalo = "water_buffalo"
        case watermelon, wave
        case wavyDash = "wavy_dash"
        case waxingCrescentMoon = "waxing_crescent_moon"
        case waxingGibbousMoon = "waxing_gibbous_moon"
        case wc, weary, wedding
        case weightLiftingMan = "weight_lifting_man"
        case weightLiftingWoman = "weight_lifting_woman"
        case westernSahara = "western_sahara"
        case whale, whale2
        case wheelOfDharma = "wheel_of_dharma"
        case wheelchair
        case whiteCheckMark = "white_check_mark"
        case whiteCircle = "white_circle"
        case whiteFlag = "white_flag"
        case whiteFlower = "white_flower"
        case whiteLargeSquare = "white_large_square"
        case whiteMediumSmallSquare = "white_medium_small_square"
        case whiteMediumSquare = "white_medium_square"
        case whiteSmallSquare = "white_small_square"
        case whiteSquareButton = "white_square_button"
        case wiltedFlower = "wilted_flower"
        case windChime = "wind_chime"
        case windFace = "wind_face"
        case wineGlass = "wine_glass"
        case wink, wolf, woman
        case womanArtist = "woman_artist"
        case womanAstronaut = "woman_astronaut"
        case womanCartwheeling = "woman_cartwheeling"
        case womanCook = "woman_cook"
        case womanFacepalming = "woman_facepalming"
        case womanFactoryWorker = "woman_factory_worker"
        case womanFarmer = "woman_farmer"
        case womanFirefighter = "woman_firefighter"
        case womanHealthWorker = "woman_health_worker"
        case womanJudge = "woman_judge"
        case womanJuggling = "woman_juggling"
        case womanMechanic = "woman_mechanic"
        case womanOfficeWorker = "woman_office_worker"
        case womanPilot = "woman_pilot"
        case womanPlayingHandball = "woman_playing_handball"
        case womanPlayingWaterPolo = "woman_playing_water_polo"
        case womanScientist = "woman_scientist"
        case womanShrugging = "woman_shrugging"
        case womanSinger = "woman_singer"
        case womanStudent = "woman_student"
        case womanTeacher = "woman_teacher"
        case womanTechnologist = "woman_technologist"
        case womanWithTurban = "woman_with_turban"
        case womansClothes = "womans_clothes"
        case womansHat = "womans_hat"
        case womenWrestling = "women_wrestling"
        case womens
        case worldMap = "world_map"
        case worried, wrench
        case writingHand = "writing_hand"
        case x
        case yellowHeart = "yellow_heart"
        case yemen, yen
        case yinYang = "yin_yang"
        case yum, zambia, zap, zero, zimbabwe
        case zipperMouthFace = "zipper_mouth_face"
        case zzz
    }
}

struct EventElement: Codable {
    let id, type: String
    let actor: Actor
    let repo: Repo
    let payload: Payload
    let eventsPublic: Bool
    let createdAt: String
    let org: Actor?

    enum CodingKeys: String, CodingKey {
        case id, type, actor, repo, payload
        case eventsPublic = "public"
        case createdAt = "created_at"
        case org
    }
}

struct Actor: Codable {
    let id: Int
    let login: String
    let displayLogin: String?
    let gravatarID: GravatarID
    let url, avatarURL: String

    enum CodingKeys: String, CodingKey {
        case id, login
        case displayLogin = "display_login"
        case gravatarID = "gravatar_id"
        case url
        case avatarURL = "avatar_url"
    }
}

enum GravatarID: String, Codable {
    case empty = ""
}

struct Payload: Codable {
    let pushID, size, distinctSize: Int?
    let ref, head, before: String?
    let commits: [Commit]?
    let forkee: Forkee?
    let action: String?
    let issue: Issue?
    let comment: Comment?
    let refType, masterBranch: String?
    let description: String?
    let pusherType: String?
    let release: Release?
    let number: Int?
    let pullRequest: PullRequest?
    let pages: [Page]?

    enum CodingKeys: String, CodingKey {
        case pushID = "push_id"
        case size
        case distinctSize = "distinct_size"
        case ref, head, before, commits, forkee, action, issue, comment
        case refType = "ref_type"
        case masterBranch = "master_branch"
        case description
        case pusherType = "pusher_type"
        case release, number
        case pullRequest = "pull_request"
        case pages
    }
}

struct Comment: Codable {
    let url, htmlURL, issueURL: String
    let id: Int
    let user: User
    let createdAt, updatedAt, authorAssociation, body: String

    enum CodingKeys: String, CodingKey {
        case url
        case htmlURL = "html_url"
        case issueURL = "issue_url"
        case id, user
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case authorAssociation = "author_association"
        case body
    }
}

struct User: Codable {
    let login: String
    let id: Int
    let avatarURL: String
    let gravatarID: GravatarID
    let url, htmlURL, followersURL, followingURL: String
    let gistsURL, starredURL, subscriptionsURL, organizationsURL: String
    let reposURL, eventsURL, receivedEventsURL: String
    let type: UserType
    let siteAdmin: Bool

    enum CodingKeys: String, CodingKey {
        case login, id
        case avatarURL = "avatar_url"
        case gravatarID = "gravatar_id"
        case url
        case htmlURL = "html_url"
        case followersURL = "followers_url"
        case followingURL = "following_url"
        case gistsURL = "gists_url"
        case starredURL = "starred_url"
        case subscriptionsURL = "subscriptions_url"
        case organizationsURL = "organizations_url"
        case reposURL = "repos_url"
        case eventsURL = "events_url"
        case receivedEventsURL = "received_events_url"
        case type
        case siteAdmin = "site_admin"
    }
}

enum UserType: String, Codable {
    case organization = "Organization"
    case user = "User"
}

struct Commit: Codable {
    let sha: String
    let author: Author
    let message: String
    let distinct: Bool
    let url: String
}

struct Author: Codable {
    let email, name: String
}

struct Forkee: Codable {
    let id: Int
    let name, fullName: String
    let owner: User
    let forkeePrivate: Bool
    let htmlURL: String
    let description: String?
    let fork: Bool
    let url, forksURL, keysURL, collaboratorsURL: String
    let teamsURL, hooksURL, issueEventsURL, eventsURL: String
    let assigneesURL, branchesURL, tagsURL, blobsURL: String
    let gitTagsURL, gitRefsURL, treesURL, statusesURL: String
    let languagesURL, stargazersURL, contributorsURL, subscribersURL: String
    let subscriptionURL, commitsURL, gitCommitsURL, commentsURL: String
    let issueCommentURL, contentsURL, compareURL, mergesURL: String
    let archiveURL, downloadsURL, issuesURL, pullsURL: String
    let milestonesURL, notificationsURL, labelsURL, releasesURL: String
    let deploymentsURL, createdAt, updatedAt, pushedAt: String
    let gitURL, sshURL, cloneURL, svnURL: String
    let homepage: String?
    let size, stargazersCount, watchersCount: Int
    let language: String?
    let hasIssues, hasProjects, hasDownloads, hasWiki: Bool
    let hasPages: Bool
    let forksCount: Int
    let mirrorURL: JSONNull?
    let archived: Bool
    let openIssuesCount: Int
    let license: License?
    let forks, openIssues, watchers: Int
    let defaultBranch: String
    let forkeePublic: Bool?

    enum CodingKeys: String, CodingKey {
        case id, name
        case fullName = "full_name"
        case owner
        case forkeePrivate = "private"
        case htmlURL = "html_url"
        case description, fork, url
        case forksURL = "forks_url"
        case keysURL = "keys_url"
        case collaboratorsURL = "collaborators_url"
        case teamsURL = "teams_url"
        case hooksURL = "hooks_url"
        case issueEventsURL = "issue_events_url"
        case eventsURL = "events_url"
        case assigneesURL = "assignees_url"
        case branchesURL = "branches_url"
        case tagsURL = "tags_url"
        case blobsURL = "blobs_url"
        case gitTagsURL = "git_tags_url"
        case gitRefsURL = "git_refs_url"
        case treesURL = "trees_url"
        case statusesURL = "statuses_url"
        case languagesURL = "languages_url"
        case stargazersURL = "stargazers_url"
        case contributorsURL = "contributors_url"
        case subscribersURL = "subscribers_url"
        case subscriptionURL = "subscription_url"
        case commitsURL = "commits_url"
        case gitCommitsURL = "git_commits_url"
        case commentsURL = "comments_url"
        case issueCommentURL = "issue_comment_url"
        case contentsURL = "contents_url"
        case compareURL = "compare_url"
        case mergesURL = "merges_url"
        case archiveURL = "archive_url"
        case downloadsURL = "downloads_url"
        case issuesURL = "issues_url"
        case pullsURL = "pulls_url"
        case milestonesURL = "milestones_url"
        case notificationsURL = "notifications_url"
        case labelsURL = "labels_url"
        case releasesURL = "releases_url"
        case deploymentsURL = "deployments_url"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case pushedAt = "pushed_at"
        case gitURL = "git_url"
        case sshURL = "ssh_url"
        case cloneURL = "clone_url"
        case svnURL = "svn_url"
        case homepage, size
        case stargazersCount = "stargazers_count"
        case watchersCount = "watchers_count"
        case language
        case hasIssues = "has_issues"
        case hasProjects = "has_projects"
        case hasDownloads = "has_downloads"
        case hasWiki = "has_wiki"
        case hasPages = "has_pages"
        case forksCount = "forks_count"
        case mirrorURL = "mirror_url"
        case archived
        case openIssuesCount = "open_issues_count"
        case license, forks
        case openIssues = "open_issues"
        case watchers
        case defaultBranch = "default_branch"
        case forkeePublic = "public"
    }
}

struct License: Codable {
    let key, name: String
    let spdxID, url: JSONNull?

    enum CodingKeys: String, CodingKey {
        case key, name
        case spdxID = "spdx_id"
        case url
    }
}

struct Issue: Codable {
    let url, repositoryURL, labelsURL, commentsURL: String
    let eventsURL, htmlURL: String
    let id, number: Int
    let title: String
    let user: User
    let labels: [Label]
    let state: String
    let locked: Bool
    let assignee: User?
    let assignees: [User]
    let milestone: Milestone?
    let comments: Int
    let createdAt, updatedAt: String
    let closedAt: String?
    let authorAssociation, body: String

    enum CodingKeys: String, CodingKey {
        case url
        case repositoryURL = "repository_url"
        case labelsURL = "labels_url"
        case commentsURL = "comments_url"
        case eventsURL = "events_url"
        case htmlURL = "html_url"
        case id, number, title, user, labels, state, locked, assignee, assignees, milestone, comments
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case closedAt = "closed_at"
        case authorAssociation = "author_association"
        case body
    }
}

struct Label: Codable {
    let id: Int
    let url, name, color: String
    let labelDefault: Bool

    enum CodingKeys: String, CodingKey {
        case id, url, name, color
        case labelDefault = "default"
    }
}

struct Milestone: Codable {
    let url, htmlURL, labelsURL: String
    let id, number: Int
    let title, description: String
    let creator: User
    let openIssues, closedIssues: Int
    let state, createdAt, updatedAt, dueOn: String
    let closedAt: JSONNull?

    enum CodingKeys: String, CodingKey {
        case url
        case htmlURL = "html_url"
        case labelsURL = "labels_url"
        case id, number, title, description, creator
        case openIssues = "open_issues"
        case closedIssues = "closed_issues"
        case state
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case dueOn = "due_on"
        case closedAt = "closed_at"
    }
}

struct Page: Codable {
    let pageName, title: String
    let summary: JSONNull?
    let action, sha, htmlURL: String

    enum CodingKeys: String, CodingKey {
        case pageName = "page_name"
        case title, summary, action, sha
        case htmlURL = "html_url"
    }
}

struct PullRequest: Codable {
    let url: String
    let id: Int
    let htmlURL, diffURL, patchURL, issueURL: String
    let number: Int
    let state: String
    let locked: Bool
    let title: String
    let user: User
    let body, createdAt, updatedAt, closedAt: String
    let mergedAt, mergeCommitSHA: String
    let assignee: JSONNull?
    let assignees, requestedReviewers, requestedTeams, labels: [JSONAny]
    let milestone: JSONNull?
    let commitsURL, reviewCommentsURL, reviewCommentURL, commentsURL: String
    let statusesURL: String
    let head, base: Base
    let links: Links
    let authorAssociation: String
    let merged: Bool
    let mergeable, rebaseable: JSONNull?
    let mergeableState: String
    let mergedBy: User
    let comments, reviewComments: Int
    let maintainerCanModify: Bool
    let commits, additions, deletions, changedFiles: Int

    enum CodingKeys: String, CodingKey {
        case url, id
        case htmlURL = "html_url"
        case diffURL = "diff_url"
        case patchURL = "patch_url"
        case issueURL = "issue_url"
        case number, state, locked, title, user, body
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case closedAt = "closed_at"
        case mergedAt = "merged_at"
        case mergeCommitSHA = "merge_commit_sha"
        case assignee, assignees
        case requestedReviewers = "requested_reviewers"
        case requestedTeams = "requested_teams"
        case labels, milestone
        case commitsURL = "commits_url"
        case reviewCommentsURL = "review_comments_url"
        case reviewCommentURL = "review_comment_url"
        case commentsURL = "comments_url"
        case statusesURL = "statuses_url"
        case head, base
        case links = "_links"
        case authorAssociation = "author_association"
        case merged, mergeable, rebaseable
        case mergeableState = "mergeable_state"
        case mergedBy = "merged_by"
        case comments
        case reviewComments = "review_comments"
        case maintainerCanModify = "maintainer_can_modify"
        case commits, additions, deletions
        case changedFiles = "changed_files"
    }
}

struct Base: Codable {
    let label, ref, sha: String
    let user: User
    let repo: Forkee
}

struct Links: Codable {
    let linksSelf, html, issue, comments: Comments
    let reviewComments, reviewComment, commits, statuses: Comments

    enum CodingKeys: String, CodingKey {
        case linksSelf = "self"
        case html, issue, comments
        case reviewComments = "review_comments"
        case reviewComment = "review_comment"
        case commits, statuses
    }
}

struct Comments: Codable {
    let href: String
}

struct Release: Codable {
    let url, assetsURL, uploadURL, htmlURL: String
    let id: Int
    let tagName, targetCommitish, name: String
    let draft: Bool
    let author: User
    let prerelease: Bool
    let createdAt, publishedAt: String
    let assets: [JSONAny]
    let tarballURL, zipballURL, body: String

    enum CodingKeys: String, CodingKey {
        case url
        case assetsURL = "assets_url"
        case uploadURL = "upload_url"
        case htmlURL = "html_url"
        case id
        case tagName = "tag_name"
        case targetCommitish = "target_commitish"
        case name, draft, author, prerelease
        case createdAt = "created_at"
        case publishedAt = "published_at"
        case assets
        case tarballURL = "tarball_url"
        case zipballURL = "zipball_url"
        case body
    }
}

struct Repo: Codable {
    let id: Int
    let name, url: String
}

struct GistElement: Codable {
    let url, forksURL, commitsURL, id: String
    let gitPullURL, gitPushURL, htmlURL: String
    let files: [String: File]
    let gistsPublic: Bool
    let createdAt, updatedAt: String
    let description: String?
    let comments: Int
    let user: JSONNull?
    let commentsURL: String
    let owner: User?
    let truncated: Bool

    enum CodingKeys: String, CodingKey {
        case url
        case forksURL = "forks_url"
        case commitsURL = "commits_url"
        case id
        case gitPullURL = "git_pull_url"
        case gitPushURL = "git_push_url"
        case htmlURL = "html_url"
        case files
        case gistsPublic = "public"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case description, comments, user
        case commentsURL = "comments_url"
        case owner, truncated
    }
}

struct File: Codable {
    let filename: String
    let type: FileType
    let language: Language?
    let rawURL: String
    let size: Int

    enum CodingKeys: String, CodingKey {
        case filename, type, language
        case rawURL = "raw_url"
        case size
    }
}

enum Language: String, Codable {
    case apex = "Apex"
    case css = "CSS"
    case javaScript = "JavaScript"
    case markdown = "Markdown"
    case text = "Text"
}

enum FileType: String, Codable {
    case applicationJavascript = "application/javascript"
    case textCSS = "text/css"
    case textPlain = "text/plain"
}

struct Meta: Codable {
    let verifiablePasswordAuthentication: Bool
    let githubServicesSHA: String
    let hooks, git, pages, importer: [String]

    enum CodingKeys: String, CodingKey {
        case verifiablePasswordAuthentication = "verifiable_password_authentication"
        case githubServicesSHA = "github_services_sha"
        case hooks, git, pages, importer
    }
}

// MARK: Convenience initializers

extension APIData {
    init(data: Data) throws {
        self = try JSONDecoder().decode(APIData.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension Emojis {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Emojis.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension EventElement {
    init(data: Data) throws {
        self = try JSONDecoder().decode(EventElement.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension Actor {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Actor.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension Payload {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Payload.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension Comment {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Comment.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension User {
    init(data: Data) throws {
        self = try JSONDecoder().decode(User.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension Commit {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Commit.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension Author {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Author.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension Forkee {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Forkee.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension License {
    init(data: Data) throws {
        self = try JSONDecoder().decode(License.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension Issue {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Issue.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension Label {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Label.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension Milestone {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Milestone.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension Page {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Page.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension PullRequest {
    init(data: Data) throws {
        self = try JSONDecoder().decode(PullRequest.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension Base {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Base.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension Links {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Links.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension Comments {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Comments.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension Release {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Release.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension Repo {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Repo.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension GistElement {
    init(data: Data) throws {
        self = try JSONDecoder().decode(GistElement.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension File {
    init(data: Data) throws {
        self = try JSONDecoder().decode(File.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension Meta {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Meta.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension Array where Element == Events.Element {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Events.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

extension Array where Element == Gists.Element {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Gists.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: Encode/decode helpers

class JSONNull: Codable {
    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

class JSONCodingKey: CodingKey {
    let key: String

    required init?(intValue: Int) {
        return nil
    }

    required init?(stringValue: String) {
        key = stringValue
    }

    var intValue: Int? {
        return nil
    }

    var stringValue: String {
        return key
    }
}

class JSONAny: Codable {
    public let value: Any

    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }

    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }

    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }

    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }

    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }

    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            self.value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny.decode(from: container)
        }
    }

    public func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: self.value)
        }
    }
}
