//
//  ViewRouter.swift
//  healTea
//
//  Created by Geunil Park on 2022/04/11.
//

import SwiftUI

enum Page {
    case home
    case liked
    case records
    case user
}

class ViewRouter: ObservableObject {
    @Published var currentPage: Page = .home
}

