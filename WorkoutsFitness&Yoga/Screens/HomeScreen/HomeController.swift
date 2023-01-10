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
    
    private lazy var headerView = HomeHeaderView(frame: .init(x: 0, y: 0, width: view.frame.width, height: 375))
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
        
        tableView.separatorStyle = .none
        tableView.tableHeaderView = headerView
        tableView.register(HomeCell.self, forCellReuseIdentifier: reuseIdentifier)
        tableView.tableFooterView = UIView()
        tableView.rowHeight = 300
        tableView.backgroundColor = #colorLiteral(red: 0.9489933848, green: 0.9490416646, blue: 0.9454064965, alpha: 1)
        
        tableView.tableFooterView = footerView
        footerView.frame = .init(x: 0, y: 0, width: view.frame.width, height: 100)
    }
}

// MARK: - UITableViewDataSource

extension HomeController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->     UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! HomeCell
        cell.selectionStyle = .none
        return cell
    }
}

 // MARK: - UITableViewDelegate

extension HomeController {
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return UIView()
    }
}
