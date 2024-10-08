import Foundation
import Combine

class SalaData: ObservableObject {
    static let shared = SalaData() // Singleton para acesso global
    
    @Published var list_salas = [Monitoria]()
    
    private init() {
        initializeSalas()
    }
    
    func initializeSalas() {
        // Evitar inicialização múltipla
        guard list_salas.isEmpty else { return }

        list_salas.append(Monitoria(id: 1,
                                  nome_sala: "Info é o poder",
                                  ImageName: "ImageFill",
                                  has_entered: false,
                                  nome_responsavel: "Allyson Bonetti",
                                  matricula_responsavel: "20222011060091",
                                  hora_disponivel: "18h50 - 19h50",
                                  array_alunos: ["Mateus Grande", "Filezinho", "Jenas Oliveira", "Artur Costa", "Beatriz Lima", "Carlos Silva", "Daniel Souza", "Eva Pereira", "Francisco Martins", "Gabriela Santos"],
                                  description: "Sala que reúne os verdadeiros interessados em informática",
                                  img_anexos: "info_image",
                                  array_messages: ["Olá pessoal, sejam bem-vindos a essa monitoria!", "Entrem no grupo do Telegram t.me/teste"],
                                  limit_students: 20,
                                  img_monitoria_photo: "icon-monitoria-info",
                                  banner_monitoria: "banner-monitoria-info"))

        list_salas.append(Monitoria(id: 2,
                                  nome_sala: "Química Analítica",
                                  ImageName: "ImageFill",
                                  has_entered: false,
                                  nome_responsavel: "Renata Silveira",
                                  matricula_responsavel: "20222011060100",
                                  hora_disponivel: "13h30 - 15h",
                                  array_alunos: ["Fatima Oliveira", "Gonzada Lima", "Arpuroo Silva", "Ana Costa", "Bruno Almeida", "Clara Fernandes", "Diego Ribeiro", "Eduarda Pinto", "Felipe Castro", "Gabriel Lima", "Heloísa Rocha", "Igor Martins", "Júlia Costa", "Karla Almeida", "Lucas Nunes", "Mariana Santos", "Nathalia Silva", "Otávio Lima", "Paula Oliveira", "Quiteria Ramos"],
                                  description: "Monitoria sobre o estudo de \'Química Analítica\'. Seja bem vindo!.",
                                  img_anexos: "quimica_image",
                                  array_messages: ["Olá pessoal, sejam bem-vindos a essa monitoria!", "Entrem no grupo do Telegram t.me/teste"],
                                  limit_students: 20,
                                  img_monitoria_photo: "icon-monitoria-quimica",
                                  banner_monitoria: "banner-monitoria-quimica"))

        list_salas.append(Monitoria(id: 3,
                                  nome_sala: "Reminiscências do Passado",
                                  ImageName: "ImageFill",
                                  has_entered: false,
                                  nome_responsavel: "Túlio",
                                  matricula_responsavel: "20222011060101",
                                  hora_disponivel: "15h30 - 17h",
                                  array_alunos: ["Pires Souza", "Gonzada Lima", "Arpuroo Ferreira", "Lucas Almeida", "Mariana Costa", "Nicolas Pinto", "Olga Fernandes", "Pedro Silva", "Quiteria Oliveira", "Rafael Souza", "Sofia Lima", "Tiago Costa", "Ursula Almeida", "Valter Pereira", "Walter Silva", "Ximena Rodrigues", "Yara Santos", "Zé Silva"],
                                  description: "Os mestres da obra",
                                  img_anexos: "predio_image",
                                  array_messages: ["Olá pessoal, sejam bem-vindos a monitoria! Aqui temos como foco o estudo dos conteúdos tangentes à cadeira de \'Resistência dos Materiaios\' ", "Entrem no grupo do Telegram t.me/teste"],
                                  limit_students: 40,
                                  img_monitoria_photo: "icon-monitoria-hist",
                                  banner_monitoria: "banner-monitoria-hist"))

        list_salas.append(Monitoria(id: 4,
                                  nome_sala: "Rust",
                                  ImageName: "ImageFill",
                                  has_entered: false,
                                  nome_responsavel: "Ricardo Taveira",
                                  matricula_responsavel: "20222011060102",
                                  hora_disponivel: "18h50 - 19h50",
                                  array_alunos: ["Arpuroo Silva", "Aguinha Lima", "Jenas Oliveira", "Gonzada Almeida", "Beatriz Santos", "Carlos Pinto", "Daniel Fernandes"],
                                  description: "Venha aprender Rust mais facilmente!",
                                  img_anexos: "rust_image",
                                  array_messages: ["Olá pessoal, sejam bem-vindos a essa monitoria!", "Entrem no grupo do Telegram t.me/teste"],
                                  limit_students: 50,
                                  img_monitoria_photo: "icon-monitoria-rust",
                                  banner_monitoria: "banner-monitoria-rust"))

        list_salas.append(Monitoria(id: 5,
                                  nome_sala: "Cálculo 2",
                                  ImageName: "ImageFill",
                                  has_entered: false,
                                  nome_responsavel: "Gevane Santos",
                                  matricula_responsavel: "20222011060103",
                                  hora_disponivel: "18h50 - 19h50",
                                  array_alunos: ["Vih Costa", "Ana Lima", "Eduardo Silva", "Fernanda Almeida", "Guilherme Souza", "Heloísa Lima", "Igor Costa"],
                                  description: "Venha aprender matemática mais facilmente!",
                                  img_anexos: "math_conj_image",
                                  array_messages: ["Olá pessoal, sejam bem-vindos a essa monitoria!", "Entrem no grupo do Telegram t.me/teste"],
                                  limit_students: 60,
                                  img_monitoria_photo: "icon-monitoria-calculo",
                                  banner_monitoria: "banner-monitoria-calculo"))

        list_salas.append(Monitoria(id: 6,
                                  nome_sala: "Matemática Discreta",
                                  ImageName: "ImageFill",
                                  has_entered: false,
                                  nome_responsavel: "Joao Sales",
                                  matricula_responsavel: "20222011060104",
                                  hora_disponivel: "18h50 - 19h50",
                                  array_alunos: ["Vih Costa", "Samuel Almeida", "Kelwin Silva", "Mateus Oliveira", "Ana Santos", "Steve Jobs", "Miguel Ferreira"],
                                  description: "Monitoria de Matemática Discreta",
                                  img_anexos: "math_disc_image",
                                  array_messages: ["Olá pessoal, sejam bem-vindos a essa monitoria!", "Entrem no grupo do Telegram t.me/teste"],
                                  limit_students: 70,
                                  img_monitoria_photo: "icon-monitoria-mat-discreta",
                                  banner_monitoria: "banner-monitoria-mat-discreta"))

        list_salas.append(Monitoria(id: 7,
                                  nome_sala: "Monitoria de Lua",
                                  ImageName: "ImageFill",
                                  has_entered: false,
                                  nome_responsavel: "Roberto Ierusalimschy",
                                  matricula_responsavel: "20222011060105",
                                  hora_disponivel: "18h50 - 19h50",
                                  array_alunos: ["Mateus Oliveira", "Roberto Ierusalimschy", "Mariana Costa", "Evelyn Pinto", "Gaby Lima", "Flávio Almeida", "Ruth Fernandes", "Silvio Santos"],
                                  description: "Venha aprender desde o básico ao avançado em Lua",
                                  img_anexos: "lua_image",
                                  array_messages: ["Olá pessoal, sejam bem-vindos a essa monitoria!", "Entrem no grupo do Telegram t.me/teste"],
                                  limit_students: 80,
                                  img_monitoria_photo: "icon-monitoria-lua",
                                  banner_monitoria: "banner-monitoria-lua"))
//        list_salas.append(Monitoria(id: 8,
//                                  nome_sala: "Reminiscencia do Passado",
//                                  ImageName: "ImageFill",
//                                  has_entered: false,
//                                  nome_responsavel: "Marcos Cunha",
//                                  matricula_responsavel: "20222011060105",
//                                  hora_disponivel: "18h50 - 19h50",
//                                  array_alunos: ["Mateus Oliveira", "Roberto Ierusalimschy", "Mariana Costa", "Evelyn Pinto", "Gaby Lima", "Flávio Almeida", "Ruth Fernandes", "Silvio Santos"],
//                                  description: "Venha aprender desde o básico ao avançado em Lua",
//                                  img_anexos: "lua_image",
//                                  array_messages: ["Olá pessoal, sejam bem-vindos a essa monitoria!", "Entrem no grupo do Telegram t.me/teste"],
//                                  limit_students: 80,
//                                  img_monitoria_photo: "icon-monitoria-hist"))
    }
}
