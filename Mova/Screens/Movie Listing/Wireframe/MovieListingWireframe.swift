//
//  MovieListingWireframe.swift
//  Mova
//
//  Created by Abhishek kapoor on 03/09/22.
//

import UIKit

protocol MovieListingWireframe{
}
class MovieListingWireframeImpl:Wireframe, MovieListingWireframe {
	static func push(inNavigationController
					 navigationController:UINavigationController
	) {
		let wireframe = MovieListingWireframeImpl(navigationController: navigationController)

		let view = NoBrokerOnBoardingViewController.instantiateFromStoryBoard(appStoryBoard: .MovieListingViewController)

		let presenter = 
	}
}
