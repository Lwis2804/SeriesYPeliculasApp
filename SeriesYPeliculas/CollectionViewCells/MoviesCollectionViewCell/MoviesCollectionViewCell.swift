

import UIKit

class MoviesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var generalBackgorundImage: UIView!{
        didSet{self.generalBackgorundImage.layer.cornerRadius = 10}
    }
    @IBOutlet weak var movieImageCell: UIImageView!{
        didSet{self.movieImageCell.layer.cornerRadius = 10}
    }
    @IBOutlet weak var lblMovieTitle: UILabel!
    @IBOutlet weak var lblMovieDuracion: UILabel!
    @IBOutlet weak var lblStarsRate: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    public func setUpMoviesCollectionView (categoria: Categories){
        self.lblMovieTitle.text = categoria.title ?? ""
        self.lblStarsRate.text = categoria.stars ?? ""
        self.lblMovieDuracion.text = categoria.time ?? ""
        self.movieImageCell.image = UIImage(named: categoria.images[0] )
    }

}
