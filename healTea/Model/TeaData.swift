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
        TeaData(picture_code:"tea_0", name:"1세작 녹차", en_name:"Sejak", category1:"녹차", category2:"세작", temperature:"70", time:"1.5", tasting_note:["견과류", "난 향", "달콤한 맛"], good_name:["고혈압", "콜레스테롤", "당뇨병"], good_context:["고혈압에 좋아요", "콜레스테롤에 좋아요", "당뇨병에 좋아요"], bad_name:["임산부", "불면증"], bad_context:["임산부한테 나빠요", "불면증에 나빠요"]),
        TeaData(picture_code:"tea_0", name:"2세작 녹차", en_name:"Sejak", category1:"녹차", category2:"세작", temperature:"70", time:"1.5", tasting_note:["견과류", "난 향", "달콤한 맛"], good_name:["고혈압", "콜레스테롤", "당뇨병"], good_context:["고혈압에 좋아요", "콜레스테롤에 좋아요", "당뇨병에 좋아요"], bad_name:["임산부", "불면증"], bad_context:["임산부한테 나빠요", "불면증에 나빠요"]),
        TeaData(picture_code:"tea_0", name:"3세작 녹차", en_name:"Sejak", category1:"녹차", category2:"세작", temperature:"70", time:"1.5", tasting_note:["견과류", "난 향", "달콤한 맛"], good_name:["고혈압", "콜레스테롤", "당뇨병"], good_context:["고혈압에 좋아요", "콜레스테롤에 좋아요", "당뇨병에 좋아요"], bad_name:["임산부", "불면증"], bad_context:["임산부한테 나빠요", "불면증에 나빠요"]),
        TeaData(picture_code:"tea_0", name:"4세작 녹차", en_name:"Sejak", category1:"녹차", category2:"세작", temperature:"70", time:"1.5", tasting_note:["견과류", "난 향", "달콤한 맛"], good_name:["고혈압", "콜레스테롤", "당뇨병"], good_context:["고혈압에 좋아요", "콜레스테롤에 좋아요", "당뇨병에 좋아요"], bad_name:["임산부", "불면증"], bad_context:["임산부한테 나빠요", "불면증에 나빠요"]),
        
        TeaData(picture_code:"tea_1", name:"5우전 녹차", en_name:"Ujeon", category1:"녹차", category2:"우전", temperature:"80", time:"1.5", tasting_note:["견과류", "난 향", "달콤한 맛"], good_name:["고혈압", "콜레스테롤", "당뇨병"], good_context:["고혈압에 좋아요", "콜레스테롤에 좋아요", "당뇨병에 좋아요"], bad_name:["임산부", "불면증"], bad_context:["임산부한테 나빠요", "불면증에 나빠요"]),
        
        TeaData(picture_code:"tea_1", name:"6보리차", en_name:"Bori", category1:"대보리", category2:"중보리1", temperature:"80", time:"1.5", tasting_note:["견과류", "난 향", "달콤한 맛"], good_name:["고혈압", "콜레스테롤", "당뇨병"], good_context:["고혈압에 좋아요", "콜레스테롤에 좋아요", "당뇨병에 좋아요"], bad_name:["임산부", "불면증"], bad_context:["임산부한테 나빠요", "불면증에 나빠요"]),
        
        TeaData(picture_code:"tea_1", name:"7보리차", en_name:"Bori", category1:"대보리", category2:"중보리2", temperature:"80", time:"1.5", tasting_note:["견과류", "난 향", "달콤한 맛"], good_name:["고혈압", "콜레스테롤", "당뇨병"], good_context:["고혈압에 좋아요", "콜레스테롤에 좋아요", "당뇨병에 좋아요"], bad_name:["임산부", "불면증"], bad_context:["임산부한테 나빠요", "불면증에 나빠요"]),
        
        TeaData(picture_code:"tea_1", name:"보리차3", en_name:"Bori", category1:"대분류보리", category2:"중분류보리2", temperature:"80", time:"1.5", tasting_note:["견과류", "난 향", "달콤한 맛"], good_name:["고혈압", "콜레스테롤", "당뇨병"], good_context:["고혈압에 좋아요", "콜레스테롤에 좋아요", "당뇨병에 좋아요"], bad_name:["임산부", "불면증"], bad_context:["임산부한테 나빠요", "불면증에 나빠요"]),
        
    ]
}
