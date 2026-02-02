# hr-attrition-analysis-sql
SQL analysis of HR attrition data (junior project)
# HR Attrition Analysis (SQL)  
# Analiza rotacji pracowników (SQL)

---

## Wersja polska

### Opis projektu
Celem projektu jest analiza odejść pracowników (attrition) na podstawie danych HR oraz identyfikacja zależności związanych z:
- działami firmy
- wiekiem
- odległością miejsca zamieszkania od miejsca pracy
- poziomem wynagrodzeń
- odejść pracowników

Projekt został wykonany w ramach przebranżowienia na stanowisko junior data analyst / HR analytics.

### Narzędzia
- SQL (SQLite / PostgreSQL)
- GitHub
- DBeaver

### Zakres analizy
W projekcie przeprowadzono m.in.:
- obliczenie ogólnego wskaźnika odejść
- analizę odejść według działów
- porównanie wynagrodzeń pracowników, którzy odeszli i pozostali
- analizę struktury wieku a odejścia
- pogłębioną analizę wieku według działów

### Struktura repozytorium
sql/
 ├── 01_exploration.sql
 └── 02_attrition_deep_dive.sql
 └── sql/03_distance_from_home.sql
 
### Kluczowe wnioski: 
- Najwyższy poziom odejść zaobserwowano w dziale Sales.
- Pracownicy, którzy odeszli, zarabiali średnio mniej niż pracownicy pozostający w firmie.
- Wyższa ilość odejść dotyczyła młodszych pracowników (poniżej 30 lat).
- W części grup liczba obserwacji była niewielka, co ogranicza możliwość jednoznacznych wniosków.

### Uwagi
- Analiza ma charakter eksploracyjny i opiera się na ograniczonym zbiorze danych.
  
## English version

### Project description
The goal of this project is to analyze employee attrition using HR data and identify patterns related to:
- company departments
- age
- distance from home
- salary levels
- attrition

This project was created as part of my transition into a junior data analyst / HR analytics role.

### Tools
- SQL (SQLite / PostgreSQL)
- GitHub
- DBeaver

### Analysis scope

The analysis includes:
- calculation of overall attrition rate
- attrition analysis by department
- salary comparison between employees who left and stayed
- age distribution analysis
- deeper age analysis by department

### Repository structure
sql/
 ├── 01_exploration.sql
 └── 02_attrition_deep_dive.sql
 └── sql/03_distance_from_home.sql

### Key insights
- The highest attrition rate was observed in the Sales department.
- Employees who left the company earned less on average than those who stayed.
- Higher attrition was observed among younger employees (under 30).
- Some groups had small sample sizes, which limits the strength of conclusions.

### Notes
This analysis is exploratory and based on a limited dataset.
