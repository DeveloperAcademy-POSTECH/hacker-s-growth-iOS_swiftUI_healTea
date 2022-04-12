//
//  SearchBar.swift
//  healTea
//
//  Created by Terry Koo on 2022/04/12.
//

import Foundation
import SwiftUI


struct SearchBar: View {
     
     @Binding var searchText: String
     
     var body: some View {
         RoundedRectangle(cornerRadius: 13)
             .foregroundColor(Color("LightGray"))
             .frame(height: 40)
             .padding(.horizontal)
         
         HStack{
             TextField("Search ..", text: $searchText)
                 .padding(.leading)
             
             Image(systemName: "magnifyingglass")
                 .padding(.trailing)
         }.padding(.horizontal)
         
     }
} // SearchBar

