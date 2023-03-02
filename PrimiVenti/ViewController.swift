//
//  ViewController.swift
//  PrimiVenti
//
//  Created by Juan Ramirez on 19.02.23.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet var tableView: UITableView!
  
  var numbers = [String]()

  override func viewDidLoad() {
    super.viewDidLoad()
    
    for i in 1...100 {
        numbers.append(String(i))
    }
    
    tableView.delegate = self
    tableView.dataSource = self
  }


}

extension ViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    print("you click me")
  }
}

extension ViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return numbers.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    
    cell.textLabel?.text = numbers[indexPath.row]
    
    return cell
  }
  
  
}
