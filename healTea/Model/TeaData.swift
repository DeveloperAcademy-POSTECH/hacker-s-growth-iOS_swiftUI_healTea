import Foundation
import SwiftUI

struct TeaData: Identifiable {
    
    let id: UUID
    var picture_code: String
    var name: String
    var en_name: String
    var category1: String
    var category2: String
    var temperature: String
    var time: String
    var tasting_note: [String]
    var good_name: [String]
    var good_context: [String]
    var bad_name: [String]
    var bad_context: [String]
    
    init(id: UUID = UUID(), picture_code: String, name: String, en_name: String, category1: String, category2: String, temperature: String, time: String, tasting_note: [String], good_name: [String], good_context: [String], bad_name: [String], bad_context: [String]) {
        
        self.id = id
        self.picture_code = picture_code
        self.name = name
        self.en_name = en_name
        self.category1 = category1
        self.category2 = category2
        self.temperature = temperature
        self.time = time
        self.tasting_note = tasting_note
        self.good_name = good_name
        self.good_context = good_context
        self.bad_name = bad_name
        self.bad_context = bad_context
        
    }
}

extension TeaData {
    static let sampleData: [TeaData] =
    [
        // 녹차
        TeaData(picture_code:"tea_0", name:"세작 녹차", en_name:"Sejak", category1:"녹차", category2:"세작", temperature:"70", time:"1.5", tasting_note:["견과류", "난 향", "달콤한 맛"], good_name:["고혈압", "콜레스테롤", "당뇨병"], good_context:["고혈압에 좋아요", "콜레스테롤에 좋아요", "당뇨병에 좋아요"], bad_name:["임산부", "불면증"], bad_context:["임산부한테 나빠요", "불면증에 나빠요"]),
        
        TeaData(picture_code:"tea_1", name:"우전 녹차", en_name:"Woojeon", category1:"녹차", category2:"우전", temperature:"70", time:"1.5", tasting_note:["견과류", "난 향", "부드러운 단 맛"], good_name:["고혈압", "콜레스테롤", "당뇨병"], good_context:["고혈압에 좋아요", "콜레스테롤에 좋아요", "당뇨병에 좋아요"], bad_name:["임산부", "불면증"], bad_context:["임산부한테 나빠요", "불면증에 나빠요"]),
        
        TeaData(picture_code:"tea_2", name:"억수진 녹차", en_name:"Ouksujin", category1:"녹차", category2: "억수진", temperature:"70", time:"1.5", tasting_note:["해조류", "난 향","부드러운 단 맛"], good_name:["고혈압", "콜레스테롤", "당뇨병"], good_context:["고혈압에 좋아요", "콜레스테롤에 좋아요", "당뇨병에 좋아요"], bad_name:["임산부", "불면증"], bad_context:["임산부한테 나빠요", "불면증에 나빠요"]),
        
        TeaData(picture_code:"tea_16", name:"덖음 녹차", en_name:"Fresh Roasted", category1:"녹차", category2:"덖음차", temperature:"70", time:"1.5", tasting_note:["견과류", "난 향", "구수한 맛"], good_name:["고혈압", "콜레스테롤", "당뇨병"], good_context:["고혈압에 좋아요", "콜레스테롤에 좋아요", "당뇨병에 좋아요"], bad_name:["임산부", "불면증"], bad_context:["임산부한테 나빠요", "불면증에 나빠요"]),

        // 홍차
        TeaData(picture_code:"tea_3", name:"아쌈 홍차", en_name:"Assam", category1:"홍차", category2:"아쌈", temperature:"95", time:"3", tasting_note:["상쾌한 맛", "맥아 향"], good_name:["심장질환", "암", "감기", "고혈압", "충치", "골다공증", ], good_context:["심장질환에 좋아요", "암 예방에 좋아요", "고혈압에 좋아아요", "충치에 좋아요", "골다공증에 좋아요"], bad_name:["당뇨병", "간 질병", "신장 결석"], bad_context:["당뇨병에 나빠요", "간 질병에 나빠요", "신장 결석에 나빠요"]),
        
        TeaData(picture_code:"tea_4", name:"다즐링 홍차", en_name:"Darjeeling", category1:"홍차", category2:"다즐링", temperature:"95", time:"3", tasting_note:["꽃 향", "과일 향"], good_name:["심혈관질환", "충치", "노화", "암"], good_context:["심혈관질환에 좋아요", "충치 예방에 좋아요", "암 예방에 좋아요"], bad_name:["뼈", "불면증", "빈혈", "당뇨병"], bad_context:["뼈에 나빠요", "불면증에 나빠요", "빈혈에 나빠요", "당뇨병에 나빠요"]),
        
        TeaData(picture_code:"tea_12", name:"닐기리 홍차", en_name:"Nilgiri", category1:"홍차", category2:"닐기리", temperature:"95", time:"3", tasting_note:["부드러운 맛"], good_name:["고혈압", "동맥 경화", "만성 피로", "다이어트", "노화"], good_context:["고혈압에 좋아요", "동맥경화에 좋아요", "만성피로에 좋아요", "다이어트에 좋아요", "노화방지에 좋아요"], bad_name:["뼈", "불면증", "빈혈", "당뇨병"], bad_context:["뼈에 나빠요", "불면증에 나빠요", "빈혈에 나빠요", "당뇨병에 나빠요"]),

        
        // 허브티
        TeaData(picture_code:"tea_7", name:"라즈베리", en_name:"Raspberry", category1:"허브티", category2:"라즈베리", temperature:"95", time:"2", tasting_note:["달콤한 맛", "상큼한 향"], good_name:["임산부(말기)", "심장질환"], good_context:["고혈압에 좋아요", "콜레스테롤에 좋아요", "당뇨병에 좋아요"], bad_name:["임산부", "불면증"], bad_context:["임산부한테 나빠요", "불면증에 나빠요"]),
        
        TeaData(picture_code:"tea_14", name:"캐모마일", en_name:"Chamomile", category1:"허브티", category2:"캐모마일", temperature:"90", time:"2", tasting_note:["풋사과", "옅은 바닐라 향"], good_name:["생리통", "소화기 질환", "감기", "피로", "두통", "불면증", "염증"], good_context:["생리통에 좋아요", "소화기 질환에 좋아요", "감기에 좋아요", "피로회복에 좋아요", "두통에 좋아요", "불면증에 좋아요", "염증 완화에 좋아요"], bad_name:["임산부"], bad_context:["임산부에게 나빠요"]),
        
        TeaData(picture_code:"tea_8", name:"루이보스", en_name:"Rooibos", category1:"허브티", category2:"루이보스", temperature:"90", time:"2", tasting_note:["꽃향의 꿀", "바닐라", "맥아 향미"], good_name:["임산부", "당뇨병", "염증", "항암"], good_context:["임산부에게 좋아요", "당뇨병에 좋아요", "염증 완화에 좋아요", "항암에 좋아요"], bad_name:["간 질환"], bad_context:["간 질환에 나빠요"]),
        
        TeaData(picture_code:"tea_6", name:"페퍼민트", en_name:"Peppermint", category1:"허브티", category2:"페퍼민트", temperature:"100", time:"5", tasting_note:["민트", "시원함"], good_name:["눈", "호흡기", "면역력"], good_context: ["눈에 좋아요", "호흡기에 좋아요", "면역력에 좋아요"] , bad_name:["위/식도 역류 질환", "불면증", "임산부"], bad_context: ["위/식도 역류 질환에 나빠요", "불면증에 나빠요", "임산부에게 나빠요"]),
                
        TeaData(picture_code:"tea_19", name:"라벤더", en_name:"Lavender", category1:"허브티", category2:"라벤더", temperature:"90", time:"3", tasting_note:["꽃 향", "달콤함"], good_name:["혈관", "긴장", "피부", "면역력", "해충 퇴치", "노화", "두통"] , good_context: ["혈관에 좋아요", "긴장 완화에 좋아요", "피부에 좋아요", "면역력 증진에 좋아요", "해충 퇴치에 좋아요", "노화 방지에 좋아요", "두통에 좋아요"], bad_name:["저혈압", "임산부"], bad_context:["저혈압에 나빠요", "임산부에게 나빠요"]),
        
        TeaData(picture_code:"tea_18", name:"자스민", en_name:"Jasmine", category1:"허브티", category2:"자스민", temperature:"85", time:"3", tasting_note:["청량함", "섬세한 꽃향"], good_name:["당뇨병", "노인성 뇌 질환", "다이어트"], good_context:["당뇨병에 좋아요", "노인성 뇌질환에 좋아요", "다이어트에 좋아요"], bad_name:["수면방해", "두통"], bad_context:["수면에 나빠요", "두통에 나빠요"]),
        
        TeaData(picture_code:"tea_13", name:"히비스커스", en_name:"Hibiscus", category1:"허브티", category2:"히비스커스", temperature:"90", time:"3", tasting_note:["타르트", "크랜베리향"], good_name:["고혈압", "혈액순환", "생리전증후군", "우울증", "다이어트"], good_context:["고혈압에 좋아요", "혈액순환에 좋아요", "생리전증후군에 좋아요", "우울증에 좋아요", "다이어트에 좋아요"], bad_name:["임산부", "당뇨병", "저혈압"], bad_context:["임산부에게 나빠요", "당뇨병에 나빠요", "저혈압에 나빠요"]),
        
        TeaData(picture_code:"tea_10", name:"로즈힙", en_name:"Rosehip", category1:"허브티", category2:"로즈힙", temperature:"90", time:"3", tasting_note:["과일향", "신맛", "토피"], good_name:["관절염", "당뇨병", "통풍", "감기", "심장병"], good_context:["관절염에 좋아요", "당뇨병에 좋아요", "통풍에 좋아요", "감기에 좋아요", "심장병에 좋아요"], bad_name:["복통", "두통", "불면증"], bad_context:["복통에 나빠요", "두통에 나빠요", "불면증에 나빠요"]),

        
        // 곡물차
        TeaData(picture_code:"tea_3", name:"보리차", en_name:"Barley", category1:"곡물차", category2:"보리차", temperature:"100", time:"5", tasting_note:["고소함", "조청의 단맛"], good_name:["혈당수치 조절", "항암", "소화", "빈혈"], good_context:["혈당수치 조절에 좋아요", "항암에 좋아요", "소화에 좋아요", "빈혈에 좋아요"], bad_name:["몸이 냉한 사람"], bad_context:["몸이 냉한 사람에게 나빠요"]),
                                                                                                                
        TeaData(picture_code:"tea_17", name:"옥수수차", en_name:"Oksusu", category1:"곡물차", category2:"옥수수차", temperature:"100", time:"5", tasting_note:["고소함", "누룽지"], good_name:["부종", "고혈압", "황달"], good_context:["부종에 좋아요", "고혈압에 좋아요", "황달에 좋아요"], bad_name:["신장질환", "임산부"], bad_context:["신장질환에 나빠요", "임산부에게 나빠요"]),
                                                                                                                
        TeaData(picture_code:"tea_12", name:"결명자차", en_name:"Kyulmyungja", category1:"곡물차", category2:"결명자차", temperature:"100", time:"5", tasting_note:["고소함", "달콤쌉싸름함"], good_name:["고혈압", "녹내장", "결막염"], good_context:["고혈압에 좋아요", "녹내장에 좋아요", "결막염에 좋아요"], bad_name:["저혈압", "복통"], bad_context:["저혈압에 나빠요", "복통에 나빠요"]),
        
        TeaData(picture_code:"tea_20", name:"검은콩차", en_name:"blackbean", category1:"곡물차", category2:"검은콩차", temperature:"100", time:"5", tasting_note:["고소함", "담백함"], good_name:["탈모", "치매", "전립선암"], good_context:["이뇨작용에 좋아요", "탈모에 좋아요", "치매에 좋아요"], bad_name:["흡수율저하", "요요현상"], bad_context:["요요현상이 올수있어요", "영양소 흡수율이 낮아요"] ),
        
      



    ]
}
