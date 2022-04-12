//
//  Camera.swift
//  healTea
//
//  Created by Terry Koo on 2022/04/08.
//


import Foundation
import SwiftUI


struct Camera: View {
    
    @State private var isCamera = false
    @State private var sourceType: UIImagePickerController.SourceType = .photoLibrary
    @State private var selectedImage: UIImage?
    @State private var isImagePickerDisplay = false
    
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
        VStack{
            
            Picker(selection: $section,
                   label: Text("Picker"),
                   content: {
                ForEach(filterOptions.indices, id: \.self) { index in
                        Text(filterOptions[index])
                            .tag(filterOptions[index])
                }
            })
            .pickerStyle(SegmentedPickerStyle())
            
            NavigationView {
                
                VStack {
                    
                    if selectedImage != nil {
                        Image(uiImage: selectedImage!)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300, height: 300)
                    } else {
                        Image(systemName: "snow")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300, height: 300)
                    }
                    
                    Button("Camera") {
                        self.sourceType = .camera
                        self.isImagePickerDisplay.toggle()
                    }.padding()
                    
                    Button("Photo") {
                        self.sourceType = .photoLibrary
                        self.isImagePickerDisplay.toggle()
                    }.padding()
                }
                .sheet(isPresented: self.$isImagePickerDisplay) {
                    ImagePickerView(selectedImage: self.$selectedImage, sourceType: self.sourceType)
                }
            }
        }
    }
}

struct Camera_Previews: PreviewProvider {
    static var previews: some View {
        Camera()
    }
}
