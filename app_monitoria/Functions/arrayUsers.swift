import Foundation
import Combine

class UserData: ObservableObject {
    static let shared = UserData() // Singleton para acesso global
    
    @Published var list_users = [User]()
    
    private init() {
        initializeUsers()
    }
    
    func initializeUsers() {
        // Evitar inicialização múltipla
        guard list_users.isEmpty else { return }

        list_users.append(User(id: 1,
                               matricula: "20222011060999",
                               name: "Leandro",
                               is_monitor: false,
                               user_description: "Meu nome é Leandro. Curso o 4 período de Informática no IFCE - Campus Fortaleza"
                              ))

}
}
