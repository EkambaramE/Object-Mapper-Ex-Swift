//
//  Mappable.swift
//  Object Mapper Ex
//
//  Created by EkambaramE on 31/03/16.
//  Copyright © 2016 EkambaramE. All rights reserved.
//
import ObjectMapper

class User: Mappable {
    
    var geonames:[AnyObject]?
    var lng: Double?
    var geonameId: Double?
    var countrycode: String?
    var name: String?
    var fclName: String?
    var toponymName: String?
    var fcodeName: String?
    var wikipedia: String?
    var lat: Double?
    var fcl: String?
    var population: Double?
    var fcode: String?
    
    required init?(_ map: Map) {
        
    }
    
    // Mappable
    func mapping(map: Map) {
        geonames         <- map["geonames"]
        lng              <- map["geonames.0.lng"]
        geonameId        <- map["geonames.0.geonameId"]
        countrycode      <- map["geonames.0.countrycode"]
//        name             <- map["geonames.0.name"]
//        fclName          <- map["geonames.0.fclName"]
//        toponymName      <- map["geonames.0.toponymName"]
//        fcodeName        <- map["geonames.0.fcodeName"]
//        wikipedia        <- map["geonames.0.wikipedia"]
//        lat              <- map["geonames.0.lat"]
//        fcl              <- map["geonames.0.fcl"]
//        population       <- map["geonames.0.population"]
//        fcode            <- map["geonames.0.fcode"]
    }
    
    
    
}
