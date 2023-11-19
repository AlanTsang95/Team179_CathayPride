//
//  PlayMovieViewController.swift
//  PrideOnPlane
//
//  Created by Yu Ho Kwok on 11/19/23.
//

import UIKit
import AVKit
class PlayMovieViewController: UIViewController {
    
     var player: AVPlayer!
     var playerViewController: AVPlayerViewController!
     
    @IBOutlet var container : UIView!
    
    @IBOutlet var panel1 : UIView!
    @IBOutlet var panel2 : UIView!
    
     override func viewDidLoad() {
         
         panel1.alpha = 0
         panel2.alpha = 0
         
         self.navigationController?.navigationBar.tintColor = .white
         
         super.viewDidLoad()
         
         guard let path = Bundle.main.path(forResource: "sunset", ofType: "mp4") else {
             debugPrint("video.mp4 not found")
             return
         }
         let url = URL(fileURLWithPath: path)
         
         player = AVPlayer(url: url)
         
         playerViewController = AVPlayerViewController()
         playerViewController.player = player
         playerViewController.videoGravity = AVLayerVideoGravity.resizeAspectFill

         // Set the Frame
         playerViewController.view.frame = self.view.frame
         
         
         // Add it to View Controller
         addChild(playerViewController)
         container.addSubview(playerViewController.view)
         
         // Play the video
         playerViewController.player?.play()
         
         Timer.scheduledTimer(withTimeInterval: 15.0, repeats: false, block: {
             timer in
             UIView.animate(withDuration: 0.5, animations: {
                 self.panel1.alpha = 1
                 self.panel2.alpha = 1
             })
         })
         
         
     }
    
    @IBAction func dismissTag(){
        UIView.animate(withDuration: 0.5, animations: {
            self.panel1.alpha = 0
            self.panel2.alpha = 0
        })
    }
}
