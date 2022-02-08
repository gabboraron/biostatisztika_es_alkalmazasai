# Biostatisztika és alkalmazásai
- [Ferenci Tamás YouTube](https://www.youtube.com/c/FerenciTam%C3%A1s/videos)
- [Solymosi Norbert -  R - Erre könyv - pdf](https://cran.r-project.org/doc/contrib/Solymosi-Rjegyzet.pdf)

Számonkérések:
- 1 db beadandó - szorgalmi utolsó napjáig
- 1 db zh - félév felénél kb
- írásbeli vizsga

8:20-kor kezdünk - kivéve első három héten

## EA1 - R ismétlés - Statisztika alapfogalmai áttekintés
### Statisztika alapfogalmai áttekintés
- **valségszámítás -> statisztika ->alkalmazott stat ágak**
- **bioinformatika:** inkább stámítástechnikai kérdések, nagy adatbázisokon hatékony algoritmikus megoldások
- **biomatematika:** inkább nem statisztikai elsősorban analízisbeli modellezési eszközök, diffegyenletek haszálata

**milyen alapokra van szükség:**
- valségsázmítás, linalg
- mat stat
- orvosi ismeretek

**stat programcsomagok:**
- SAS - gyyógyszeripar kedveli
- SPSS - Általános célú stat programcsomag szociológusoknak
- R - kalsszikus akadémiai programcsomag

**demonstratív kérdések:**
- egy új vérnyomáscsökkentő csökkenti-e a vérnyomást
  - nem okoz epilepszia-kockázatot?
- milyen tényezők hatnak adott rákban a túlélési időre?
- mennyi jelen kurzus hallgatóinak átlagos testtömege?

**definíciók:**
- **véges sokaság - populáció**: egzakt halmaz amire a kérdésünk irányul: *mennyi jelen kurzus hallgatóinak átlagos testtömege?*
  - **fiktív végtelen sokaság**: nem névszerint felsorolható, de körülírható jellemzőkkel rendlekező halmaz, `eloszlás`sal megadott érték
- **megfigelési egység**: a populáció elemei
- **változ/ismérv**: a változó értékének meghatározása egy adott sokasági elemre: megfigyelés <- az összes eelem nagyon ritkán megfigyelhető
- **mintavételes helyzet**: általában nem tudjuk a teljes sokaságot megfigyleni, de a mgefigylehető része a **minta**
- **induktív statisztika**: hogyan tudnk kövekteztetni az egész sokaságra? *pl: hogyan mondható meg 100 szám átlaga ha csak 99-et ismerek?**
- **deskriptív statisztika**: a statisztika azon fejezete ami nem törődik a mintavétellel
- **proxy változók**: *pl: mekkora a szocio-ökonomia értéke valakinek - kereset, tásradalmi státusz, stb-?

#### mérési skálák/adatok jellemzői:
> mi az a művelet amit érdemes elvégezni?
- Stevens 1946:
  - minőségi változó:
    - **nominális skála:** egy ismérv nominális skálán van mérve, ha két megfigyelési egységgel nem ugyanazt az értéket veszik fel. *pl: szemszínek: egyik barna, másik kék, akkor nem adható hozzá átlág, stb...*
    - **ordinális skála:** a nominális + értlemezett, hogy melyik nagyobb. *pl: egy közgáz bsc és egy orvosi MD foknál egyik nagyobb, de semmi köze egymáshoz*
  - mennyiségi változó:  
    - **intervallum skála:** a különbségnek is van értelme. *pl: Aladár testőmérséklete 40, Béla 38: egyik nagyobb - másik kisebb; kivonhatóak egymásból; de Aadár hőmérsékletének semmi köze Béláéhoz*
    - **arányskála:** van értelme az osztásnak is. *pl: Aladár 50 kg, Béla 80 kg, akkor egyik nagyobb, A és B nek nincs köze egymáshoz, de mondható, hogy B x %-al nagyobb*

- **Diszkrét változó:** a kimenetek száma egy diszkrét halmaz: véges/megszámlálhatóan végtelen, *pl szemszín* a nominális és ordinális változók diszkrétek
- **folytonos változó:** kontinuum sázmosságú, *pl: testhő*, a mennyiségi változók folytonosak

***kivétel:** hányszor volt infarktusod?*

- időbeli jelleg:
  - **keresztmetszeti**: egy időpontban mértünk, nincs utánkövetés 
  - **longitudinális / hosszmetszeti / panel adat**: egymás után többször mértük le, az alanyoknak időbeli követése is van; cohort; eset kontrol;

- prevalencia: hányan vannak? stock jellegű
- incidnecia: hány új valmai van? flow jellegű


## R ismétlés
Egy running examplet használunk a félév során

- Birth Weight adatbázis (1986): hogyan prediktálható az újszükött születési tömege? 
  - keresztmetszeti adatbázis

gyerek születési tömege (g): `alacsoy < 2500 `
