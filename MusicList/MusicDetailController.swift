//
//  MusicDetailController.swift
//  MusicList
//
//  Created by Vitor Silva on 28/08/19.
//  Copyright © 2019 Vitor Silva. All rights reserved.
//

import UIKit

class MusicDetailController: UIViewController {

    @IBOutlet weak var artistTitle: UINavigationItem!
    @IBOutlet var musicView: MusicDetailView!
    
    var music: Music = Music.blank {
        didSet {
            artistTitle.title = music.artist
            musicView.albumImage.image = UIImage(named: music.image)
            musicView.albumLabel.text = music.album
            musicView.musicLabel.text = music.name
            musicView.yearLabel.text = "\(music.year)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
