# Mini-Projekt_M169
## Mini-Projekt M169
# Mini-Projekt: NGINX Webserver mit Docker

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

```powershell
docker build -t mein-nginx-projekt .
