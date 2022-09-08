	//
	//  SearchItemCell.swift
	//  SK-Demo
	//
	//  Created by SK Rewar on 19/04/22.
	//

import UIKit
import Foundation

protocol SearchItemCellDelegate: AnyObject {
	func openSearchDetailsScreen(license: String)
}

class SearchItemCell: UICollectionViewCell {
	
	@IBOutlet weak var searchTextField: TextField!
	@IBOutlet weak var searchButton: Button!
	@IBOutlet weak var heading: Label!
	@IBOutlet weak var editTextView: UIView!
	@IBOutlet weak var searchIcon: UIImageView!
	
	weak var delegate: SearchItemCellDelegate?
	
	override func awakeFromNib() {
		super.awakeFromNib()
	}
	
	public func setUpCell(showKeyboard:Bool = false) {
		heading.style = .style99
		searchTextField.delegate = self
		editTextView.layer.cornerRadius = 12.0
		editTextView.layer.borderWidth = 1.0
		searchButton.style = .style30
		searchButton.setTitle("Search", for: .normal)
		searchTextField.autocapitalizationType = .allCharacters
		if(showKeyboard) {
			self.searchTextField.becomeFirstResponder()
		}
	}
	 
	@IBAction func searchButtonTapped(_ sender: Any) {
		self.delegate?.openSearchDetailsScreen(license: self.searchTextField.text ?? "")
	}
	
}
extension SearchItemCell:UITextFieldDelegate {
	func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		self.delegate?.openSearchDetailsScreen(license: self.searchTextField.text ?? "")
		textField.resignFirstResponder()
		return true
	}
 	func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
		return (textField.text?.count ?? 0) < 12;
	}
}
