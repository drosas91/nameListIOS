//
//  NameAddViewController.swift
//  NameListIOS
//
//  Created by Danilo Rosas Arévalo on 7/10/19.
//  Copyright © 2019 Danilo Rosas Arévalo. All rights reserved.
//

import UIKit


protocol MyDataSendingDelegateProtocol {
  func sendDataToViewController(myData: String)
}

class NameAddViewController: UIViewController {
  
  @IBOutlet weak var textField: UITextField!
  
  var delegate: MyDataSendingDelegateProtocol? = nil
  var newName: String = ""
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  @IBAction func addButton(_ sender: Any) {
    let newName = textField.text!
    print("Data a enviar: "+newName)
    self.delegate?.sendDataToViewController(myData: newName)
    self.navigationController?.popViewController(animated: true)
  }
  
}
