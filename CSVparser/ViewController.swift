//
//  ViewController.swift
//  CSVparser
//
//  Created by sdnmacmini32 on 12/12/18.
//  Copyright © 2018 sdnmacmini32. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: CSVParse Btn Action
    @IBAction func btnparse(_ sender: Any) {
        do {
            guard let path = Bundle.main.path(forResource: "categories", ofType: "csv") else {
                fatalError("XLSX file corrupted or does not exist")
            }
            let csv = try  CSV(name: path)
            csv.enumerateAsDict { dict in
                  print(dict["name"] ?? "")
                  print(dict["type"] ?? "")
            }
        } catch {
            // Catch errors or something
        }
    }
}

