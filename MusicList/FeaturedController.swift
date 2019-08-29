//
//  FeaturedController.swift
//  MusicList
//
//  Created by Vitor Silva on 29/08/19.
//  Copyright © 2019 Vitor Silva. All rights reserved.
//

import UIKit

class FeaturedController: UIViewController {

    @IBAction func showMore(_ sender: Any) {
        guard let url = URL(string: "https://en.wikipedia.org/wiki/Kendrick_Lamar") else { return }
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
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
