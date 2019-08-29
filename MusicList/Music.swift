//
//  File.swift
//  MusicList
//
//  Created by Vitor Silva on 28/08/19.
//  Copyright © 2019 Vitor Silva. All rights reserved.
//

import Foundation

struct Album {
    let name: String
    let artist: String
    let year: Int
    let image: String
    let tracks: [String]
}

struct Music {
    let name: String
    let artist: String
    let year: Int
    let image: String
    let album: String
    
    static var blank: Music {
        get {
            return Music(name: "", artist: "", year: 0, image: "", album: "")
        }
    }
}

let AlbumList = [
    Album(name: "The Suburbs",
          artist: "Arcade Fire",
          year: 2010,
          image: "thesuburbs",
          tracks: [
            "The Suburbs",
            "Ready to Start",
            "Modern Man",
            "Rococo",
            "Empty Room",
            "City with No Children",
            "Half Light I",
            "Half Light II (No Celebration)",
            "Suburban War",
            "Month of May",
            "Wasted Hours",
            "Deep Blue",
            "We Used to Wait",
            "Sprawl I (Flatland)",
            "Sprawl II (Mountains Beyond Mountains)",
            "The Suburbs (Continued)"
        ]),
    Album(name: "Unknown Pleasures",
          artist: "Joy Division",
          year: 1979,
          image: "unknownpleasures",
          tracks: [
            "Disorder",
            "Day of the Lords",
            "Candidate",
            "Insight",
            "New Dawn Fades",
            "She's Lost Control",
            "Shadowplay",
            "Wilderness",
            "Interzone",
            "I Remember Nothing"
        ])
]

var MusicList: [Music] {
    get {
        var tmp = [Music]()
        AlbumList.forEach { (album: Album) in
            for i in 0..<album.tracks.count {
                tmp.append(Music(name: album.tracks[i], artist: album.artist, year: album.year, image: album.image, album: album.name))
            }
        }
        return tmp
    }
}
