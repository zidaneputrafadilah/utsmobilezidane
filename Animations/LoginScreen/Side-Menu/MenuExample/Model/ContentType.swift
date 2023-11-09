//
//  ContentView.swift
//  LoginScreen
//
//  Created by Zidane Putra Fadilah on 08/11/23.
//

import Foundation

enum ContentType: String {
    case Music = "content_music"
    case Films = "content_films"
}

prefix func ! (value: ContentType) -> ContentType {
    switch value {
        case .Music:
            return .Films
        case .Films:
            return .Music
    }
}
