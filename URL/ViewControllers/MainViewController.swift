//
//  ViewController.swift
//  URL
//
//  Created by Евгений  Гравдин  on 12/12/2022.
//

import UIKit

class MainViewController: UIViewController {

    let linkWiki = "https://wikimedia.org/api/rest_v1/metrics/pageviews/per-article/en.wikipedia/all-access/all-agents/Tiger_King/daily/20210901/20210930"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchWiKi()
    }

    private func fetchWiKi() {
        guard let url = URL(string: linkWiki) else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data else {
                print(error?.localizedDescription ?? "no error localized")
                return
            }

            do {
                let wikiItems = try JSONDecoder().decode(WiKiitems.self, from: data)
                print(wikiItems)
            } catch let error {
                print(error)
            }
        }.resume()
    }
}
