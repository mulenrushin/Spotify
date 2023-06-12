//
//  AuthManager.swift
//  Spotify
//
//  Created by ITSTEP on 06.06.2023.
//

import Foundation


final class AuthManager {
    static let shared =  AuthManager()
    
    struct Constants {
        static let clientID = "cb5b3f847ee9472b996afafbd04f42a3"
        static let clientSecret = "ba6aa42bba814105aefab31d057cf1f6"
    }
    
    private init() {}
    
    public var signInURL: URL? {
        let scopes = "user-read-private"
        let redirectURI = "http://localhost"
        let base = "https://accounts.spotify.com/authorize"
        let string = "\(base)?response_type=code&client_id=\(Constants.clientID)&scope=\(scopes)&redirect_uri=\(redirectURI)&show_dialog=TRUE"
        return URL(string: string)
    }
    
    var isSignedIn: Bool {
        return false
    }
    
    private var acessToken: String? {
        return nil
    }
    
    private var refreshToken: String? {
        return nil
    }
    
    private var tokenExpirationDate: Date? {
        return nil
    }
    
    private var shouldRefreshToken: Bool {
        return false
    }
}
