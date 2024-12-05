# Login com Google - Flutter App

## Integrantes do Grupo
- Diego Planinscheck 
- Gabriel Henrique Karing
- Jose Marcos Zoz Marques 

## Listagem de Funções por Tela

### Tela de Login (`LoginScreen`)
1. Exibir o título e as instruções de login.  
2. Exibir um botão para realizar o login com Google.  
3. Redirecionar o usuário para a tela principal (`HomeScreen`) após autenticação bem-sucedida.  

### Tela Principal (`HomeScreen`)
1. Exibir informações do usuário autenticado (nome, e-mail e foto de perfil).  
2. Exibir mensagem caso nenhum usuário esteja autenticado.  
3. Permitir que o usuário faça logout.  
4. Redirecionar o usuário para a tela de login após logout.  

## Listagem de Tipos de Erros do Firebase Authentication
1. **`ERROR_INVALID_CREDENTIAL`**: Credenciais inválidas fornecidas.  
2. **`ERROR_USER_DISABLED`**: Conta do usuário desativada.  
3. **`ERROR_ACCOUNT_EXISTS_WITH_DIFFERENT_CREDENTIAL`**: Conta já associada a outra credencial.  
4. **`ERROR_OPERATION_NOT_ALLOWED`**: Operação não permitida pelo provedor de autenticação.  
5. **`ERROR_NETWORK_REQUEST_FAILED`**: Erro de conexão com a rede.  

## Dependências Utilizadas e Versões
1. **`flutter`**: Ver versão mínima abaixo.  
2. **`firebase_core`**: ^3.8.1  
3. **`firebase_auth`**: ^5.3.4
4. **`cloud_firestore`**: ^5.5.1
5. **`firebase_storage`**: ^12.3.7
6. **`firebase_database`**: ^11.2.0
7. **`google_sign_in`**: ^6.2.2 
8. **`material_design_icons_flutter`**: ^7.0.7296

## Instruções de Configuração e Importação do Projeto

### Requisitos
- **Flutter SDK**: **3.24.5**  
- **Dart SDK**: **3.5.4**  

### Passos para Configuração
1. **Clone o Repositório**  
   ```bash
   git clone <URL_DO_REPOSITORIO>
   cd <NOME_DO_REPOSITORIO>
   ```
2. **Instale as Dependências**  
   ```bash
   flutter pub get
   ```
3. **Configure o Firebase**  
   - Crie um projeto no Firebase.  
   - Ative o método de login com Google no console do Firebase.  
   - Baixe o arquivo `google-services.json` (Android) ou `GoogleService-Info.plist` (iOS) e adicione na pasta correspondente do projeto.  

4. **Execute o Aplicativo**  
   ```bash
   flutter run
   ```

---
