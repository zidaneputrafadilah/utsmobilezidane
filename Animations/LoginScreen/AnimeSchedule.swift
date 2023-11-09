//
//  AnimeSchedule.swift
//  LoginScreen
//
//  Created by Zidane Putra Fadilah on 09/11/23.
//

import UIKit

struct AnimeSchedule {
    let day: String
    let animeList: [String]
}

class AnimeScheduleViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    let scheduleData: [AnimeSchedule] = [
        AnimeSchedule(day: "Senin", animeList: ["Anime A", "Anime B", "Anime C"]),
        AnimeSchedule(day: "Selasa", animeList: ["Anime X", "Anime Y", "Anime Z"]),
        // Tambahkan data jadwal anime untuk hari-hari lainnya
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    // MARK: - UITableViewDataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return scheduleData.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return scheduleData[section].animeList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimeCell", for: indexPath)
        let animeTitle = scheduleData[indexPath.section].animeList[indexPath.row]
        cell.textLabel?.text = animeTitle
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return scheduleData[section].day
    }
}
