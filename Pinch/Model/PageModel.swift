//
//  PageModel.swift
//  Pinch
//
//  Created by Vito Borghi on 06/01/2024.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumbnailName: String {
        return "thumb-"+imageName
    }
}
