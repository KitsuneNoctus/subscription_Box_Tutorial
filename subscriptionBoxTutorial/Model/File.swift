//
//  File.swift
//  subscriptionBoxTutorial
//
//  Created by Henry Calderon on 2/11/20.
//  Copyright © 2020 Henry Calderon. All rights reserved.
//

import Foundation

//MARK: The Main Settings
struct Item {
    let name: String
    let image: String
}

struct Box {
    let date: String
    let items: [Item]
//    let image: String
}

struct Category {
    let name: String
}

//MARK: My Own Additions
// My own custom model data
enum Themes {
    case Halloween
    case Christmas
    case Thanksgiving
    case Valentines
}

struct Themed {
    let isThemed: Bool
    let theTheme: [Themes]
}
//MARK: The User
struct User {
    
}
