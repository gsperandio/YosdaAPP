//
//  Landmark.swift
//  ExampleUI
//
//  Created by Dev Mac on 13/09/23.
//

import Foundation

struct Musics{
    let name: String
    let author: String
    let explicit: Bool
    let ImageMusic: String
}

extension Musics{
    static func allMusics() -> [Musics]{
        return [
            Musics(name: "Ballena", author: "Vulgo FK, MC Ryan", explicit: true, ImageMusic: "ballena"),
            Musics(name: "La Danza", author: "John Summit", explicit: false, ImageMusic: "ladanza"),
            Musics(name: "Lemonade", author: "Internet Money, Gunna", explicit: true, ImageMusic: "lemonade"),
            Musics(name: "Molly", author: "Salvi, Franklin Dam", explicit: true, ImageMusic: "molly"),
            Musics(name: "New Tank", author: "Vulgo FK, MC Ryan", explicit: true, ImageMusic: "newtank"),
            Musics(name: "CAN'T SAY", author: "Travis Scott", explicit: true, ImageMusic: "noidea"),
            Musics(name: "Rose Petals", author: "Darci", explicit: true, ImageMusic: "rosepetals"),
            Musics(name: "Sal e Pimenta", author: "KayBlack, Veigh, Vulgo FK", explicit: false, ImageMusic: "salpimenta"),
            Musics(name: "Space Bound", author: "Eminem", explicit: true, ImageMusic: "spacebound"),
            Musics(name: "Witch Hunter", author: "Vestron Vulture", explicit: false, ImageMusic: "witchHunter"),
            Musics(name: "Caramelldansen", author: "The Girls", explicit: false, ImageMusic: "caramelldansen")
        ]
    }
}
