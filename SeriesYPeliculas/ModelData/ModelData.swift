

import UIKit

var arrSndCategories: [Categories] = []

var Scategory = Categories()
var Scategory2 = Categories()
var Scategory3 = Categories()
var Scategory4 = Categories()
var Scategory5 = Categories()

func returnDataOnCategoriesToSecndCV() -> [Categories] {
    var arrFinalSnd: [Categories] = []
    Scategory.title = "Spiderman into the Spiderverse"
    Scategory.stars = "5"
    Scategory.time = "1:30 min"
    Scategory.images.append("spiderman")
    
    arrFinalSnd.append(Scategory)
    
    Scategory2.title = "Mario The Movie"
    Scategory2.stars = "4.2"
    Scategory2.time = "2:30 min"
    Scategory2.images.append("mario")
    
    arrFinalSnd.append(Scategory2)
    
    Scategory3.title = "Babylon"
    Scategory3.stars = "3.8"
    Scategory3.time = "1:50 min"
    Scategory3.images.append("babylon")
    
    arrFinalSnd.append(Scategory3)
    
    Scategory4.title = "Openheimer"
    Scategory4.stars = "5"
    Scategory4.time = "2:45 min"
    Scategory4.images.append("openheimer")
    
    arrFinalSnd.append(Scategory4)
    
    Scategory5.title = "Barbie"
    Scategory5.stars = "4.5"
    Scategory5.time = "2:20 min"
    Scategory5.images.append("barbie")
    
    arrFinalSnd.append(Scategory5)

    return arrFinalSnd
}


