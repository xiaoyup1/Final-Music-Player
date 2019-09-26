//
//  SecondViewController.swift
//  Final Music Player
//
//  Created by Rongyu on 27/09/19.
//  Copyright © 2019 Xiaoyu. All rights reserved.
//

import UIKit
import AVFoundation

class SecondViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBAction func Play(_ sender: Any)
    {
        if audioPlayer.isPlaying == false
        {
            audioPlayer.play()
        }
    }
    @IBAction func Pause(_ sender: Any)
    {
        if audioPlayer.isPlaying
        {
            audioPlayer.pause()
        }
    }
    @IBAction func Prev(_ sender: Any)
    {
        
    }
    @IBAction func next(_ sender: Any)
    {
        playThis(thisThing: songs[thisSong+1])
    }
    @IBAction func UiSlider(_ sender: Any)
    {
        audioPlayer.volume = (sender as AnyObject).value
    }
    func playThis(thisThing:String)
    {
    do{
        let audioPath = Bundle.main.path(forResource: thisThing, ofType: ".mp3")
        try audioPlayer = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!)as URL)
        thisSong += 1
        audioPlayer.play()
      
    }
    catch{
        print ("ERROR")
    }
  
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

