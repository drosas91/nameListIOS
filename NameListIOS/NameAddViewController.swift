//
//  NameAddViewController.swift
//  NameListIOS
//
//  Created by Danilo Rosas Arévalo on 7/10/19.
//  Copyright © 2019 Danilo Rosas Arévalo. All rights reserved.
//

import UIKit

class NameAddViewController: UIViewController {
  
  @IBOutlet weak var textField: UITextField!
  @IBOutlet weak var textFieldNameEntered: UILabel!
  
  var newName: String = ""
  
  @IBAction func AddButton(_ sender: Any) {
    print("Inside AddButton action")
    self.newName = textField.text!
//    performSegue(withIdentifier: "segue_id", sender: self)
    textFieldNameEntered.text = "Name Entered: "+self.newName
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
  }
  
  //override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
  //  let vc = segue.destination as! ViewController
  //  vc.receibedName = self.newName
  //}
  
}

extension NameAddViewController: UITextFieldDelegate {
  
  func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
    return true
  }
  
  func textFieldDidBeginEditing(_ textField: UITextField) {
    print("Begin editing")
  }
  
  func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    
    print(textField.text)
    return true
  }
}
