//
//  RMService.swift
//  RickAndMorty
//
//  Created by Betül Erkantarcı on 7.05.2023.
//

import Foundation



/// Primary API service object to get Rick and Morty Data
final class RMService {
    
    /// Shared singelton instance
    static let shared = RMService()
    
    private init(){}
    
    /// Send Rick & Morty API Call
    /// - Parameters:
    ///   - request: Request Instance
    ///   - type: The type of the object we expect to get back
    ///   - completion: Callback with data or error
    public func execute<T: Codable>
    (_ request: RMRequest, expecting type: T.Type, completion: @escaping (Result<T,Error>) -> Void){
        
    }
    
    
}
