//
//  ViewController.swift
//  video-player
//
//  Created by Md Muhaiminul on 19/02/2025.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        playVideo()
    }
    
    private func playVideo(){
        guard let
                path = Bundle.main.path(forResource: "xukai", ofType: "mp4") else {
            debugPrint("video.m4v not found")
            
            return
        }
        
        let player = AVPlayer(url: (URL(fileURLWithPath: path)))
        let playerController = AVPlayerViewController()
        playerController.player=player
        present(playerController, animated: true)
        player.play()
    }

}

