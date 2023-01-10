//
//  ProfileCell.swift
//  WorkoutsFitness&Yoga
//
//  Created by AKIN on 8.01.2023.
//

import UIKit

final class HomeCell: UITableViewCell {

    // MARK: - Properties
    
    private let cellView: UIView = {
        let view = UIView()
        
        let titleLabel = UILabel()
        titleLabel.text = "Next Workouts"
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        
        view.addSubview(titleLabel)
        titleLabel.anchor(top: view.topAnchor, left: view.leftAnchor)
        
        let seeAllLabel = UILabel()
        seeAllLabel.text = "See All"
        seeAllLabel.textAlignment = .center
        seeAllLabel.textColor = .gray
        seeAllLabel.font = UIFont.systemFont(ofSize: 13, weight: .light)
        
        view.addSubview(seeAllLabel)
        seeAllLabel.anchor(top: view.topAnchor, right: view.rightAnchor)
        
        let posterImage = UIImageView()
        posterImage.image = UIImage(named: "yoga")
        posterImage.clipsToBounds = true
        posterImage.contentMode = .scaleAspectFill
        posterImage.layer.cornerRadius = 20
        
        view.addSubview(posterImage)
        posterImage.anchor(top: titleLabel.bottomAnchor,
                           left: view.safeAreaLayoutGuide.leftAnchor,
                           bottom: view.safeAreaLayoutGuide.bottomAnchor,
                           right: view.safeAreaLayoutGuide.rightAnchor, paddingTop: 10, paddingBottom: 20)
        
        let posterLabel = UILabel()
        posterLabel.text = "Strecthing"
        posterLabel.textAlignment = .center
        posterLabel.textColor = .white
        posterLabel.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        
        view.addSubview(posterLabel)
        posterLabel.anchor(left: posterImage.leftAnchor, bottom: posterImage.bottomAnchor,
                           paddingLeft: 14, paddingBottom: 14)
        
        return view
    }()
    
    // MARK: - Lifecycle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Helpers
    
    func configureUI() {
        
        backgroundColor = #colorLiteral(red: 0.9489933848, green: 0.9490416646, blue: 0.9454064965, alpha: 1)
        
        addSubview(cellView)
        cellView.anchor(top: safeAreaLayoutGuide.topAnchor,
                        left: safeAreaLayoutGuide.leftAnchor,
                        bottom: safeAreaLayoutGuide.bottomAnchor,
                        right: safeAreaLayoutGuide.rightAnchor,
                        paddingLeft: 24, paddingRight: 24)
    }
}
