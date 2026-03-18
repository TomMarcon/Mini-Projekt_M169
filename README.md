# Mini-Projekt_M169 Leonit & Tom
## NGINX Webserver mit Docker

## Einleitung
In diesem Mini-Projekt wurde ein einfacher Webserver mit NGINX und Docker erstellt. Ziel war es, eine eigene HTML-Webseite bereitzustellen, die über den Browser auf Port 8080 erreichbar ist. Zusätzlich sollten die Webseiten-Dateien sowie die Logdateien lokal auf dem Rechner gespeichert werden.

---

## Vorgehen

### 1. Projektordner erstellen
In PowerShell wurde ein Projektordner erstellt mit:

- `Dockerfile`
- Ordner `website` für die HTML-Datei
- Ordner `logs` für Logdateien

---

### 2. HTML-Seite erstellen
Im Ordner `website` wurde eine einfache `index.html` erstellt.  
Diese dient als Webseite, die später vom NGINX-Server angezeigt wird.

---

### 3. Dockerfile erstellen
Ein `Dockerfile` wurde erstellt, um ein eigenes NGINX-Image zu definieren.

Inhalt:
- Basis: NGINX
- Port 80 freigeben
- NGINX starten

---

### 4. Docker Image bauen

powershell
`docker build -t mein-nginx-projekt .`

---

### 5. Container erstellen und starten
`docker run -d --name nginx-mini-projekt -p 8080:80 -v "C:\Users\ldautaj\mini-projekt-nginx\website:/usr/share/nginx/html:ro" -v "C:\Users\ldautaj\mini-projekt-nginx\logs:/var/log/nginx" mein-nginx-projekt`

---

### 6. Überprüfen und Testen
Mit dem Befehl `docker ps` überprüfen, ob der Container erstellt wurde.
Anschliessend mit "http://localhost:8080" prüfen.

---

### 7. Vorgehen

#### Projektordner erstellen
`mkdir mini-projekt-nginx
cd mini-projekt-nginx
mkdir website logs`

#### HTML erstellen
`notepad website\index.html`

#### Dockerfile erstellen
`notepad Dockerfile`

#### Image bauen
`docker build -t mein-nginx-projekt .`

#### Container starten
`docker run -d --name nginx-mini-projekt -p 8080:80 -v "C:\Users\ldautaj\mini-projekt-nginx\website:/usr/share/nginx/html:ro" -v "C:\Users\ldautaj\mini-projekt-nginx\logs:/var/log/nginx" mein-nginx-projekt`

#### Testen
`docker ps`

#### Browser aufrufen
`http://localhost:8080`
