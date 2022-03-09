//
//  MovieDetailsViewController.swift
//  Movies
//
//  Created by Dipika Bari on 09/03/2022.
//

import UIKit

class MovieDetailsViewController: UIViewController {
    
    @IBOutlet weak var reviewsLbl: UILabel!
    
    @IBOutlet weak var descLbl: UILabel!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    
    var viewModel:MovieDetailsViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        guard let viewModel = viewModel else {
            return
        }
 
        titleLbl.text = viewModel.movie.title
        descLbl.text = viewModel.movie.overView
        reviewsLbl.text = "\(viewModel.movie.reviews)"
        if let url = URL(string:"\(EndPoint.imagesBaseUrl)\(viewModel.movie.poster)") {
            posterImageView.loadImageFromUrl(urlString: url.absoluteString)
        }
    }
}
