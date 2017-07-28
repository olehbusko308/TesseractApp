//
//  ViewController.swift
//  TesseractApp
//
//  Created by Oleh Busko on 28/07/2017.
//  Copyright © 2017 Oleh Busko. All rights reserved.
//

import UIKit
import TesseractOCR

class ViewController: UIViewController, G8TesseractDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let tesseract = G8Tesseract(language: "eng") {
            tesseract.delegate = self;
            tesseract.image = UIImage(named: "text")?.g8_blackAndWhite()
            tesseract.recognize()
            
            print(tesseract.recognizedText)
        }
        
    }
    
    func progressImageRecognition(for tesseract: G8Tesseract!) {
        print("Recognition Progress \(tesseract.progress)%")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

