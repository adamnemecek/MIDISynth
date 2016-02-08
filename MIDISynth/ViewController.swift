//
//  ViewController.swift
//  MIDISynth
//
//  Created by Gene De Lisa on 7/20/15.
//  Copyright © 2015 Gene De Lisa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var au:AudioUnitMIDISynth!
    
    var ss:SynthSequence!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        au = AudioUnitMIDISynth()
        ss = SynthSequence()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func patch1On(sender:UIButton) {
        au.playPatch1On()
    }
    
    @IBAction func patch1Off(sender:UIButton) {
        au.playPatch1Off()
    }
    
    
    @IBAction func patch2On(sender:UIButton) {
        au.playPatch2On()
    }
    
    @IBAction func patch2Off(sender:UIButton) {
        au.playPatch2Off()
    }

    @IBAction func playSequence(sender:UIButton) {
        au.musicPlayerPlay()
    }
    
    @IBAction func playSS(sender:UIButton) {
        print("sending play message")
        ss.play()
    }
}

