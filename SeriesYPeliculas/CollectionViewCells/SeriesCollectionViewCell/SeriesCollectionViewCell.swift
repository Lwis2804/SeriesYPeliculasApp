//
//  MoviesCollectionViewCell.swift
//  SeriesYPeliculas
//
//  Created by LUIS GONZALEZ on 21/09/23.
//

import UIKit

class SeriesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var backgroundImage: UIView!{
        didSet{self.backgroundImage.layer.cornerRadius = 10}
    }
    @IBOutlet weak var imageSeriesCell: UIImageView!{
        didSet{self.imageSeriesCell.layer.cornerRadius = 10}
    }
    @IBOutlet weak var lblSeriesTitle: UILabel!
    @IBOutlet weak var lblSeriesEpisodes: UILabel!
    @IBOutlet weak var lblStarsRate: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    
    public func setUpSeriesCollectionView (categoria: CategoriesSeries){
        self.lblSeriesTitle.text = categoria.title ?? ""
        self.lblStarsRate.text = categoria.stars ?? ""
        self.lblSeriesEpisodes.text = categoria.episodes ?? ""
        self.imageSeriesCell.image = UIImage(named: categoria.images[0] )
    }
}
