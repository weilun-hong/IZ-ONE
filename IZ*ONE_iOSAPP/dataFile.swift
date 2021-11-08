//
//  dataFile.swift
//  IZ*ONE_iOSAPP
//
//  Created by 洪偉倫 on 2021/11/2.
//

import SwiftUI

struct theme {
    var cover: String
    var image : String
    var title : String
    var intro: String
    var url : String
}

let themes : [theme] = [
    theme(cover: "pepsi", image: "pepsiz", title: "PEPSI",intro: "韶宥、IZ*ONE 透過「PEPSI 2021 K-POP CAMPAIGN」合作的全新數位單曲《ZERO:ATTITUDE》MV 公開。「PEPSI 2021 K-POP CAMPAIGN」是百事可樂與 Starship Entertainment 合作，邀請不同風格的 K-POP 藝人們配合不同的概念發表新音樂的企劃，之前曾邀請 VIXX Ravi、GFRIEND 銀河、邕聖祐、VIXX 弘彬、MONSTA X 亨源、Rain、韶宥、ZICO、姜丹尼爾、CIX 裴珍映、WEi 金曜漢參與，歷代級的合作每次都能掀起話題。今年再度邀請韶宥參與，與擁有清新魅力的女團 IZ*ONE 合作，還有處於上升勢的饒舌歌手 pH-1 參與配唱，全新的組合令粉絲們都感到非常期待，新歌《ZERO:ATTITUDE》是由打造出多首熱門歌曲的製作人星星們的戰爭所創作的 Fusion groove 風格歌曲，以電子舞曲節奏為基礎，加上嘻哈、Punk 的效果，將「ZERO BLACK」的清涼感以視角、聽覺表達出來，特別歌詞還包含著「直率、光明正在地以專屬自己的色彩生活」的希望訊息。", url: "https://www.pepsi.com"),
    theme(cover: "overhit", image: "overiz", title: "OVERHIT",intro: "日前，NEXON公開了旗下手遊《OVERHIT》和韓國女子組合IZONE的合作推廣電視廣告。此次的廣告視頻主要想表現，在手遊《OVERHIT》上也能見到女子組合IZONE的12名成員。另外，繼張元英和安宥真角色，遊戲中新推出姜惠元角色。傳說等級的姜惠元角色，作爲使用雙槍的英雄，具備死亡時復活的能力。",url: "https://zh.wikipedia.org/wiki/IZ*ONE"),
    
    theme(cover: "xfever", image: "basket",title: "FEVER BASKET" ,intro: "星際異攻隊為一支太空英雄團體，由先前皆沒有相關的角色所組成，主要角色有星爵、浣熊火箭、格魯特、葛摩拉、德克斯和亞當術士所組成，負責對抗太空中的惡勢力，當面臨太強大的敵人時，也會和地球的英雄團體合作。",  url: "https://www.youtube.com/watch?v=Qj_5P5seQkM"),
    theme(cover: "logo", image: "izone", title: "GROUP INTRODUCTION", intro: "IZ*ONE（韓語：아이즈원 A I Jeu Won；日語：アイズワン），是經由韓日合作選秀節目《PRODUCE 48》成立的期間限定女子音樂組合，於2018年出道。成員均有各自所屬的經紀公司，組合整體所屬的經紀公司為Off The Record娛樂，在日本活動時的運營方則是Vernalossom。成員包括權恩妃、宮脇咲良、姜惠元、崔叡娜、李彩演、金采源、金玟周、矢吹奈子、本田仁美、曹柔理、安兪真、張員瑛。活動期為2年6個月，於2021年4月29日解散。團名「IZ*ONE」中的「IZ」代表12名成員，「ONE」代表一體，意思是以全世界粉絲為中心運轉的12色星球，12名少女合為一體的瞬間。團體口號是「Eyes On Me! 成為一體的瞬間，所有人都注目！大家好，我們是IZ*ONE！」。官方粉絲名為「WIZ*ONE」（韓語：위즈원 Wi Jeu Won），WIZ有奇才、魔法師（Wizard）的含義，粉絲是守護IZ*ONE魔法般未來的魔法師，同時包含著IZ*ONE和WIZ*ONE是一體的寓意",url: "https://zh.wikipedia.org/wiki/IZ*ONE")]

struct member{
    var photo : String
    var ChineseName: String
    var KoreanName: String
    var intro : String
}

let members : [member] = [
    member(photo: "MinJu", ChineseName: "金玟周", KoreanName: "김민주", intro: "金玟周（韓語：김민주 Kim Min Ju；日語：キム・ミンジュ；2001年2月5日－），韓國女歌手，所屬經紀公司為「Urban Works」，曾為限定組合「IZ*ONE」的成員。"),
    member(photo: "EunBi", ChineseName: "權恩妃", KoreanName: "권은비",intro: "權恩妃，韓語：권은비 Kwon Eun-Bi；日語：クォン・ウンビ；1995年9月27日，曾為限定團體IZ*ONE隊長，所屬經紀公司為Woollim娛樂。現為女solo。2014年7月18日，以Kiroy Company女團Ye-A（예아）出道，藝名為Kazoo（카쥬），是該隊主領舞和副唱，2015年退出，並加入Woollim娛樂當練習生。2018年，6月15日，參加韓國Mnet選秀節目《PRODUCE 48》，最終票選第七名，10月29日，以限定組合IZ*ONE出道， 11月1日，正式公開為IZ*ONE隊長。2021年8月24日，權恩妃推出個人首張EP《OPEN》。"),
    member(photo: "Sakura", ChineseName: "宮脇咲良", KoreanName: "미야와키 사쿠라", intro: "宮脇咲良（日語：宮脇 咲良／みやわき さくら Miyawaki Sakura，韓語：미야와키 사쿠라，1998年3月19日－）是日本女藝人、YouTuber，為女子偶像團體HKT48 Team KIV前成員，曾為Team KIV副隊長，鹿兒島縣鹿兒島市出身，前所屬經紀公司為Vernalossom。曾為兒童演員，2011年以HKT48一期生身分出道。2014年4月24日至2018年5月期間，兼任AKB48 Team A成員。2018年10月29日至2021年4月29日期間，專任IZ*ONE成員。2021年6月19日自HKT48畢業，在日本和韓國兩地展開演藝活動。"),
    member(photo: "HyeWon", ChineseName: "姜惠元", KoreanName: "강혜원", intro: "姜惠元，韓語：강혜원 Kang Hye Won；日語：カン・ヘウォン；1999年7月5日－)，韓國女歌手，所屬經紀公司為「8D娛樂」，曾為限定組合「IZ*ONE」成員之一。"),
    member(photo: "na", ChineseName: "崔叡娜", KoreanName: "최예나", intro:"崔叡娜（韓語：최예나、日語：チェ・イェナ；1999年9月29日－），韓國女藝人、歌手、主持人，早期曾被音譯為崔藝娜，所屬經紀公司為「樂華娛樂」。曾為限定女子團體「IZ*ONE」成員。"),
    member(photo: "ChaeYeon", ChineseName: "李彩演", KoreanName: "이채연", intro: "李彩演（韓語：이채연 Lee Chae-Yeon；日語：イ・チェヨン；2000年1月11日－），韓國女歌手，所屬經紀公司為「WM娛樂」，曾為限定組合「IZ*ONE」成員之一，在隊內擔任主領舞。妹妹為2019年2月以團體「ITZY」出道的李彩領。"),
    member(photo: "ChaeWon", ChineseName: "金采源", KoreanName: "김채원", intro:"金采源（韓語：김채원 Kim Chae-Won；日語：キム・チェウォン；2000年8月1日)，韓國女歌手，曾為限定組合「IZ*ONE」成員之一和「Woollim娛樂」旗下藝人。"),
    member(photo: "Nako", ChineseName: "矢吹奈子", KoreanName: "야부키 나코", intro: "矢吹奈子（日語：矢吹 奈子／やぶき なこ Yabuki Nako ， 韓語：야부키 나코，2001年6月18日－）是日本偶像藝人，為女子偶像團體HKT48 Team H成員，東京都出身， 所屬經紀公司為Vernalossom。曾為兒童演員，2013年以HKT48三期生身分出道，2015年3月26日至2018年5月期間，兼任AKB48 Team B成員。2018年10月29日至2021年4月29日期間，專任IZ*ONE成員。"),
    member(photo: "Hitomi", ChineseName: "本田仁美", KoreanName: "혼다", intro: "本田仁美（日語：本田 仁美／ほんだ ひとみ Honda Hitomi ，韓語：혼다 히토미，2001年10月6日－）是日本偶像藝人，為女子偶像團體AKB48 Team 8成員（栃木縣代表），栃木縣出身，所屬經紀公司為Vernalossom。2018年10月29日至2021年4月28日期間，專任IZ*ONE成員。"),
    member(photo: "YuRi", ChineseName: "曺柔理", KoreanName: "조유리", intro: "曺柔理（韓語：조유리／曺柔理 Jo Yu-Ri；日語：チョ・ユリ；2001年10月22日－)，韓國女歌手，所屬經紀公司為「WAKE ONE娛樂」。曾為限定組合「IZ*ONE」成員之一，並在隊內擔任主唱。現為女solo。"),
    member(photo: "YuJin", ChineseName: "安兪真", KoreanName: "안유진", intro: "安兪真（韓語：안유진 An Yu-Jin，日語：アン・ユジン，2003年9月1日－），韓國女藝人、歌手、舞者，所屬經紀公司為「STARSHIP娛樂」，曾為限定組合「IZ*ONE」成員之一，現為女子組合「IVE」的成員兼隊長。"),
    member(photo: "WonYoung", ChineseName: "張員瑛", KoreanName: "장원영", intro: "張員瑛（韓語：장원영Jang Won Young，日語：チャン・ウォニョン；2004年8月31日－），韓國女歌手，所屬經紀公司為STARSHIP娛樂，曾為限定女子團體IZ*ONE成員之一，現為女子組合「IVE」的成員之一。"),
]

struct music {
    var photo:String
    var name:String
    //var song:[String]
}

let musics:[music] = [
    music(photo:"BLOOM*IZ",name:"BLOOM*IZ"/*,song:["EYES","FIESTA","DREAMLIKE","AYAYAYA","SO CURIOUS","SPACESHIP","우연이 아니야 (DESTINY)","YOU & I","DAYDREAM","PINK BLUSHER","언젠가 우리의 밤도 지나가겠죠 (SOMEDAY)","OPEN YOUR EYES"]*/),
    music(photo:"COLOR*IZ",name:"COLOR*IZ"/*,song:["아름다운 색","O' My!","La Vie en Rose","비밀의 시간","앞으로 잘 부탁해"," 반해버리잖아?","꿈을 꾸는 동안"]*/),
    music(photo:"HEART*IZ",name:"HEART*IZ"/*,song: ["해바라기","비올레타","Highlight","Really Like You","Airplane","하늘 위로","고양이가 되고 싶어","기분 좋은 안녕"]*/),
    music(photo:"Oneiric Diary",name:"Oneiric Diary"/*,song: ["Welcome","Secret Story of the Swan","Pretty","Merry-Go-Round","Rococo","With*One","Secret Story of the Swan","Merry-Go-Round"]*/),
    music(photo:"One-reeler",name:"One-reeler / Act IV"/*,song: ["Mise-en-scène","Panorama","Island","Sequence","O Sole Mio","느린 여행"]*/),
    music(photo:"D-D-DANCE",name:"D-D-DANCE"/*,song: ["D-D-DANCE"]*/),
    music(photo:"love",name:"好きと言わせたい"/*,song: ["想要你說喜歡我","Kenchanayo","好心情莎喲娜啦"]*/),
    music(photo:"Buenos Aires",name:"Buenos Aires"/*,song: ["布宜諾斯艾利斯","Tomorrow","Target"]*/),
    music(photo:"Vampire",name:"Vampire"/*,song: ["Vampire","除你之外","Love Bubble"]*/)
]
struct MusicName {
    
    var name:String
    var number:Int
}
let MusicNames : [MusicName] = [
    MusicName(name:"EYES",number:1),
    MusicName(name:"FIESTA",number:1),
    MusicName(name:"DREAMLIKE",number:1),
    MusicName(name:"AYAYAYA",number:1),
    MusicName(name:"SO CURIOUS",number:1),
    MusicName(name:"SPACESHIP",number:1),
    MusicName(name:"우연이 아니야 (DESTINY)",number:1),
    MusicName(name:"YOU & I",number:1),
    MusicName(name:"DAYDREAM",number:1),
    MusicName(name:"PINK BLUSHER",number:1),
    MusicName(name:"언젠가 우리의 밤도 지나가겠죠 (SOMEDAY)",number:1),
    MusicName(name:"OPEN YOUR EYES",number:1)
]
/*
let MusicName2 : [String] = ["아름다운 색","O' My!","La Vie en Rose","비밀의 시간","앞으로 잘 부탁해"," 반해버리잖아?","꿈을 꾸는 동안"]
let MusicName3 : [String] = ["해바라기","비올레타","Highlight","Really Like You","Airplane","하늘 위로","고양이가 되고 싶어","기분 좋은 안녕"]
let MusicName4 : [String] = ["Welcome","Secret Story of the Swan","Pretty","Merry-Go-Round","Rococo","With*One","Secret Story of the Swan","Merry-Go-Round"]
let MusicName5 : [String] = ["Mise-en-scène","Panorama","Island","Sequence","O Sole Mio","느린 여행"]
let MusicName6 : [String] = ["D-D-DANCE"]
let MusicName7 : [String] = ["想要你說喜歡我","Kenchanayo","好心情莎喲娜啦"]
let MusicName8 : [String] = ["布宜諾斯艾利斯","Tomorrow","Target"]
let MusicName9 : [String] = ["Vampire","除你之外","Love Bubble"]
*/
