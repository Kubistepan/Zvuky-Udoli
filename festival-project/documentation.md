# ZVUKY ÚDOLÍ – Dokumentace Zápočtového Projektu

---

## TITULNÍ STRANA

**Název Projektu:** ZVUKY ÚDOLÍ – Multižánrový Hudební Festival  
**Předmět:** Zápočtový Projekt – Webové Projekty a Datové Modely  
**Školní Rok:** 2025–2026  
**Datum Odevzdání:** 15. února 2026  

**Členové Týmu:** [Vaše Jména]  
**Vedoucí Projektu:** [Vedoucí Jméno]  

**Počet Stran:** [Celkový počet]  
**Počet Příloh:** 7 (XSLT transformace, JSON výstupy, JSON schémata, OpenAPI specifikace)

---

## OBSAH

1. Titulní strana
2. Obsah
3. Stručný popis festivalu
4. Seznam požadavků a jejich řešení
5. Metodika projektu
6. Postup tvorby
7. Nástroje a verze
8. Ukázky AI promptů
9. Kritické posouzení využití AI
10. Závěr
11. Přílohy

---

## 1. STRUČNÝ POPIS FESTIVALU

### 1.1 Identita Festivalu

**ZVUKY ÚDOLÍ** je fiktivní multižánrový hudební festival pořádaný první edice v roce 2026. Festival se koná **19.–21. června 2026** v **Údolí nad Zdobnicí**, česká lokalita s kapacitou cca 5 800 lidí.

### 1.2 Koncept a Zaměření

Festival se zaměřuje na čtyři hlavní hudební žánry:
- **Elektronická hudba** (techno, house, ambient, IDM, synthwave)
- **Indie rock a alternativa** (indie rock, post-punk revival, dream pop)
- **Jazz a improvizace** (moderní jazz, free jazz)
- **Experimentální zvuk a performance art** (sound art, audio-vizuální performance)

Cílová skupina jsou především mladí dospělí (18–35 let) a milovníci kvalitní hudby z celé Evropy.

### 1.3 Klíčová Data Festivalu

| Parametr | Hodnota |
|----------|---------|
| Počet dnů | 3 |
| Počet míst | 2 (Hlavní areál + Pavilon) |
| Počet scén | 3 (2× venkovní + 1× krytá) |
| Počet účinkujících | 64 umělců |
| Počet akcí | 65 programových položek |
| Kapacita Primární Scény | 3 000 lidí |
| Kapacita Sekundární Scény | 2 000 lidí |
| Kapacita Pavilonu | 800 lidí |
| Cena 3denní lístky | 1 300 CZK |

### 1.4 Představa Festivalu
Festival vychází z reálných festivalů (např. Colours of Ostrava, Lovebites, Open Air Kamps), ale je tvořen fiktivní datovou základnou. Všichni umělci, časy a lokality jsou vygenerované s pomocí AI, vycházejí z realitického scénáře.

---

## 2. SEZNAM POŽADAVKŮ A JEJICH ŘEŠENÍ

### Tabulka Splnění Požadavků

| Požadavek | Popis | Řešení | Umístění | Bodů |
|-----------|-------|--------|----------|------|
| **Context Package** | Specifikace festivalu + XML data | specification.md + festival.xml | data/ | 20 |
| HTML Stránka 1 | Úvodní stránka (landing/o festivalu) | index.html | web/ | 5 |
| HTML Stránka 2 | Program s harmonogramem | program.html | web/ | 5 |
| HTML Stránka 3 | Účinkující se seznamem + detail | performers.html | web/ | 5 |
| HTML Stránka 4 | Praktické info (doprava, ubytování) | practical-info.html | web/ | 5 |
| Semantic HTML | Sémantická struktura: header/nav/main/section/article/footer | Všechny HTML soubory | web/*.html | Součást |
| Metadata | title + meta description, Open Graph | Všechny HTML soubory | web/*.html | Součást |
| Structured Data | JSON-LD pro festival, event, person | Všechny HTML soubory | web/ | Součást |
| CSS Baseline | Barvy, fonty, oddělení sekcí (50-100 řádků) | style.css (95 řádků) | web/ | Součást |
| XSD Schema | Validace XML s vlastními omezeními | festival.xsd | data/ | Součást Phase 2 |
| XSLT Transformace | 7 transformací XML → JSON | *.xslt (7 souborů) | api/transformation/ | Součást Phase 3 |
| JSON Výstupy | 7 JSON souborů z transformací | *.json (7 souborů) | api/json/ | Součást Phase 3 |
| JSON Schema | 7 validačních schémat | *-schema.json (7 souborů) | api/json-schema/ | Součást Phase 3 |
| OpenAPI Specifikace | Kompletní API dokumentace v3.1 | openapi.yaml | api/ | Součást Phase 3 |
| REST Endpointy | GET /api/festival, /venues, /performers, /events | Zdokumentováno v openapi.yaml | api/ | Součást Phase 3 |
| Filtrování | Query parametry (day, venueId, performerId) | Dokumentováno v openapi.yaml | api/ | Součást Phase 3 |
| Stránkování | Pagination (page, pageSize) | Implementováno v JSON souborech | api/json/ | Součást Phase 3 |
| Dokumentace | Tato dokumentace + metadata | documentation.md | . | 10 |

**Celkem:** 50 bodů (20 + 20 + 10)

---

## 3. METODIKA PROJEKTU

### 3.1 Přístup k Vývoji
Projekt byl vyvíjen podle následujícího plánu:
1. **Fáze 1 – Context Package** (Týden 1)
   - Definování konceptu festivalu
   - Tvorba specifikace v Markdown
   - Generování realistických dat festivos v XML

2. **Fáze 2 – Datový Model** (Týden 2)
   - Vytvoření XSD schématu pro validaci
   - Definování vlastních omezení (pattern, enum, range)
   - Testování validity XML dat

3. **Fáze 3 – API Layer** (Týden 3)
   - Navržení REST API s 7 endpointy
   - Vytvoření XSLT transformací pro generování JSON
   - Psaní JSON schémat pro validaci odpovědí
   - Dokumentace API v OpenAPI 3.1

4. **Fáze 4 – Web** (Týden 4)
   - Tvorba 4 sémantických HTML stránek
   - Jednoduchý CSS styling (dark theme)
   - Přidání metadata a strukturovaných dat

5. **Fáze 5 – Dokumentace** (Týden 5)
   - Psaní této dokumentace
   - Krytické zhodnocení AI využití

### 3.2 Iterativní Přístup
Každá fáze byla závislá na předchozích. Chyby nebo změny v XML datech se propagovaly do schémat, API specifikací a webových stránek. Postupný vývoj umožňoval správné řešení problémů.

---

## 4. POSTUP TVORBY

### 4.1 Tvorba Konceptu Festivalu
1. Zvolili jsme multižánrový festival (elektronika + indie rock)
2. Definovali jsme období (letní festival v květnu/červnu)
3. Vybrali jsme lokaci: fiktivní město Údolí nad Zdobnicí
4. Určili jsme klíčové údaje: 3 dny, 2 místa, 64 umělců, 65 akcí

### 4.2 Vytváření XML Datové Základny
Proces tvorby XML dat:
```
1. Definování XML struktury (festival > metadata, venues, performers, events)
2. Generování 64 realistických umělců (jména, žánry, země, biografie)
3. Vytvoření 3 dnů programu s 65 aukcemi
4. Zajištění referenční integrity (performer → event, venue → event)
5. Validace dobře-formovanosti XML
```

### 4.3 Návrhf XSD Schématu
- Definování základních typů (dateType, emailType, capacityType atd.)
- Vytvoření enumů pro žánry (50+ hudebních kategorií)
- Přidání vlastních omezení (pattern, enumeration, range)
- Definování klíčů a referenčních integrit (keyref)

### 4.4 Tvorba API Vrstvy
Proces:
1. Navržení 7 REST endpointů podle požadavků
2. Vytvoření XSLT souborů pro transformaci XML → JSON
3. Ruční vytvoření JSON výstupů (jako příklady API odpovědí)
4. Psaní JSON schémat pro definování struktury odpovědí
5. Psaní OpenAPI specifikace s příklady a popisem

### 4.5 Vývoj Webu
- HTML: Čtyři sémantické stránky s čistou strukturou
- CSS: Baseline styling s dark theme a neon akcenty
- Responsive: Mobile-first přístup s media queries
- Metadata: Open Graph + JSON-LD pro SEO

---

## 5. NÁSTROJE A VERZE

### 5.1 Vývojové Nástroje
| Nástroj | Verze | Účel |
|---------|-------|------|
| VS Code | Aktuální | Editor pro HTML, CSS, XML, YAML |
| GitHub Copilot | Claude Haiku 4.5 | AI asistent pro kódování |
| XML Spy / Oxygen | N/A (online validace) | Validace XML a XSD |
| OpenAPI Editor | 3.1 | Psaní API specifikace |
| Markdown | Komunitní standard | Dokumentace |
| XSLT | 1.0 | Transformace dat |

### 5.2 Jazyky a Technologie
- **XML:** Datová základna (festival.xml)
- **XSD:** Schéma validace (festival.xsd)
- **XSLT 1.0:** Transformace XML → JSON (7 souborů)
- **JSON:** API výstupy a schémata (14 souborů)
- **YAML:** OpenAPI specifikace (openapi.yaml)
- **HTML5:** Webové stránky (4 soubory + 1 CSS)
- **CSS3:** Styling bez frameworků

### 5.3 Verze Specifikací
- **OpenAPI:** 3.1.0
- **JSON Schema:** Draft 7 (draft-07)
- **HTML:** HTML5
- **XML:** 1.0
- **XSLT:** 1.0

---

## 6. UKÁZKY AI PROMPTŮ

### 6.1 Prompt pro Generování Umělců

**Prompt:**
```
Generate 64 realistic music festival performers for a Czech festival called ZVUKY ÚDOLÍ.
The festival focuses on electronic music, indie rock, jazz, and experimental sound.
Include:
- Artist names (band or solo)
- Music genre (from list: Techno, House, Ambient, Indie Rock, etc.)
- Country of origin
- Short biography (2-3 sentences)

Format as XML with fields: id, name, genre, bio, country, image
Ensure variety of genres and geographical distribution across Europe.
```

**Výstup:** 64 umělců s biográfiemi v XML

### 6.2 Prompt pro Vytváření Programu

**Prompt:**
```
Create a realistic 3-day festival schedule for ZVUKY ÚDOLÍ:
-venue capacity: 5000 + 800
- stages: 2 main outdoor + 1 indoor
- 3 days (June 19-21, 2026)
- Each day: Friday 17:00-01:00, Saturday 16:00-01:00, Sunday 15:00-01:00
- Goals: Avoid artist conflicts, logical stage distribution, reasonable time gaps

Include:
- event_id, title, startTime, endTime, day, venue, stage, performer
- Mix of live bands and DJ sets
- Some opening/closing acts without specific performers

Format as XML events with proper datetime format.
```

**Výstup:** 65 programových akcí s realistickými časy

### 6.3 Prompt pro XSD Schéma

**Prompt:**
```
Create an XSD 1.0 schema for validating a festival XML with:
- Custom simple types with constraints:
  - dateType: pattern YYYY-MM-DD
  - phoneType: Czech format +420 XXX XXX XXX
  - genreType: enumeration of 50+ music genres
  - capacityType: min 1, max 100000
- Complex types for festival, venues, stages, performers, events
- Key constraints: unique IDs
- Keyref constraints: event.performer → performer.id
- Include comments explaining custom constraints

Keep it comprehensive but readable.
```

**Výstup:** festival.xsd s 15+ vlastními omezeními

### 6.4 Prompt pro OpenAPI

**Prompt:**
```
Write OpenAPI 3.1.0 specification for festival API with:
- 7 GET endpoints: /festival, /venues, /venues/{id}, /performers, /performers/{id}, /events, /events/{id}
- Query parameters for /events: day, venueId, performerId, page, pageSize
- Response schemas with examples
- Error responses: 400, 404, 500
- Include pagination info for list endpoints
- Add JSON schema references for validation

Use realistic Czech festival data as examples.
```

**Výstup:** openapi.yaml (450+ řádků)

---

## 7. KRITICKÉ POSOUZENÍ VYUŽITÍ AI

### 7.1 Kladné Aspekty Využití AI

#### Rychlost a Produktivita
- **Generování dat:** AI dokázala vygenerovat 64 realistických umělců s biografiemi za minuty
- **Kódování:** Tvorba XSLT a JSON schémat byla výrazně zrychlena
- **Dokumentace:** OpenAPI specifikace byla napsána s vysokou kvalitou

#### Konzistence a Korektnost
- **Datová klíčová pole:** Všechna ID (performer ID → event) správně odkazují
- **Typová bezpečnost:** XSD schéma bez chyb, XML válid
- **API validace:** JSON schémata odpovídají skutečným výstupům

#### Kreativita a Reálismus
- Festival "ZVUKY ÚDOLÍ" a jeho koncept je originální
- Jména umělců, biografie a program jsou realistické a věrohodné
- Časy akcí jsou logické a nepředstavljují nesmysly

### 7.2 Kritiky a Omezení

#### Neosobnostní Práce
Bez kontroly člověka by výstup AI nemusela obsahovat:
- Českou kulturní relevanci (co jsou správné hudební žánry v ČR)
- Technické znalosti (XML, XSD syntax vs. sémantika)
- Soud: Jaké parametry API mají smysl

#### Chyby a Opravy
- **Prvotní návrh:** Něco XSD typů nemuselo být optimální
- **Opravy:** Manuální přesnějšímplement se stalo nutným
- **Validace:** Všechny XML data byla manuálně zkontrolována

#### Omezená Kontextuální Znalost
- **Lokázal:** "Údolí nad Zdobnicí" je fiktivní – AI neměla bych ověřit
- **Festivaly:** AI pracuje s obecnými kategoriemi, nikoli specifickými znalostmi
- **Specifikace:** OpenAPI byla vygenerována, ale některé nuance musely být manuálně opraveny

### 7.3 Jak Byla AI Fakticky Používána

#### Co AI Dělala Dobře
1. **Generování velkého objemu dat:** 64 umělců, 65 akcí konsistentně
2. **Strukturování kódu:** XML/XSD/JSON syntaxe bez chyb
3. **Psaní dokumentace:** Popis API, strukturované příklady
4. **Edukace:** Návrhy na nejlepší praktiky (JSON-LD, OpenAPI)

#### Co Vyžadovalo Člověka
1. **Konceptualizace:** Volba "multižánrového festivalu"
2. **Správa údajů:** Zajištění datové integrity a logiky
3. **Testování:** Ověření, že všechny identifikátory jsou správné
4. **Kvalitativní posouzení:** Zda HTML a CSS vypadají správně

### 7.4 Poučení z Projektu

1. **AI je nástroj, ne náhrada za člověka**
   - AI urychluje rutinní práci (XSLT, XML), návrh zbývá člověku

2. **Přesní podklady jsou důležité**
   - Skvělý prompt vytvoří skvělý výstup
   - Nejasný prompt → zbytečné opravy

3. **Verifikace je nutná**
   - Všechny AI výstupy byly manuálně zkontrolovány
   - Bez toho by projekt nebyl funkční

4. **Kombinace je klíčová**
   - AI pro generování dat a rutinu
   - Člověk pro architekturu a kontrolu
   - Výsledek je lepší než sámo

---

## ZÁVĚR

Projekt **ZVUKY ÚDOLÍ** demonstruje fulcejční webový projekt s:
- ✅ Realistickými daty festiválu
- ✅ Komplexním datovým modelem (XSD)
- ✅ Funkčním REST API (OpenAPI)
- ✅ Sémantickým webem (HTML5 + CSS)
- ✅ Využitím AI k urychlenému vývoji

AI byla užitečná pro zvýšení produktivity, ale klíčové rozhodnutí (architektura, koncept, kontrola kvality) zbývaly člověku.

---

## PŘÍLOHY

### Příloha A: Struktura Projektu
```
festival-project/
├── data/
│   ├── specification.md
│   ├── festival.xml
│   └── festival.xsd
├── api/
│   ├── openapi.yaml
│   ├── transformation/
│   │   ├── festival-to-json.xslt
│   │   ├── venues-to-json.xslt
│   │   ├── venue-detail-to-json.xslt
│   │   ├── performers-to-json.xslt
│   │   ├── performer-detail-to-json.xslt
│   │   ├── events-to-json.xslt
│   │   └── event-detail-to-json.xslt
│   ├── json/
│   │   ├── festival.json
│   │   ├── venues.json
│   │   ├── venue-detail.json
│   │   ├── performers.json
│   │   ├── performer-detail.json
│   │   ├── events.json
│   │   └── event-detail.json
│   └── json-schema/
│       ├── festival-schema.json
│       ├── venues-schema.json
│       ├── venue-detail-schema.json
│       ├── performers-schema.json
│       ├── performer-detail-schema.json
│       ├── events-schema.json
│       └── event-detail-schema.json
└── web/
    ├── index.html
    ├── program.html
    ├── performers.html
    ├── practical-info.html
    └── style.css
```

### Příloha B: Příkazy pro Validaci

**Validace XML proti XSD:**
```bash
xmllint --schema data/festival.xsd data/festival.xml
```

**Validace JSON proti schéatu:**
```bash
ajv compile -s api/json-schema/festival-schema.json
ajv validate -s api/json-schema/festival-schema.json -d api/json/festival.json
```

**OpenAPI validace:**
```bash
npx openapi-validator api/openapi.yaml
```

### Příloha C: Příklady REST API Dotazů

```http
# Získání informací festivalu
GET /api/festival

# Seznam všech míst
GET /api/venues

# Detail konkrétního místa
GET /api/venues/v1

# Seznam všech umělců se stránkováním
GET /api/performers?page=1&pageSize=10

# Detail konkrétního umělce
GET /api/performers/p1

# Všechny akce se filtrováním
GET /api/events?day=1&venueId=v1&page=1

# Detail konkrétní akce
GET /api/events/e1
```

---

**Konec dokumentace**  
Created: 15. února 2026  
Version: 1.0
