//
//  ViewController.swift
//  WorkoutsFitness&Yoga
//
//  Created by AKIN on 8.01.2023.
//

import UIKit

private let reuseIdentifier = "HomeCell"

final class HomeController: UITableViewController {
    
    // MARK: - Properties
    
    private lazy var headerView = HomeHeaderView(frame: .init(x: 0, y: 0, width: view.frame.width, height: 500))
    private let footerView = HomeFooterView()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let defaultOffset = view.safeAreaInsets.top
        let offset = scrollView.contentOffset.y + defaultOffset
        
        navigationController?.navigationBar.transform = .init(translationX: 0, y: min(0, -offset))
    }

    // MARK: - Helpers
    
    func configureUI() {
        
        view.backgroundColor = #colorLiteral(red: 0.9489933848, green: 0.9490416646, blue: 0.9454064965, alpha: 1)
        
        tableView.tableHeaderView = headerView
        tableView.register(HomeCell.self, forCellReuseIdentifier: reuseIdentifier)
        tableView.tableFooterView = UIView()
        tableView.contentInsetAdjustmentBehavior = .never
        tableView.rowHeight = 64
        tableView.backgroundColor = #colorLiteral(red: 0.9489933848, green: 0.9490416646, blue: 0.9454064965, alpha: 1)
        
        tableView.tableFooterView = footerView
        footerView.frame = .init(x: 0, y: 0, width: view.frame.width, height: 100)
    }
    

}

