//
//  DetailViewController.swift
//  TableList
//
//  Created by valters.steinblums on 12/08/2022.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var trackImageView: UIImageView!
    @IBOutlet weak var trackNameLabel: UILabel!
    
    var song: Song?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if song != nil {
            trackImageView.image = UIImage(named: song?.cover ?? "")
            trackNameLabel.text = song?.track ?? "" + "\(song?.album ?? "")"
        }
    }

}
