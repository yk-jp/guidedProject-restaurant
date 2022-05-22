//
//  OrderConfirmationViewController.swift
//  OrderApp
//
//  Created by Yusuke K on 2022-05-22.
//

import UIKit

class OrderConfirmationViewController: UIViewController {

    let minutesToPrepare: Int
    
    @IBOutlet var confirmationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        confirmationLabel.text = "Thank you for your order! Your wait time is approximately \(minutesToPrepare) minutes."
    }
    
    
    init?(coder: NSCoder, minutesToPrepare: Int) {
        self.minutesToPrepare = minutesToPrepare
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   
}
