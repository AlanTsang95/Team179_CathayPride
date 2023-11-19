//
//  DiscoverEntry.swift
//  Pride
//
//  Created by Cathay Pride Team on 11/18/23.
//

import Foundation

enum EntryType {
    case locations
    case activities
    case symbols
    case recent
}

protocol DiscoveryListing {
    var identifier : String { get set }
}

struct DiscoverLabel : DiscoveryListing {
    var identifier: String = UUID().uuidString
    var title : String
}

struct DiscoverButton : DiscoveryListing {
    var identifier: String = UUID().uuidString
    var title : String
    var image : String
}

struct DiscoverEntry : DiscoveryListing {
    var identifier: String = UUID().uuidString
    var title : String
    var type : EntryType
    var description : String
    var imageName : String
}

struct DiscoverData {
    var entries : [DiscoveryListing] = []
    
    //a sepcial version for Cathay Hackathon 2023
    static var hackathon : DiscoverData {
        var data = DiscoverData()
        
        let manageButton = DiscoverButton(title: "Manage Upcoming Booking", image: "square.and.pencil")
        
        let title = DiscoverLabel(title: "knowledge from in flight entertainment")
        
        let prideflag = DiscoverEntry(title: "Pride", type: .symbols, description: "Pride flags can represent various sexual orientations, romantic orientations, gender identities, subcultures, and regional purposes, as well as the LGBT community as a whole.", imageName: "prideflag")

        let pridemap = DiscoverEntry(title: "Pride Map", type: .locations, description: "A map shows pride parade routes and other event info on the map so you can easily find the action or steer clear of the crowds.", imageName: "mapmap")
        
        
        let shopButton = DiscoverButton(title: "Shop pride flag products", image: "bag.fill")
        
        let bangkok = DiscoverEntry(title: "Bangkok, Thailand", type: .locations, description: "Bangkok is the capital and most important city in Thailand. Located on the banks of the country's main river, Chao Phraya, leading to its nickname as the Venice of the East. ", imageName: "bangkok")
        
        let pridemarch = DiscoverEntry(title: "Pride March", type: .activities, description: "The city's most colorful and extravagant parade will once liven up Bangkok's streets on the first Sunday of June.", imageName: "pridemarch")
        
        let bookButton = DiscoverButton(title: "Book flight & hotel to Bangkok on June", image: "airplane.departure")
        
        let sunset = DiscoverEntry(title: "I Told Sunset About You", type: .recent, description: "A love story of childhood friend became rival and eventually into a lovers.. oh aew and Teh will be able to overcome obstacles of love ?", imageName: "sunset")
        
        data.entries = [manageButton, title, prideflag, pridemap, shopButton, bangkok, pridemarch, bookButton, sunset]
        return data
    }
}
