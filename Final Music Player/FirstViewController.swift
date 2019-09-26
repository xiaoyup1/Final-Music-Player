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
            }
        }
        catch
        {
            
        }
    }

}

