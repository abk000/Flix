//
//  DetailViewController.swift
//  Flix
//
//  Created by Arslan Saeed on 10/8/18.
//  Copyright © 2018 Arslan Saeed. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var backdropImageView: UIImageView!
    
    @IBOutlet weak var posterImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var releaseDateLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var movie: [String: Any]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let movie = movie{
            titleLabel.text = movie["title"] as? String
            releaseDateLabel.text = movie["release_date"] as? String
            descriptionLabel.text = movie["overview"] as? String
            let backdroppathString = movie["backdrop_path"] as! String
            let posterpathString = movie["poster_path"] as! String
            let baseURLString = "https://image.tmdb.org/t/p/w500"
            
            let backdropURL = URL(string: baseURLString + backdroppathString)!
            backdropImageView.af_setImage(withURL: backdropURL)
            
            let posterpathURL = URL(string: baseURLString + posterpathString)!
            posterImageView.af_setImage(withURL: posterpathURL)
            
        }
        // Do any additional setup after loading the view.
    }
    
}
