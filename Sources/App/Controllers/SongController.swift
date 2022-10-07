//
//  File.swift
//  
//
//  Created by Ripon sk on 01/10/22.
//

import Fluent
struct CreateSong:Migration{
    func prepare(on database: FluentKit.Database) -> NIOCore.EventLoopFuture<Void> {
        return database.schema("songs").id().field("title", .string, .required).create()
    }
    
    func revert(on database: FluentKit.Database) -> NIOCore.EventLoopFuture<Void> {
        return database.schema("songs").delete()
    }

}
