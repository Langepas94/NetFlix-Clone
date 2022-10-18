//
//  Tv.swift
//  NetFlix Clone
//
//  Created by Артём Тюрморезов on 18.10.2022.
//

import Foundation

struct TrendingTvResponse: Codable {
    let results: [Tv]
}

struct Tv: Codable {
    let id: Int
    let media_type: String?
    let original_name: String?
    let original_title: String?
    let poster_path: String?
    let overview: String?
    let vote_count: Int
    let release_date: String?
    let vote_average: Double?
}











//adult = 0;
//"backdrop_path" = "/etj8E2o0Bud0HkONVQPjyCkIvpv.jpg";
//"first_air_date" = "2022-08-21";
//"genre_ids" =             (
//    10765,
//    18,
//    10759
//);
//id = 94997;
//"media_type" = tv;
//name = "House of the Dragon";
//"origin_country" =             (
//    US
//);
//"original_language" = en;
//"original_name" = "House of the Dragon";
//overview = "The Targaryen dynasty is at the absolute apex of its power, with more than 15 dragons under their yoke. Most empires crumble from such heights. In the case of the Targaryens, their slow fall begins when King Viserys breaks with a century of tradition by naming his daughter Rhaenyra heir to the Iron Throne. But when Viserys later fathers a son, the court is shocked when Rhaenyra retains her status as his heir, and seeds of division sow friction across the realm.";
//popularity = "6684.611";
//"poster_path" = "/z2yahl2uefxDCl0nogcRBstwruJ.jpg";
//"vote_average" = "8.538";
//"vote_count" = 1823;
//},
//    {
//adult = 0;
//"backdrop_path" = "/1rO4xoCo4Z5WubK0OwdVll3DPYo.jpg";
//"first_air_date" = "2022-09-01";
//"genre_ids" =             (
//    10765,
//    10759,
//    18
//);
//id = 84773;
//"media_type" = tv;
//name = "The Lord of the Rings: The Rings of Power";
//"origin_country" =             (
//    US
//);
//"original_language" = en;
//"original_name" = "The Lord of the Rings: The Rings of Power";
//overview = "Beginning in a time of relative peace, we follow an ensemble cast of characters as they confront the re-emergence of evil to Middle-earth. From the darkest depths of the Misty Mountains, to the majestic forests of Lindon, to the breathtaking island kingdom of N\U00famenor, to the furthest reaches of the map, these kingdoms and characters will carve out legacies that live on long after they are gone.";
//popularity = "4787.462";
//"poster_path" = "/mYLOqiStMxDK3fYZFirgrMt8z5d.jpg";
//"vote_average" = "7.677";
//"vote_count" = 1181;
//},
//    {
//adult = 0;
//"backdrop_path" = "/qtfMr08KQsWXnCHY0a96N8NpQ2l.jpg";
//"first_air_date" = "2004-10-05";
//"genre_ids" =             (
//    10759,
//    16,
//    10765
//);
//id = 30984;
//"media_type" = tv;
//name = Bleach;
//"origin_country" =             (
//    JP
//);
//"original_language" = ja;
//"original_name" = "\U30d6\U30ea\U30fc\U30c1";
//overview = "For as long as he can remember, Ichigo Kurosaki has been able to see ghosts. But when he meets Rukia, a Soul Reaper who battles evil spirits known as Hollows, he finds his life is changed forever. Now, with a newfound wealth of spiritual energy, Ichigo discovers his true calling: to protect the living and the dead from evil.";
//popularity = "422.115";
//"poster_path" = "/2EewmxXe72ogD0EaWM8gqa0ccIw.jpg";
//"vote_average" = "8.353999999999999";
//"vote_count" = 1286;
