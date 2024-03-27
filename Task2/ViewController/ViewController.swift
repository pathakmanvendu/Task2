//
//  ViewController.swift
//  Task2
//
//  Created by manvendu pathak  on 22/03/24.
//

import UIKit

class ViewController: UIViewController {
    
// MARK: - IBOutlets
    
    @IBOutlet weak var rectangle612: UIView!
    @IBOutlet weak var rectangle614: UIView!
    @IBOutlet weak var checkButton: UIButton!
    @IBOutlet weak var group314: UIView!
    @IBOutlet weak var stripeRectangle: UIView!
    @IBOutlet weak var payButton: UIButton!
    @IBOutlet weak var razorpayRectangle: UIView!
    @IBOutlet weak var rectangle615: UIView!
    
    
// MARK: - Variables
    var isChecked = false
    
   
//MARK: - functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
    }
    
    private func setupUI() {
        rectangle612.giveBorder(cornerRadious: 8, borderWidth: 1, borderColor: "BorderColor")
        rectangle614.giveCornerRadious(cornerRadious: 8)
        rectangle615.giveCornerRadious(cornerRadious: 8)
        group314.giveBorder(cornerRadious: 8, borderWidth: 1, borderColor: "BorderColor")
        payButton.giveCornerRadious(cornerRadious: 8)
        razorpayRectangle.giveBorder(cornerRadious: 8, borderWidth: 1, borderColor: "BorderColor")
        stripeRectangle.giveBorder(cornerRadious: 8, borderWidth: 1, borderColor: "BorderColor")
    }
    
//MARK: - IBActions
    
    @IBAction func checkBoxPressed(_ sender: UIButton) {
        isChecked.toggle()
        let imageName = isChecked ? "checkmark.square.fill" : "square"
        let image = UIImage(systemName: imageName)
        checkButton.setImage(image, for: .normal)
    }
    
    @IBAction func seeMorePressed(_ sender: UIButton) {
        let vc = ViewController2()
        if let sheet = vc.sheetPresentationController{
            sheet.detents = [.medium()]
            sheet.prefersGrabberVisible = true
            sheet.preferredCornerRadius = 20
            sheet.prefersScrollingExpandsWhenScrolledToEdge = false
            sheet.largestUndimmedDetentIdentifier = .medium
        }
        self.present(vc, animated: true, completion: nil)
    }
}


