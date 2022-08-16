//
//  MovieDetailViewController.swift
//  TableList
//
//  Created by valters.steinblums on 16/08/2022.
//

import UIKit
import WebKit

class MovieDetailViewController: UIViewController {

    @IBOutlet weak var movieDetailedTitle: UILabel!
    @IBOutlet weak var movieDetailedYear: UILabel!
    @IBOutlet weak var movieDetailedGenre: UILabel!
    @IBOutlet weak var movieDetailedDescription: UILabel!
    @IBOutlet weak var movieDetailPoster: UIImageView!
    @IBOutlet weak var trailerWebWiev: WKWebView!
    @IBOutlet weak var watchTrailerButton: UIButton!
    
    var movie: Movie?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if movie != nil {
            movieDetailedTitle.text = movie?.title ?? ""
            movieDetailedYear.text = "\(movie?.year ?? 0)"
            movieDetailedGenre.text = movie?.genre ?? ""
            movieDetailPoster.image = UIImage(named: movie?.poster ?? "")
            movieDetailedDescription.text = movie?.description ?? ""
            trailerWebWiev.isHidden = true
        }
    }
    
    @IBAction func trailerButtonPressed(_ sender: UIButton) {
        let url = URL(string: movie?.trailer ?? "")
        let request = URLRequest(url: url!)

        trailerWebWiev.load(request)
        trailerWebWiev.isHidden = false
        watchTrailerButton.isHidden = true
        movieDetailedDescription.isHidden = true
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
