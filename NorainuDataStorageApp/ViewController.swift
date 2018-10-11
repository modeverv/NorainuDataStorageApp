//
//  ViewController.swift
//  NorainuDataStorageApp
//
//  Created by norainu on 2018/10/12.
//  Copyright © 2018 norainu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var textField: UITextField!
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    let userDefaults = UserDefaults.standard
    if let value = userDefaults.string(forKey: "text") {
      textField.text = value
    }

  }
  @IBAction func tapButtonAction(_ sender: Any) {
    if let value = textField.text {
      let userDefaults = UserDefaults.standard
      userDefaults.set(value, forKey: "text")
      userDefaults.synchronize()
      //textField.text = nil
    }
  }


}

