  //
//  MovieDetailViewController.swift
//  Cinema
//
//  Created by User on 08.03.2021.
//

import UIKit

class MovieDetailViewController: UIViewController {
    @IBOutlet weak var bigPosterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var categoriesLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var summaryTextView: UITextView!
    
    var movie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bigPosterImageView.image = UIImage(named: movie.imageSmall)
        titleLabel.text = movie.title
        ratingLabel.text = "\(movie.rating)/10"
        summaryTextView.text = movie.summary
        categoriesLabel.text = movie.duration
        durationLabel.text = movie.duration
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
