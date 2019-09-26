//
//  FirstViewController.swift
//  Final Music Player
//
//  Created by Rongyu on 27/09/19.
//  Copyright © 2019 Xiaoyu. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        gettingSongName()
    }
    func gettingSongName()
    {
        let folderURL = URL(fileURLWithPath: Bundle.main.resourcePath!)
        
        do
        {
            let songPath = try FileManager.default.contentsOfDirectory(at: folderURL, includingPropertiesForKeys: nil, options: .skipsHiddenFiles)
            
            for song in songPath
            {
                var mySong  = song.absoluteString
                
                if mySong.contains(".mp3")
                {
                    let findString = mySong.components(separatedBy: "/")
                    mySong = (findString[findString.count-1])
                    mySong = mySong.replacingOccurrences(of: "%20", with: " ")
                    mySong = mySong.replacingOccurrences(of: ".mp3", with: " ")
                    mySong = mySong.replacingOccurrences(of: "%5B", with: " ")
                    mySong = mySong.replacingOccurrences(of: "%5D", with: " ")
                    print(mySong)
                }
            }
        }
        catch
        {
            
        }
    }

}

