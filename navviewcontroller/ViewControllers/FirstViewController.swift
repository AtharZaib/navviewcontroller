//
//  ViewController.swift
//  navviewcontroller
//
//  Created by Mark Hoath on 2/10/17.
//  Copyright © 2017 Mark Hoath. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        navigationItem.title = "First Controller"
        navigationController?.navigationBar.isTranslucent = false
        
        let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        navigationItem.titleView = titleLabel
        titleLabel.text = "First"
        titleLabel.textColor = .black
        titleLabel.textAlignment = .center
        
        let nextButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(moveToSecond))
        navigationItem.rightBarButtonItem = nextButton
        
        
        view.backgroundColor = .blue
        
    }
    
    @objc func moveToSecond() {
        show(SecondViewController(), sender: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

