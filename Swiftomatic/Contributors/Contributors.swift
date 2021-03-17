//
//  Contributors.swift
//  Swiftomatic
//
//  Created by Audrey Roscop on 16/03/2021.
//

import Foundation

struct Contributors: Identifiable {
    let id = UUID()
    let name: String
    var image: String
    var caption: String
    var biography: String
    var latestContribution1: String
    var latestContribution2: String
}
