# ZVUKY ÚDOLÍ – Specifikace Festivalu

## 1. Identita Festivalu

**Název:** ZVUKY ÚDOLÍ  
**Ročník:** 2026 (1. ročník)  
**Lokalita:** Údolí nad Zdobnicí, Česká Republika  
**Datumy:** 19.–21. června 2026 (3 dny)  

---

## 2. Cílové Publikum a Charakter Akce

**Cílové publikum:** Mladí dospělí a milovníci hudby (18–35 let)

**Charakter akce:**  
Multižánrový hudební festival zaměřený na elektronickou hudbu, indie rock, alternativu a experimentální zvuk. Festival propojuje živé koncerty s DJ sety a workshopy věnovanými tvorbě hudby a elektronice.

**Žánry/Témata:**
- Elektronická hudba (house, techno, ambient)
- Indie rock a alternativa
- Post-punk revival
- Experimentální hudba
- Live art performances a audio-vizuální instalace

---

## 3. Struktura Webu

Povinné sekce:

1. **Úvod (Homepage)**  
   - O festivalu, atmosféra, základní info
   - Galerie fotek z příprav

2. **Program**  
   - Denní rozpis koncertů
   - Filtrování podle dne a místa
   - Časy, účinkující, popis

3. **Účinkující**  
   - Kompletní seznam (60+ umělců)
   - Detail každého umělce (bio, fotka, žánr)
   - Propojení na program

4. **Praktické Informace**  
   - Místo konání, parkování, přístup
   - Ubytování v okolí
   - Bezpečnost, pravidla
   - Kontakt, FAQ

5. **Vstupenky** (info)  
   - Ceny, dostupnost

---

## 4. Výchozí Datová Základna – festival.xml

### XML Struktura

```xml
<festival>
  ├── <metadata> (název, rok, lokalita, datumy)
  ├── <venues> (min. 2 místa)
  │   └── <venue>
  │       ├── <name>, <address>, <capacity>
  │       └── <stages> (min. 1 scéna na místo)
  ├── <performers> (min. 60 účinkujících)
  │   └── <performer>
  │       ├── <name>, <genre>, <bio>, <image>
  │       └── <origin>
  └── <events> (min. 60 programových položek)
      └── <event>
          ├── <title>, <startTime>, <endTime>
          ├── <performer> (reference)
          ├── <venue>, <stage> (reference)
          ├── <day>
          └── <description>
```

### Minimální Datové Požadavky

- **3 dny:** 19.6. – 21.6.2026
- **2+ místa:** 
  - Hlavní areál (2 venkovní scény)
  - Pavilon (1 krytá scéna)
- **60+ účinkujících** (DJs, hudebníci, performance umělci)
- **60+ programových položek** (koncerty/sety po 45–90 minutách)

---

## 5. Tématická Konzistence

Festival ZVUKY ÚDOLÍ je fiktivní projekt inspirovaný reálnými festivaly, ale jako celek originální. Data (jména, časy, popis) jsou vygenerována s pomocí AI a vytvářejí koherentní festival s návazností na:
- Realismus programu (rozumné časy, délky)
- Diverzitu umělců (žánry, origine, pozadí)
- Logická místa konání a kapacity
