//
//  MovieTableViewCell.swift
//  Cinema
//
//  Created by User on 08.03.2021.
//

import UIKit
///
class MovieTableViewCell: UITableViewCell {
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var summaryLabel: UILabel!
    @IBOutlet var ratingLabel: UILabel!
    @IBOutlet var categoriesLabel: UILabel!
    @IBOutlet var posterImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func prepare(movie: Movie){
        posterImageView.image = UIImage(named: movie.imageWide)
        titleLabel.text = movie.title
        summaryLabel.text = movie.summary
        ratingLabel.text = "\(movie.rating)/10"
        categoriesLabel.text = movie.categoriesDiscription
    }
}
