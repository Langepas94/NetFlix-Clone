//
//  ApiCaller.swift
//  NetFlix Clone
//
//  Created by Артём Тюрморезов on 18.10.2022.
//

import Foundation
// структура для апи ключа и базового юрл
struct Constants {
    static let apiKey = "f1bbf094f75b461f9a4ab4281885f4eb"
    static let baseURL = "https://api.themoviedb.org"
}
// енум для ошибки
enum APIerror: Error {
    case failedToGetData
}

// класс для работы с сетью
class ApiCaller {
    static let shared = ApiCaller()
   // функция со сбегающим замыканием
    func getTrendsMovies(completion: @escaping (Result<[Movie], Error>) -> Void) {
        guard let url = URL(string: "\(Constants.baseURL)/3/trending/movie/day?api_key=\(Constants.apiKey)") else { return }
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let results = try JSONDecoder().decode(TrendingMoviesResponce.self, from: data)
                completion(.success(results.results))
            } catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
    
    func getTrendsTvs(completion: @escaping (Result<[Tv], Error>) -> Void) {
        guard let url = URL(string: "\(Constants.baseURL)/3/trending/tv/day?api_key=\(Constants.apiKey)") else { return }
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let results = try JSONDecoder().decode(TrendingTvResponse.self, from: data)
                print(results)
            } catch {
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
    
    func getUpcomingMovies(completion: @escaping (Result<[Tv], Error>) -> Void) {
        guard let url = URL(string: "\(Constants.baseURL)/3/movie/upcoming?api_key=\(Constants.apiKey)&language=en-US&page=1") else { return }
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let results = try JSONDecoder().decode(TrendingTvResponse.self, from: data)
                print(results)
            } catch {
                print(error.localizedDescription)
            }
        }
        
        task.resume()
    }
    
    func getPopular(completion: @escaping (Result<[Tv], Error>) -> Void) {
        guard let url = URL(string: "\(Constants.baseURL)/3/movie/popular?api_key=\(Constants.apiKey)&language=en-US&page=1") else { return }
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let results = try JSONDecoder().decode(TrendingTvResponse.self, from: data)
                print(results)
            } catch {
                print(error.localizedDescription)
            }
        }
        
        task.resume()
    }
    func getTopRated(completion: @escaping (Result<[Tv], Error>) -> Void) {
        guard let url = URL(string: "\(Constants.baseURL)/3/movie/top_rated?api_key=\(Constants.apiKey)&language=en-US&page=1") else { return }
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let results = try JSONDecoder().decode(TrendingTvResponse.self, from: data)
                print(results)
            } catch {
                print(error.localizedDescription)
            }
        }
        
        task.resume()
    }
    
    
}


// https://api.themoviedb.org/3/movie/upcoming?api_key=<<api_key>>&language=en-US&page=1
