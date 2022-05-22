//
//  MenuItemDetailViewController.swift
//  OrderApp
//
//  Created by Yusuke K on 2022-05-20.
//

import UIKit

@MainActor
class MenuItemDetailViewController: UIViewController {
    let menuItem: MenuItem
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var detailTextLabel: UILabel!
    @IBOutlet var addToOrderButton: UIButton!
    
    init?(coder: NSCoder, menuItem: MenuItem) {
        self.menuItem = menuItem
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
 
    @IBAction func orderButtonTapped(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5, delay: 0,
               usingSpringWithDamping: 0.7, initialSpringVelocity: 0.1,
               options: [], animations: {
                self.addToOrderButton.transform =
                   CGAffineTransform(scaleX: 2.0, y: 2.0)
                self.addToOrderButton.transform =
                   CGAffineTransform(scaleX: 1.0, y: 1.0)
            }, completion: nil)
        
        MenuController.shared.order.menuItems.append(menuItem)
    }
    
    func updateUI() {
        nameLabel.text = menuItem.name
        priceLabel.text = menuItem.price.formatted(.currency(code: "usd"))
        detailTextLabel.text = menuItem.detailText
    }
}
