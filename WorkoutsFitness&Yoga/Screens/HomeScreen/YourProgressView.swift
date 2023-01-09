//
//  WCView.swift
//  WorkoutsFitness&Yoga
//
//  Created by AKIN on 8.01.2023.
//

import UIKit

class WCView: UIView {

    private let progressTitle: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Your Progress"
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        return label
    }()
    
    private let workoutsCount: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "14"
        label.textColor = #colorLiteral(red: 0.07923045009, green: 0.249772191, blue: 0.2033925056, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 38, weight: .bold)
        return label
    }()
    
    private let hoursCount: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "672"
        label.textColor = #colorLiteral(red: 0.07923045009, green: 0.249772191, blue: 0.2033925056, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 36, weight: .bold)
        return label
    }()
    
    private let challengesCount: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "8"
        label.textColor = #colorLiteral(red: 0.07923045009, green: 0.249772191, blue: 0.2033925056, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 38, weight: .bold)
        return label
    }()
    
    private let workoutsLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "workouts"
        label.font = UIFont.systemFont(ofSize: 14, weight: .thin)
        return label
    }()
    
    private let complatedLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "complated"
        label.font = UIFont.systemFont(ofSize: 14, weight: .thin)
        return label
    }()
    
    private let hoursSpentLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "hours spent"
        label.font = UIFont.systemFont(ofSize: 14, weight: .thin)
        return label
    }()
    
    private let onTrainingLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "on training"
        label.font = UIFont.systemFont(ofSize: 14, weight: .thin)
        return label
    }()
    
    private let challengesLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "challenges"
        label.font = UIFont.systemFont(ofSize: 14, weight: .thin)
        return label
    }()
    
    private let participatedInLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "participated in"
        label.font = UIFont.systemFont(ofSize: 14, weight: .thin)
        return label
    }()
    
    private let linkingView: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        return view
    }()
    
    private let linkinggView: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        return view
    }()
    
    ///Active Workouts Area
    private let backgroundView: UIView = {
        let view = UIView()
        
        view.backgroundColor = #colorLiteral(red: 0.07923045009, green: 0.249772191, blue: 0.2033925056, alpha: 1)
        view.layer.cornerRadius = 20
        
        let titleLabel = UILabel()
        titleLabel.text = "Active Workouts"
        titleLabel.font = UIFont.systemFont(ofSize: 14, weight: .light)
        titleLabel.textColor = .white
        
        view.addSubview(titleLabel)
        titleLabel.anchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.safeAreaLayoutGuide.leftAnchor, paddingTop: 14, paddingLeft: 20)
        
        let complatedLabel = UILabel()
        complatedLabel.text = "55% Complated"
        complatedLabel.font = UIFont.systemFont(ofSize: 14, weight: .light)
        complatedLabel.textColor = .white
        
        view.addSubview(complatedLabel)
        complatedLabel.anchor(top: titleLabel.bottomAnchor, left: view.safeAreaLayoutGuide.leftAnchor, paddingTop: 14, paddingLeft: 20)
        
        let linkingView = UIView()
        linkingView.backgroundColor = .white
        linkingView.layer.cornerRadius = 4
        
        view.addSubview(linkingView)
        linkingView.anchor(left: view.safeAreaLayoutGuide.leftAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, paddingLeft: 20, paddingBottom: 14, width: 180, height: 6)
        
        let secondlinkingView = UIView()
        secondlinkingView.backgroundColor = #colorLiteral(red: 0.4164677262, green: 0.7222353816, blue: 0.6366669536, alpha: 1)
        secondlinkingView.layer.cornerRadius = 2
        
        view.addSubview(secondlinkingView)
        secondlinkingView.anchor(left: view.safeAreaLayoutGuide.leftAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, paddingLeft: 20, paddingBottom: 14, width: 100, height: 6)
        
        let button = UIButton()
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.setTitle("Continue", for: .normal)
        button.setTitleColor(#colorLiteral(red: 0.07923045009, green: 0.249772191, blue: 0.2033925056, alpha: 1), for: .normal)
        button.backgroundColor = .white
        button.layer.cornerRadius = 30
        
        view.addSubview(button)
        button.anchor(top: titleLabel.topAnchor, left: linkingView.rightAnchor, bottom: linkingView.bottomAnchor, right: view.safeAreaLayoutGuide.rightAnchor, paddingLeft: 8, paddingRight: 20)
        
        return view
    }()
    
    ///Third Line------------------------------------------------
    
    private let todayActivityTitle: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Today Activity"
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        return label
    }()
    
    private let view: UIView = {
        let view = UIView()
        
        view.backgroundColor = #colorLiteral(red: 0.9489933848, green: 0.9490416646, blue: 0.9454064965, alpha: 1)
        view.layer.shadowColor = UIColor.lightGray.cgColor
        view.layer.shadowOpacity = 0.3
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowRadius = 5
        view.layer.cornerRadius = 20
        
        let hoursImage = UIImageView()
        hoursImage.image = UIImage(systemName: "stopwatch")
        hoursImage.tintColor = #colorLiteral(red: 0.07923045009, green: 0.249772191, blue: 0.2033925056, alpha: 1)
        
        let hourslabel = UILabel()
        hourslabel.textAlignment = .center
        hourslabel.text = "2 hours"
        hourslabel.font = UIFont.systemFont(ofSize: 14, weight: .thin)
        
        view.addSubview(hourslabel)
        hourslabel.anchor(left: view.safeAreaLayoutGuide.leftAnchor, bottom: view.bottomAnchor, paddingLeft: 34, paddingBottom: 4)
        
        view.addSubview(hoursImage)
        hoursImage.centerX(inView: hourslabel)
        hoursImage.setDimensions(height: 36, width: 36)
        hoursImage.anchor(top: view.safeAreaLayoutGuide.topAnchor, bottom: hourslabel.topAnchor,
                          paddingTop: 10, paddingBottom: 4)
        
        let linkingView = UIView()
        linkingView.backgroundColor = .gray
        
        view.addSubview(linkingView)
        linkingView.anchor(top: hoursImage.topAnchor, left: hourslabel.rightAnchor,
                           bottom: hourslabel.bottomAnchor, paddingTop: 14, paddingLeft: 32,
                           paddingBottom: 14, width: 1)
        
        let heatImage = UIImageView()
        heatImage.image = UIImage(systemName: "flame")
        heatImage.tintColor = #colorLiteral(red: 0.07923045009, green: 0.249772191, blue: 0.2033925056, alpha: 1)
        
        let heatlabel = UILabel()
        heatlabel.textAlignment = .center
        heatlabel.text = "365 kcal"
        heatlabel.font = UIFont.systemFont(ofSize: 14, weight: .thin)
        
        view.addSubview(heatlabel)
        heatlabel.centerY(inView: hourslabel)
        heatlabel.anchor(left: linkingView.rightAnchor, paddingLeft: 32)
        
        view.addSubview(heatImage)
        heatImage.centerX(inView: heatlabel)
        heatImage.anchor(top: view.safeAreaLayoutGuide.topAnchor,
                          bottom: heatlabel.topAnchor,
                          paddingTop: 12, paddingBottom: 4)
        heatImage.setDimensions(height: 34, width: 28)
        
        
        let linkinggView = UIView()
        linkinggView.backgroundColor = .gray
        
        view.addSubview(linkinggView)
        linkinggView.anchor(top: heatImage.topAnchor, left: heatlabel.rightAnchor,
                           bottom: heatlabel.bottomAnchor, paddingTop: 14, paddingLeft: 28,
                           paddingBottom: 14, width: 1)
        
        let destinationImage = UIImageView()
        destinationImage.image = UIImage(systemName: "figure.run")
        destinationImage.tintColor = #colorLiteral(red: 0.07923045009, green: 0.249772191, blue: 0.2033925056, alpha: 1)
        
        let destinationlabel = UILabel()
        destinationlabel.textAlignment = .center
        destinationlabel.text = "2,4 km"
        destinationlabel.font = UIFont.systemFont(ofSize: 14, weight: .thin)
        
        view.addSubview(destinationlabel)
        destinationlabel.centerY(inView: heatlabel)
        destinationlabel.anchor(left: linkinggView.rightAnchor, paddingLeft: 32)
        
        view.addSubview(destinationImage)
        destinationImage.centerX(inView: destinationlabel)
        destinationImage.anchor(top: view.safeAreaLayoutGuide.topAnchor,
                                bottom: destinationlabel.topAnchor,
                                paddingTop: 12, paddingBottom: 4)
        destinationImage.setDimensions(height: 34, width: 28)
        
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
     
        addSubview(progressTitle)
        progressTitle.anchor(top: safeAreaLayoutGuide.topAnchor,
                             left: safeAreaLayoutGuide.leftAnchor)
        
        ///Workouts Complated Section
        addSubview(workoutsCount)
        workoutsCount.centerX(inView: progressTitle)
        workoutsCount.anchor(top: progressTitle.bottomAnchor, paddingTop: 12)
        
        let stack = UIStackView(arrangedSubviews: [workoutsLabel, complatedLabel])
        stack.axis = .vertical
        
        addSubview(stack)
        stack.centerX(inView: progressTitle)
        stack.anchor(top: workoutsCount.bottomAnchor, paddingTop: 8)
        
        addSubview(linkingView)
        linkingView.anchor(top: workoutsCount.topAnchor, left: stack.rightAnchor,
                           bottom: stack.bottomAnchor, paddingTop: 18, paddingLeft: 24,
                           paddingBottom: 12, width: 1)
        
        ///Hours Spent On Training
        addSubview(hoursCount)
        hoursCount.centerY(inView: workoutsCount)
        hoursCount.anchor(left: workoutsCount.rightAnchor, paddingLeft: 68)
        
        let secondStack = UIStackView(arrangedSubviews: [hoursSpentLabel, onTrainingLabel])
        secondStack.axis = .vertical
        
        addSubview(secondStack)
        secondStack.centerY(inView: stack)
        secondStack.centerX(inView: hoursCount)
        
        addSubview(linkinggView)
        linkinggView.anchor(top: hoursCount.topAnchor, left: secondStack.rightAnchor,
                           bottom: secondStack.bottomAnchor, paddingTop: 18, paddingLeft: 24,
                           paddingBottom: 12, width: 1)
        
        ///Challenges Participated In
        addSubview(challengesCount)
        challengesCount.centerY(inView: hoursCount)
        challengesCount.anchor(left: hoursCount.rightAnchor, paddingLeft: 78)
        
        let thirdStack = UIStackView(arrangedSubviews: [challengesLabel, participatedInLabel])
        thirdStack.axis = .vertical
        
        addSubview(thirdStack)
        thirdStack.centerY(inView: secondStack)
        thirdStack.centerX(inView: challengesCount)
        
        ///Green area
        addSubview(backgroundView)
        backgroundView.anchor(top: thirdStack.bottomAnchor, left: safeAreaLayoutGuide.leftAnchor,
                              right: safeAreaLayoutGuide.rightAnchor, paddingTop: 20, height: 86)
        
        addSubview(todayActivityTitle)
        todayActivityTitle.anchor(top: backgroundView.bottomAnchor,
                                  left: safeAreaLayoutGuide.leftAnchor, paddingTop: 20)
        
        addSubview(view)
        view.anchor(top: todayActivityTitle.bottomAnchor, left: safeAreaLayoutGuide.leftAnchor,
                              right: safeAreaLayoutGuide.rightAnchor, paddingTop: 10, height: 86)
        
        
    }

}
