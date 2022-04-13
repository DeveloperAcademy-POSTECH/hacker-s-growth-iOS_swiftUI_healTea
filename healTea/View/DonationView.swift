//
//  DonationViw.swift
//  healTea
//
//  Created by 유정인 on 2022/04/13.
//

import SwiftUI

struct DonationView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            DonationList()
            
        }
    }
}

struct DonationView_Previews: PreviewProvider {
    static var previews: some View {
        DonationView()
    }
}
