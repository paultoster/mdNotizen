# # Wertpapier Schnittstelle

# Frage: Gibt es im Internet Schnittstellen zu Wertpapierinformationen für den privaten Gebrauch?

Ja, es gibt mehrere Schnittstellen (APIs), die für den privaten Gebrauch Wertpapierinformationen bereitstellen – von Kursen über Unternehmensdaten bis hin zu historischen Charts. Hier sind einige populäre Optionen:

---

### **Kostenlose APIs (oft mit Limits)**

#### 1. **Yahoo Finance API (inoffiziell, via RapidAPI oder Python-Bibliotheken)**

- **Daten:** Aktienkurse, historische Kurse, Unternehmensinfos, Dividenden, etc.

- **Zugriff:** Über z. B. `yfinance` (Python) oder RapidAPI

- **Nutzung:** Frei, aber Begrenzungen über Drittanbieter

- **Beispiel:** `pip install yfinance`
  
  ```python
  import yfinance as yf
  apple = yf.Ticker("AAPL")
  print(apple.info)
  ```

#### 2. **Alpha Vantage**

- **Daten:** Aktien, Forex, Krypto, technische Indikatoren

- **Kosten:** Kostenlos mit API-Key (5 Requests/min)

- **Link:** [https://www.alphavantage.co](https://www.alphavantage.co)

---

#### 3. **Twelve Data**

- **Daten:** Realtime & historische Kurse, technische Analysen

- **Kosten:** Kostenlos mit Limit, Premium verfügbar

- **Link:** [https://twelvedata.com/](https://twelvedata.com/)

---

#### 4. **Finnhub**

- **Daten:** Echtzeitdaten (US), Fundamentaldaten, News

- **Kosten:** Freier Plan für den privaten Gebrauch

- **Link:** [https://finnhub.io/](https://finnhub.io/)

---

#### 5. **IEX Cloud**

- **Daten:** US-Markt, Echtzeit- und historische Kurse

- **Kosten:** Kostenloser Plan mit 500.000 Messages/Monat

- **Link:** [https://iexcloud.io/](https://iexcloud.io/)

---

### 💰 **Kostenpflichtige APIs (mehr Daten, besserer Support)**

- **Morningstar** – Hochwertige Finanzdaten, teuer, aber sehr umfassend

- **Bloomberg API** – Profi-Tool, eher für Unternehmen

- **Refinitiv (ehem. Thomson Reuters)** – Sehr umfangreich, teuer

---

### 💡 Weitere Quellen

- **Deutsche Börse Xetra XML-Feeds** (kompliziert, nicht direkt API-artig)

- **Onvista / Finanzen.net / Ariva.de** – Bieten keine offenen APIs, aber inoffiziell scrapen manche Leute Daten

---

Möchtest du z. B. eine bestimmte Art von Daten (z. B. historische Kurse oder Dividenden) abfragen oder ein kleines Projekt dazu machen? Dann kann ich dir eine passende API empfehlen oder Beispielcode geben.

# Frage: Vor allem interessieren mich europäische ETFs

Super, für europäische ETFs gibt es leider weniger APIs mit guter Abdeckung als für US-Wertpapiere, aber es gibt trotzdem einige gute Optionen – vor allem, wenn du bereit bist, ein paar Kompromisse bei Echtzeitdaten oder Detailtiefe einzugehen. Hier sind geeignete APIs speziell für **europäische ETFs**:

### **Empfehlenswerte APIs für europäische ETFs**

#### 1. **Euronext API (inoffiziell über Scraping oder Web-Requests)**

- **Daten:** Preis, Volumen, Name, ISIN, Handelsplatz (z. B. Paris, Amsterdam)

- **Direktlink zu Daten:** https://live.euronext.com/en/product/etfs

- ⚠️ Keine offizielle API, aber strukturierte Daten im HTML → per Web-Scraping nutzbar

---

#### 2. **JustETF (halb-offiziell via Scraping oder CSV-Export)**

- **Daten:** ETF-Vergleich, Kosten, Replikation, Fondsvolumen, Performance

- **Webseite:** [https://www.justetf.com](https://www.justetf.com)

- **Hinweis:** Kein offizielles API, aber viele Daten via Webscraping oder Export

- **Tipp:** JustETF bietet CSV-Downloads für Watchlists – kannst du automatisch einlesen

---

#### 3. **Xetra (Deutsche Börse)**

- **Daten:** Alle auf Xetra gehandelten ETFs, inkl. Kursdaten, ISIN, Fondsgröße

- **Link:** [https://www.xetra.com](https://www.xetra.com)

- Kein echtes API, aber strukturierte XML-/CSV-Reports

---

#### 4. **Yahoo Finance via `yfinance`**

- **Daten:** Viele europäische ETFs, z. B. „iShares Core MSCI World UCITS ETF“ (Ticker: `IWDA.AS`)

- **Beispielcode:**

```python
import yfinance as yf
etf = yf.Ticker("IWDA.AS")
print(etf.info)
```

- **Vorteil:** Kostenlos, einfache Nutzung

- **Nachteil:** Nicht alle europäischen ETFs verfügbar oder korrekt

---

#### 5. **EOD Historical Data**

- **Daten:** Über 60 Börsen weltweit, inkl. europäischer ETFs

- **Kosten:** Ab $19/Monat

- **Link:** [https://eodhistoricaldata.com/](https://eodhistoricaldata.com/)

---

### 🔧 Alternatividee: Kombinieren

Wenn du bereit bist, ein kleines Tool zu basteln, kannst du z. B. Folgendes tun:

1. Ticker/ISINs von JustETF oder Xetra scrapen oder exportieren

2. Kursdaten per `yfinance` oder EOD abfragen

3. Alles in einem kleinen Script zusammenführen (z. B. in Python oder Excel)

---

Wenn du willst, kann ich dir auch ein Beispielskript für eine ETF-Datenabfrage (z. B. ISIN + letzter Kurs + TER) basteln. Sag einfach, welche ETFs oder Daten du brauchst!

# Frage: Sehr interessant, wie kann man mit ISIN oder WKN ein entsprechendes Tickersymbol für yfinance bekommen

Das ist eine sehr gute und oft gestellte Frage – denn **Yahoo Finance arbeitet mit Ticker-Symbolen**, während du in Europa meist **ISINs** oder **WKNs** findest. Leider bietet Yahoo **keine offizielle Möglichkeit**, direkt per ISIN/WKN einen Ticker zu finden. Aber es gibt einige Tricks und Workarounds:

---

### 🔁 **Möglichkeiten, ISIN/WKN → Ticker zu konvertieren**

#### 🔍 **1. Manuell über Yahoo-Suche (semi-automatisierbar)**

- Du kannst in der Yahoo-Suche nach der ISIN oder WKN suchen:
  
  - Beispiel: Suche nach `IE00B4L5Y983` (ISIN von IWDA)
  
  - Ergebnis: Ticker `IWDA.AS` (Euronext Amsterdam)

🔗 Link: [https://finance.yahoo.com](https://finance.yahoo.com)  
→ Einfach `ISIN` in die Suchleiste eingeben.

➡️ **Kannst du automatisieren** mit einem Headless-Browser (z. B. `Selenium`), aber ist "hacky".

---

#### 🧠 **2. JustETF nutzen, um ISIN → Börsenplatz/Ticker zu bekommen**

- JustETF listet **zu fast jedem ETF** die **Börsenplätze und Kürzel**

- Beispiel: https://www.justetf.com/de/etf-profile.html?isin=IE00B4L5Y983

➡️ Dort findest du:  
`iShares Core MSCI World UCITS ETF (Acc)`  
→ Börse Amsterdam: `IWDA`  
→ Börse Xetra: `EUNL`

⚙️ Du kannst von dort ISIN → Ticker mappen und z. B. `IWDA.AS` oder `EUNL.DE` in yfinance nutzen.

---

#### 🛠️ **3. Webscraping oder Mapping-Datei**

- Du erstellst eine eigene **Mapping-Datei (CSV/JSON)** mit:
  
  - ISIN, WKN, Name, Yahoo-Ticker

- Beispiel:

```csv
ISIN,WKN,Name,Yahoo_Ticker
IE00B4L5Y983,A0RPWH,iShares Core MSCI World UCITS ETF,IWDA.AS
DE000ETFL284,ETFL28,Lyxor MSCI World UCITS ETF,LYP1.DE
```

Kannst du dann in deinem Script einlesen, um automatisiert über `yfinance` Kurse zu holen.

---

### 📦 Bonus: Python-Beispiel mit Mapping-Datei

```python
import yfinance as yf
import pandas as pd

# Lade Mapping-Datei
mapping = pd.read_csv("etf_mapping.csv")

# Wähle ETF per ISIN
isin = "IE00B4L5Y983"
ticker = mapping[mapping["ISIN"] == isin]["Yahoo_Ticker"].values[0]

# Kursdaten abrufen
etf = yf.Ticker(ticker)
print(etf.history(period="5d"))
```

Wenn du möchtest, kann ich dir helfen, eine kleine **Mapping-Datei für deine Lieblings-ETFs** zu erstellen oder ein Script dafür aufzusetzen. Sag einfach Bescheid!
