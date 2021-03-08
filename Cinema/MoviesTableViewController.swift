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
        addItem()
    }

    override func prepare(for segue: UIStoryboardSegue, sender _: Any?) {
        if let vc = segue.destination as? MovieDetailViewController {
            guard let row = tableView.indexPathForSelectedRow?.row else { return }

            let movie = movies[row]
            vc.movie = movie
        }
    }

    func addItem() {
        movies.append(Movie(title: "Deadpool", categories: "action", duration: "1h43min", rating: 9.2, summary: "some about Deadpool", imageName: "dead"))
        movies.append(Movie(title: "Deadpool", categories: "action", duration: "1h43min", rating: 9.2, summary: "some about Deadpool", imageName: "dead"))
        movies.append(Movie(title: "Deadpool", categories: "action", duration: "1h43min", rating: 9.2, summary: "some about Deadpool", imageName: "dead"))
        movies.append(Movie(title: "Deadpool", categories: "action", duration: "1h43min", rating: 9.2, summary: "some about Deadpool", imageName: "dead"))
        movies.append(Movie(title: "Deadpool", categories: "action", duration: "1h43min", rating: 9.2, summary: "some about Deadpool", imageName: "dead"))
        movies.append(Movie(title: "Deadpool", categories: "action", duration: "1h43min", rating: 9.2, summary: "some about Deadpool", imageName: "dead"))
        movies.append(Movie(title: "Deadpool", categories: "action", duration: "1h43min", rating: 9.2, summary: "some about Deadpool", imageName: "dead"))
        movies.append(Movie(title: "Deadpool", categories: "action", duration: "1h43min", rating: 9.2, summary: "some about Deadpool", imageName: "dead"))
        movies.append(Movie(title: "Deadpool", categories: "action", duration: "1h43min", rating: 9.2, summary: "some about Deadpool", imageName: "dead"))
        movies.append(Movie(title: "Deadpool", categories: "action", duration: "1h43min", rating: 9.2, summary: "some about Deadpool", imageName: "dead"))
        movies.append(Movie(title: "Deadpool", categories: "action", duration: "1h43min", rating: 9.2, summary: "some about Deadpool", imageName: "dead"))
        movies.append(Movie(title: "Deadpool", categories: "action", duration: "1h43min", rating: 9.2, summary: "some about Deadpool", imageName: "dead"))
    }

//    func loadData() {
//        guard let jsonUtl = Bundle.main.url(forResource: "movies", withExtension: "json"), let data = try? Data(contentsOf: jsonUtl) else { return }
//        do {
//            movies = try JSONDecoder().decode([Movie].self, from: data)
//        } catch {
//            print(error.localizedDescription)
//        }
//    }

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
