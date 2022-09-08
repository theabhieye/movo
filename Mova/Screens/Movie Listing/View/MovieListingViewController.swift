//
//  MovieLisingViewController.swift
//  Mova
//
//  Created by Abhishek kapoor on 03/09/22.
//

import UIKit

class MovieListingViewController: UIViewController {

	@IBOutlet weak var movieCollectionView: UICollectionView!
	override func viewDidLoad() {
        super.viewDidLoad()
		self.movieCollectionView.delegate = self
		self.movieCollectionView.dataSource = self
		self.movieCollectionView.dequeueReusableCell(withReuseIdentifier: <#T##String#>, for: <#T##IndexPath#>)
	}

}
ex UICollectionViewDelegate
