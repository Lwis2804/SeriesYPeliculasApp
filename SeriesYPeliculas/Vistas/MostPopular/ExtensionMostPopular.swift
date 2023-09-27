

import UIKit

extension MostPopularViewController : UICollectionViewDelegate & UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collectionView.tag == 12 ? arrCategories.count : arrCategoriesSeries.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView.tag == 12 {
            let cCell = collectionView.dequeueReusableCell(withReuseIdentifier: MpMoviesCollectionViewCell.identifier, for: indexPath) as? MpMoviesCollectionViewCell ?? MpMoviesCollectionViewCell()
            cCell.setUpMoviesCollectionViewMp(categoria: arrCategories[indexPath.row])
            return cCell
        }else{
            let cCell = collectionView.dequeueReusableCell(withReuseIdentifier: MpSeriesCollectionViewCell.identifier, for: indexPath) as? MpSeriesCollectionViewCell ?? MpSeriesCollectionViewCell()
            cCell.setUpSeriesCollectionViewMp(categoria: arrCategoriesSeries[indexPath.row])
            return cCell
        }
    }
    
    
    
    
    
}


