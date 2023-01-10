//
//  ProfileHeaderView.swift
//  WorkoutsFitness&Yoga
//
//  Created by AKIN on 8.01.2023.
//

import UIKit

final class HomeHeaderView: UIView {

    // MARK: - Properties
    
    ///First Line-------------------------------------------------------------
    private let hiLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Hi, "
        label.font = UIFont.systemFont(ofSize: 22, weight: .light)
        return label
    }()
     
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Oğuzhan"
        label.font = UIFont.systemFont(ofSize: 22, weight: .regular)
        return label
    }()
    
    private let profileImageView: UIImageView = {
        let iv = UIImageView()
        iv.clipsToBounds = true
        iv.contentMode = .scaleAspectFill
        iv.image = UIImage(named: "oguzhan")
        return iv
    }()
    
    ///Second Line-------------------------------------------------------------
    
    private let wcView: WCView = {
        let view = WCView()
        return view
    }()
    
    // MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Helpers
    
    func configureUI() {
        
        let stack = UIStackView(arrangedSubviews: [hiLabel, nameLabel])
        stack.axis = .horizontal
        stack.spacing = 2
        
        addSubview(stack)
        stack.anchor(top: safeAreaLayoutGuide.topAnchor, left: safeAreaLayoutGuide.leftAnchor, paddingTop: -40, paddingLeft: 20)
        
        profileImageView.setDimensions(height: 72, width: 72)
        profileImageView.layer.cornerRadius = 72 / 2
        
        addSubview(profileImageView)
        profileImageView.centerY(inView: stack)
        profileImageView.anchor(right: safeAreaLayoutGuide.rightAnchor, paddingRight: 20)
        
        addSubview(wcView)
        wcView.anchor(top: profileImageView.bottomAnchor, left: safeAreaLayoutGuide.leftAnchor,
                      right: safeAreaLayoutGuide.rightAnchor, paddingTop: 30, paddingLeft: 20,
                      paddingRight: 20)
        
    }

}
