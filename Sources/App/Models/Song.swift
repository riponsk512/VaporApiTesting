//
//  File.swift
//  
//
//  Created by Ripon sk on 02/10/22.
//

import Foundation
import Fluent
import Vapor
final class  Song:Model,Content{
   static let schema: String = "songs"
    @ID(key: .id)
    var id:UUID?
    @Field(key: "title")
    var title:String
    init() {
        
    }
    init(id: UUID? = nil, title: String) {
        self.id = id
        self.title = title
    }
}
