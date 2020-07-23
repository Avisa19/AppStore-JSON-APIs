//
//  SearchResultCell.swift
//  AppStoreV1.1
//
//  Created by Avisa Poshtkouhi on 7/21/20.
//  Copyright © 2020 Avisa Poshtkouhi. All rights reserved.
//

import SwiftUI
import SDWebImage

class SearchResultCell: UICollectionViewCell {
    
    var appResult: Result? {
        didSet {
            guard let appResult = appResult else { return }
            nameLabel.text = appResult.trackName
            categoryLabel.text = appResult.primaryGenreName
            ratingLabel.text = "Rating: \(String(format: "%.1f", appResult.averageUserRating ?? 0))"
            guard let url = URL(string: appResult.artworkUrl100) else { return }
            setImgageWithWebImage(url, appResult)
        }
    }
    
    fileprivate func setImgageWithWebImage(_ url: URL, _ appResult: Result) {
        iconImageView.sd_setImage(with: url)
        
        // Load screenShots
        screenShotOneImageView.sd_setImage(with: URL(string: appResult.screenshotUrls[0]))
        
        if appResult.screenshotUrls.count > 1 {
            screenShotOneImageView.sd_setImage(with: URL(string: appResult.screenshotUrls[1]))
        }
        if appResult.screenshotUrls.count > 2 {
            screenShotOneImageView.sd_setImage(with: URL(string: appResult.screenshotUrls[2]))
        }
    }
    
    
    fileprivate let iconImageView = ASImageView()
    
    fileprivate let nameLabel = ASLabel(title: "Apps Name")
    
    fileprivate let categoryLabel = ASLabel(title: "Photos & Videos")
    
    fileprivate let ratingLabel = ASLabel(title: "9.26M")
    
    fileprivate let getButton = ASButton(title: "GET")
    
    fileprivate lazy var screenShotOneImageView = self.createScreenShotImageView()
    fileprivate lazy var screenShotTwoImageView = self.createScreenShotImageView()
    fileprivate lazy var screenShotThreeImageView = self.createScreenShotImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupViews()
    }
    
    // create screenShot
    func createScreenShotImageView() -> UIImageView {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 8
        imageView.clipsToBounds = true
        imageView.layer.borderWidth = 0.5
        imageView.layer.borderColor = UIColor.init(white: 0.5, alpha: 0.2).cgColor
        imageView.contentMode = .scaleAspectFill
        return imageView
    }
    
    fileprivate func setupViews() {
        
        let lablesStackView = ASStackView(views: nameLabel, categoryLabel, ratingLabel)
        
        
        let infoTopStackView = UIStackView(arrangedSubviews: [
            iconImageView,
            lablesStackView,
            getButton
        ])
        
        infoTopStackView.spacing = 12
        infoTopStackView.alignment = .center
        
        let screenShotsStack = UIStackView(arrangedSubviews: [
            screenShotOneImageView, screenShotTwoImageView, screenShotThreeImageView
        ])
        
        screenShotsStack.axis = .horizontal
        screenShotsStack.distribution = .fillEqually
        screenShotsStack.spacing = 8
        
        
        let overallStack = ASStackView(views: infoTopStackView, screenShotsStack, space: 8)
        
        addSubview(overallStack)
        
        overallStack.translatesAutoresizingMaskIntoConstraints = false
        overallStack.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
        overallStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        overallStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        overallStack.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8).isActive = true
      
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

struct SearchResultCell_Previews: PreviewProvider {
    static var previews: some View {
        Container().edgesIgnoringSafeArea(.all)
    }
}
