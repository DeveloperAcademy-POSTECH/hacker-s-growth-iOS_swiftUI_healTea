//
//  DonationView.swift
//  healTea
//
//  Created by 유정인 on 2022/04/12.
//

import SwiftUI

struct DonationView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 18) {
                
                HStack {
                    
                    VStack (alignment: .leading, spacing: 30) {
                        
                        Barchart()
                        
                        DonationList()
                    }
                    .padding()
                    
                }
            }
        }
    }
}

struct DonationView_Previews: PreviewProvider {
    static var previews: some View {
        DonationView()
            .previewInterfaceOrientation(.portrait)
    }
}
