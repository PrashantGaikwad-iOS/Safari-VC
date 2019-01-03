//
//  ViewController.swift
//  Safari VC
//
//  Created by Prashant G on 1/3/19.
//  Copyright © 2019 Prashant G. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // MARK: - IBActions
    
    @IBAction func openLinkInSafari(_ sender: Any) {
        showSafariVC(for: "https://www.youtube.com/watch?v=gnjXbR2eNDE")
    }
    
    func showSafariVC(for url: String) {
        guard let url = URL(string: url) else {
            // Show an invalid URL error
            return
        }
        
        let safariVC = SFSafariViewController(url: url)
        present(safariVC, animated: true)
    }

}

