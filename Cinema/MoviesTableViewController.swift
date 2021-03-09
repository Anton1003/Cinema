//
//  MoviesTableViewController.swift
//  Cinema
//
//  Created by User on 08.03.2021.
//

import UIKit
///
class MoviesTableViewController: UITableViewController {
    var movies: [Movie] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()

//        addItem()
    }

    override func prepare(for segue: UIStoryboardSegue, sender _: Any?) {
        if let vc = segue.destination as? MovieDetailViewController {
            guard let row = tableView.indexPathForSelectedRow?.row else { return }

            let movie = movies[row]
            vc.movie = movie
        }
    }

//    func addItem() {
//        movies.append(Movie(title: "Deadpool", categories: "action", release: "1h43min", rating: 9.2, summary: "some about Deadpool", imageName: "dead"))
//        movies.append(Movie(title: "Deadpool", categories: "action", release: "1h43min", rating: 9.2, summary: "some about Deadpool", imageName: "dead"))
//        movies.append(Movie(title: "Deadpool", categories: "action", release: "1h43min", rating: 9.2, summary: "some about Deadpool", imageName: "dead"))
//        movies.append(Movie(title: "Deadpool", categories: "action", release: "1h43min", rating: 9.2, summary: "some about Deadpool", imageName: "dead"))
//        movies.append(Movie(title: "Deadpool", categories: "action", release: "1h43min", rating: 9.2, summary: "some about Deadpool", imageName: "dead"))
//        movies.append(Movie(title: "Deadpool", categories: "action", release: "1h43min", rating: 9.2, summary: "some about Deadpool", imageName: "dead"))
//        movies.append(Movie(title: "Deadpool", categories: "action", release: "1h43min", rating: 9.2, summary: "some about Deadpool", imageName: "dead"))
//        movies.append(Movie(title: "Deadpool", categories: "action", release: "1h43min", rating: 9.2, summary: "some about Deadpool", imageName: "dead"))
//        movies.append(Movie(title: "Deadpool", categories: "action", release: "1h43min", rating: 9.2, summary: "some about Deadpool", imageName: "dead"))
//        movies.append(Movie(title: "Deadpool", categories: "action", release: "1h43min", rating: 9.2, summary: "some about Deadpool", imageName: "dead"))
//        movies.append(Movie(title: "Deadpool", categories: "action", release: "1h43min", rating: 9.2, summary: "some about Deadpool", imageName: "dead"))
//        movies.append(Movie(title: "Deadpool", categories: "action", release: "1h43min", rating: 9.2, summary: "some about Deadpool", imageName: "dead"))
//    }

    func loadData() {
        guard let jsonURL = URL(string: "https://api.themoviedb.org/4/list/1?api_key=1383ccd603d60a04c2085457ec3c9e0d"), let data = try? Data(contentsOf: jsonURL) else { return }
        do {
            movies = try JSONDecoder().decode([Movie].self, from: data)
        } catch {
            print(error.localizedDescription)
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in _: UITableView) -> Int {
        return 1
    }

    override func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        return movies.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
        cell.prepare(movie: movies[indexPath.row])
        return cell
    }
}
