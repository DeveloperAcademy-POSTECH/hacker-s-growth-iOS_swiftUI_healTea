//
//  PicturePicker.swift
//  healTea
//
//  Created by Geunil Park on 2022/04/12.
//

import SwiftUI

struct PicturePicker: View {
    
    @State var section: String = "Camera"
    let filterOptions: [String] = [
        "Camera", "Picture"
    ]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.gray
        let attributes: [NSAttributedString.Key:Any] = [
            .foregroundColor : UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        Picker(selection: $section,
               label: Text("Picker"),
               content: {
            ForEach(filterOptions.indices, id: \.self) { index in
                    Text(filterOptions[index])
                        .tag(filterOptions[index])
            }
        })
        .pickerStyle(SegmentedPickerStyle())
    }
}

struct PicturePicker_Previews: PreviewProvider {
    static var previews: some View {
        PicturePicker()
    }
}
