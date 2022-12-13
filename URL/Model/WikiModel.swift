//
//  WikiModel.swift
//  URL
//
//  Created by Евгений  Гравдин  on 13/12/2022.
//


struct WiKi: Decodable {
    let project: String
    let article: String
    let granularity: String
    let timestamp: String
    let access: String
    let agent: String
    let views: Int
}

struct WiKiitems: Decodable {
    let items: [WiKi]
}
