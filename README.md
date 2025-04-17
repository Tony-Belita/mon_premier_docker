# docker-mysql-lab

## 📁 Structure du projet

- `Dockerfile` : image personnalisée MySQL
- `init.sql` : script de création de la base `formation` et table `utilisateurs`
- `.env` : variables d’environnement (mot de passe root, nom de la base)
- `README.md` : instructions

## 🚀 Étapes de build / run

1. Construire l’image :
    ```bash
    docker build -t mysql-lab .
    ```

2. Lancer le conteneur :
    ```bash
    docker run --name mysql-lab-container \
      --env-file .env \
      -v $(pwd)/init.sql:/docker-entrypoint-initdb.d/init.sql \
      -p 3307:3306 \
      -d mysql-lab
    ```

3. Accéder au conteneur :
    ```bash
    docker exec -it mysql-lab-container mysql -uroot -p
    ```

## Vérifications

- Base `formation` créée 
- Table `utilisateurs` présente 

## Captures demandées

- `docker ps` avec le conteneur en exécution
- Résultat de la requête : `SELECT * FROM utilisateurs;`