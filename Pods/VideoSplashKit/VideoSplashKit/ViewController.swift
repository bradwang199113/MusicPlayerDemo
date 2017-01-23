//
//  ViewController.swift
//  VideoSplash
//
//  Created by Toygar Dündaralp on 8/3/15.
//  Copyright (c) 2015 Toygar Dündaralp. All rights reserved.
//

import UIKit

class ViewController: VideoSplashViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    let url = URL(fileURLWithPath: Bundle.main.path(forResource: "test", ofType: "mp4")!)
    self.videoFrame = view.frame
    self.fillMode = .resizeAspectFill
    self.alwaysRepeat = true
    self.sound = true
    self.startTime = 12.0
    self.duration = 4.0
    self.alpha = 0.7
    self.backgroundColor = UIColor.black
    self.contentURL = url

    // Sample UI
    var sampleButton = UIButton(frame: CGRect(x: 15.0, y: 500.0, width: 140.0, height: 42.0))
    sampleButton.setImage(UIImage(named: "btnSignin"), for: UIControlState())
    sampleButton.layer.cornerRadius = 2
    sampleButton.layer.masksToBounds = true
    view.addSubview(sampleButton)

    sampleButton = UIButton(frame: CGRect(x: 165.0, y: 500.0, width: 140.0, height: 42.0))
    sampleButton.setImage(UIImage(named: "btnRegister"), for: UIControlState())
    sampleButton.layer.cornerRadius = 2
    sampleButton.layer.masksToBounds = true
    view.addSubview(sampleButton)

    let text = UILabel(frame: CGRect(x: 0.0, y: 100.0, width: 320.0, height: 100.0))
    text.font = UIFont(name: "Museo500-Regular", size: 30)
    text.textAlignment = NSTextAlignment.center
    text.textColor = UIColor.white
    text.text = "VideoSplash"
    view.addSubview(text)
  }

  override var prefersStatusBarHidden : Bool {
    return true
  }
}
