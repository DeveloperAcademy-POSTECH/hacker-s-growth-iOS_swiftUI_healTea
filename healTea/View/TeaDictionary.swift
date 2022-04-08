//
//  Dictionary.swift
//  healTea
//
//  Created by Terry Koo on 2022/04/07.
//
import SwiftUI


struct TeaDictionary: View {
    @State var teaData: TeaData
   
    var body: some View {
        HStack {
            Text(teaData.name)
        }
    }
}

struct TeaDictionary_Previews: PreviewProvider { 
    static var previews: some View {
        TeaDictionary(teaData: TeaDatas[0])
    }
}
