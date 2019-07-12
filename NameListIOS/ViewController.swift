//
//  ViewController.swift
//  NameListIOS
//
//  Created by Danilo Rosas Arévalo on 7/10/19.
//  Copyright © 2019 Danilo Rosas Arévalo. All rights reserved.
//

import UIKit


class ViewController: UIViewController, MyDataSendingDelegateProtocol {
  
  
  @IBOutlet weak var newTable: UITableView!
  
  var names = ["Name01", "Name02", "Name03", "Name04"]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    newTable.delegate = self
    newTable.dataSource = self
  }
  
  // Delegate Method
  func sendDataToViewController(myData: String) {
    print("Data recibida: "+myData)
    names.append(myData)
    newTable.reloadData()
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let secondVC: NameAddViewController = segue.destination as! NameAddViewController
    secondVC.delegate = self
  }
  
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return names.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let name = names[indexPath.row]
    let cell = newTable.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
    
    cell.nameLabel.text = name
    
    return cell
  }
}
