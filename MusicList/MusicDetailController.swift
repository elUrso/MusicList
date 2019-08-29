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
    
    var viewCreated = false
    
    var music: Music = Music.blank {
        didSet {
            let image = UIImage(named: music.image)
            artistTitle.title = music.artist
            if(viewCreated) {
                musicView.albumImage.image = image
                musicView.albumLabel.text = music.album
                musicView.musicLabel.text = music.name
                musicView.yearLabel.text = "\(music.year)"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let image = UIImage(named: music.image)
        artistTitle.title = music.artist
        musicView.albumImage.image = image
        musicView.albumLabel.text = music.album
        musicView.musicLabel.text = music.name
        musicView.yearLabel.text = "\(music.year)"
        
        viewCreated = true
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
