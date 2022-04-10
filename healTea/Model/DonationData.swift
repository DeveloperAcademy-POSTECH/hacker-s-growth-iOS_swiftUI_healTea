import Foundation
import SwiftUI

struct DonationData: Identifiable {
    
    let id: UUID
    var picture_code: String
    var name: String
    var en_name: String
    var context: String
    
    init(id: UUID = UUID(), picture_code: String, name: String, en_name: String, context: String) {
        
        self.id = id
        self.picture_code = picture_code
        self.name = name
        self.en_name = en_name
        self.context = context
    }
}

extension DonationData {
    static let donationData: [DonationData] =
    [
        DonationData(picture_code:"don_0", name:"그린피스", en_name:"Green Peace", context:"핵실험 반대와 자연보호 운동 등을 통해 지구환경 보존을 위해 힘쓰는 국제 환경보호 단체."),
        
        DonationData(picture_code:"don_1", name:"세계자연기금", en_name:"WWF", context:"생물의 다양성 보존과 환경오염 및 자원 낭비 방지 등을 통해 자연보호사업을 진행하는 세계 최대 민간자연보호 단체."),
        
        DonationData(picture_code:"don_2", name:"환경재단", en_name:"K-Green Foundation", context:"환경재단은 지속가능한 지구를 위해 정부·기업·시민사회와 함께하는 실천공동체입니다.")
    ]
}

