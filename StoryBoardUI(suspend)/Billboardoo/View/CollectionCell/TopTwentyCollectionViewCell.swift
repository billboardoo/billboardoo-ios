//
//  TopTwentyCollectionViewCell.swift
//  Billboardoo
//
//  Created by yongbeomkwak on 2022/07/17.
//

import UIKit

class TopTwentyCollectionViewCell: UICollectionViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        print("Called Collection View")
    }
    // - MARK: Member variable
    var url:String = ""
    
    
    
    // - MARK: IBOUT
    @IBOutlet var ImageView: UIImageView!
    //@IBOutlet var rankLabel: UILabel!
    //@IBOutlet var changeLabel: UILabel!
    //@IBOutlet var titleLabel: UILabel!
    //@IBOutlet var artistLabel: UILabel!
    
    @IBAction func playButton(_ sender: UIButton) {
        
    }
    
    @IBAction func addList(_ sender: UIButton) {
    
    }
    
    // - MARK: Function
    
    public func configure(with model:SimpleViwer)
    {
       // self.titleLabel.text = model.title
       // self.rankLabel.text = "0"
        self.url = model.image
        //self.artistLabel.text = model.artist
        do
        {
            let data = try Data(contentsOf: URL(string: model.url)!)
            print(url)
            self.ImageView.image = UIImage(data: data)
            
        }
        catch
        {
            print(error.localizedDescription)
        }
        
    }
    
}
