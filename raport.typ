#set text(
  font: "New Computer Modern",
  size: 9.5pt,
)
#set page(
  paper: "a4",
  margin: (x: 1cm, y: 1cm),
  numbering: "1",
)
#show link: underline

#set table(
  stroke: none,
  fill: (x, y) => if y == 0 {
    gray
  } else if calc.rem(y, 2) == 0 {
    silver
  },
)

#align(center)[
  #stack(
    text(size: 20pt)[*Work from Home KVM*],
    v(12pt),
    text(size: 15pt)[Krzysztof Nasuta 193328],
    v(12pt),
    text(size: 10pt)[21.05.2025 - Zarządzanie Firmą Informatyczną],
  )
]

Poniższy raport został stworzony w celu analizy i oceny produktu _Work from Home KVM_. Jest to urządzenie, łączące w sobie funkcje przełącznika KVM oraz dock'a Thunderbolt. Jego głównym celem jest umożliwienie pracy zdalnej w sposób bardziej komfortowy i wydajny. Ma on rozwiązać problemy pracy zdalnej związanej z współdzieleniem zasobów komputerowych, takich jak klawiatura, mysz i monitor. Produkt ten jest skierowany do osób pracujących zdalnie, które potrzebują elastyczności i wygody w korzystaniu z różnych urządzeń.

= Generowanie pomysłów
#grid(
  columns: (2fr, 1fr),
  gutter: 0.5cm,
  [
Punktem wyjścia dla opracowania produktu WFH KVM była rosnąca potrzeba wygodnej pracy zdalnej i hybrydowej. Pracownicy coraz częściej korzystają równolegle z dwóch komputerów - służbowego i prywatnego - co rodzi potrzebę szybkiego przełączania się między nimi przy zachowaniu jednego zestawu peryferiów. Zidentyfikowano również potrzebę stworzenia urządzenia klasy premium tworzonego przez lokalnego producenta. 

W toku analizy rozważono kilka koncepcji:
- klasyczną stację dokującą z wieloma portami,
- samodzielny przełącznik KVM,
- urządzenie łączące KVM i stację dokującą.
  ],
  image("img/wfh-kvm.jpg")
)


== Analiza rynku

Obecnie rynek KVM jest zdominowany przez budżetowych chińskich producentów, takich jak _Unitek_ czy _UGreen_. Oferują oni tanie przełączniki KVM, które są popularne wśród użytkowników domowych. Niestety, nie sprawdzają się one w przypadku pracy zdalnej, ponieważ nie posiadają odpowiednich portów i funkcji. Głównym problemem jest brak wsparcia dla Thunderbolt 3 i 4 - standardów kosztownych, ale popularnych w profesjonalnych laptopach.

W przypadku stacji dokujących, rynek jest bardziej zróżnicowany. Dostępnych jest wiele bardzo tanich modeli, ale ich funkcjonalność jest ograniczona. W przypadku segmentu premium, rynek jest zdominowany przez kilku dużych graczy, takich jak _Dell_, _HP_ czy _Lenovo_. Oferują oni stacje dokujące o wysokiej jakości wykonania i dużej funkcjonalności, ale są one bardzo drogie i dostosowane głównie do laptopów ich producentów.

Według #link("https://www.linkedin.com/pulse/dock-future-anticipated-docking-station-market-soars-9tetf#:~:text=The%20global%20docking%20station%20market,corporate%2C%20education%2C%20healthcare%2C%20and%20retail")[raportu _Econ Market Research_] globalny rynek stacji dokujących osiągnie ok. 2,84 mld USD do 2031 (skumulowany roczny wskaźnik wzrostu #sym.tilde 6,9%)
Rynek przełączników KVM wyceniony był na 685,68 mln USD w 2023 i ma wzrosnąć do 1159,65 mln USD do 2032 przez #link("https://www.fortunebusinessinsights.com/kvm-switches-market-110777#:~:text=How%20much%20was%20the%20global,switches%20market%20worth%20in%202023")[_Fortune Business Insights_] (CAGR #sym.tilde 6%). Jest więc to rynek o dużym potencjale wzrostu, ale również sporej konkurencji.


== Porównanie koncepcji

W przypadku klasycznych stacji dokujących, istnieje duża konkurencja na rynku. Wiele modeli oferuje różne funkcje, ale nie wszystkie z nich są dostosowane do pracy zdalnej. Wejście na rynek z takim produktem wiązałoby się z dużymi kosztami marketingowymi i ryzykiem niepowodzenia.

Samodzielny przełącznik KVM jest popularnym rozwiązaniem, ale nie zawsze spełnia oczekiwania użytkowników. Główna wadą rozwiązań dostępnych na rynku jest ich ograniczona kompatybilność z laptopami. Aby komfortowo pracować zdalnie, użytkownicy często potrzebują dodatkowo stacji dokującej, co zwiększa koszty i zajmuje dodatkowe miejsce na biurku. 

Z tego powodu zdecydowano się na stworzenie produktu łączącego funkcje przełącznika KVM i stacji dokującej. Dzięki temu użytkownicy będą mogli korzystać z jednego urządzenia, które spełnia wszystkie ich potrzeby. Koszt produkcji takiego urządzenia jest wyższy niż w przypadku klasycznego przełącznika KVM, ale łączy ono w sobie funkcje dwóch urządzeń, co czyni je bardziej atrakcyjnym dla użytkowników.

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  gutter: 0.5cm,
  grid.cell(colspan: 2,
    align(center)[*Klasyczny KVM i stacja dokująca*],
  ),
    grid.cell(colspan: 2,
    align(center)[*Work from Home KVM*],
  ),
  [#image("img/classic.drawio.png")],
  [
    - Stacja dokująca służy do zasilania laptopa.
    - Porty stacji dokującej podłączone są do klasycznego KVM.
    - Oba urządzenia należy osobno zasilać.
    - Takie rozwiązanie wymaga stosunkowo dużej znajomości sprzętu.
  ],
  [#image("img/wfh-kvm.drawio.png")],
  [
    - WFH KVM działa jako główne spoiwo wszystkich urządzeń.
    - Ten sam kabel zasila KVM, laptopa i peryferia.
    - Rozwiązanie prostsze w obsłudze i niewymagające dodatkowej wiedzy.
    - Zajmuje mniej miejsca na biurku.
  ],
)

= Strategia firmy

Strategia firmy wprowadzającej produkt WFH KVM opiera się na podejściu niszowym, skoncentrowanym na rosnącym segmencie użytkowników pracujących zdalnie i hybrydowo. Głównym celem strategicznym jest pozycjonowanie urządzenia jako nowoczesnego, profesjonalnego i niezawodnego rozwiązania dla osób, które korzystają z więcej niż jednego komputera w domowym środowisku pracy. Ma być to rozwiązanie bezkompromisowe, stawiające na jakość i funkcjonalność, a nie na cenę.

Kluczowe elementy strategii:
- *Innowacyjność i specjalizacja*: Firma skupia się na dostarczaniu wyspecjalizowanych rozwiązań integrujących funkcje stacji dokującej i przełącznika KVM, co odróżnia ją od typowych producentów stacji dokujących lub akcesoriów biurkowych.
- *Wysoka jakość i niezawodność*: Strategia zakłada inwestycję w jakość komponentów i dokładność montażu, tak aby produkt był trwały, stabilny i bezproblemowy w użytkowaniu - co ma kluczowe znaczenie w środowiskach zawodowych. Jest to produkt premium, który ma być postrzegany jako inwestycja w komfort pracy.
- *Elastyczna produkcja i rozwój wariantów*: Strategia obejmuje wprowadzanie na rynek kilku wersji produktu. Powinny być one dostosowane do różnych potrzeb użytkowników. Różnice dotyczyłyby tylko konfiguracji i liczby portów, a nie jakości wykonania.
- *Sprzedaż i marketing*: Wprowadzenie produktu na rynek powinno być wspierane przez kampanię marketingową, która podkreśla innowacyjność i jakość produktu. Kluczowe kanały to media społecznościowe, blogi technologiczne oraz współpraca z influencerami w branży IT. Początkowo produkt powinien być dostępny tylko w sprzedaży internetowej, co pozwoli na ograniczenie kosztów dystrybucji i dotarcie do szerszej grupy odbiorców. W miarę wzrostu popularności produktu, można rozważyć współpracę z detalistami i dystrybutorami.

== Grupa docelowa

Grupa docelowa to osoby pracujące zdalnie lub hybrydowo, które korzystają z więcej niż jednego komputera. Według danych udostępnionych przez Główny Urząd Statystyczny, w trzecim kwartale 2024 roku w Polsce pracowało zdalnie 2,7 mln osób, co stanowi 15,7% wszystkich zatrudnionych. Jest to grupa dynamicznie rosnąca, szczególnie od czasu pandemii COVID-19. Z danych analitycznych wynika, że praca zdalna cieszy się największą popularnością w następujących branżach:
- Informacja i komunikacja
- Działalność profesjonalna, naukowa i techniczna
- Działalność finansowa i ubezpieczeniowa
- Edukacja

Grupę docelową należy ograniczyć dodatkowo do osób, posiadających, poza służbowym, również komputer prywatny.

= Analiza SWOT

#block(breakable: false)[
  #set pad(x: 0.25cm, y: 0.35cm)
  #align(center)[
    #grid(
      columns: (1fr, 5fr, 5fr),
      [], 
      block(fill: rgb("#cff3ad"), width: 100%)[#text(size: 15pt)[#pad[*Pozytywne*]]], 
      block(fill: rgb("#f9a8a8"), width: 100%)[#text(size: 15pt)[#pad[*Negatywne*]]],
      block(fill: rgb("#fef6b8"), height: 5cm)[#v(2cm) #rotate(-90deg)[#text(size: 15pt)[#pad[*Wewnętrzne*]]]], 

      block(fill: rgb("#e2ef87"), width: 100%, height: 5cm)[
        #pad[
          #text(size: 15pt)[*Mocne strony*]

          - *Wszechstronność*
          - *Komfort* użytkowania
          - Jedno urządzenie zamiast dwóch
          - Wysoka *jakość* wykonania
          - Wysoka wydajność urządzenia
        ]
      ], 
      
      block(fill: rgb("#fac284"), width: 100%, height: 5cm)[
        #pad[
          #text(size: 15pt)[*Słabe strony*]

          - Wysoki *koszt* produktu
          - *Złożoność* technologiczna
          - Ograniczona kompatybilność z starymi urządzeniami
          - Konkurencja ze strony tanich rozwiązań
        ]
      ],

      block(fill: rgb("#c6d8ec"), height: 5cm)[#v(2cm)  #rotate(-90deg)[#text(size: 15pt)[#pad[*Zewnętrzne*]]]],
      
      block(fill: rgb("#a9d0ba"), width: 100%, height: 5cm)[
        #pad[
          #text(size: 15pt)[*Szanse*]

          - *Rosnący trend* pracy zdalnej
          - Rozwój rynku stacji dokujących oraz KVM
          - *Niewykorzystana nisza* na rynku
        ]
      ],

      block(fill: rgb("#c2a4b7"), width: 100%, height: 5cm)[
        #pad[
          #text(size: 15pt)[*Zagrożenia*]

          - Duża *konkurencja* na rynku
          - Szybka *zmiana standardów* technologicznych
          - Niepewność co do przyszłości pracy zdalnej
          - Presja cenowa ze strony rozwiązań *budżetowych*
          - *Mała grupa osób gotowych* na zakup drogiego urządzenia
        ]
      ]
    )
  ]
]

= Kompozycja marketingowa

#block(breakable: false)[
  #set pad(x: 0.25cm, y: 0.35cm)
  #set block(height: 6cm)
  #align(center)[
    #grid(
      columns: (1fr, 1fr),
      block(fill: rgb("#dbe3b7"), width: 100%,)[
        #pad[
          #text(size: 15pt)[*Produkt*]

          - *Kilka wariantów* urządzenia, różniących się liczbą portów i ich rodzajem. 
          - Wsparcie dla najnowszych standardów, takich jak *Thunderbolt 4, USB 4, HDMI 2.1, DisplayPort 2.1*.
          - *Bezkompromisowe* rozwiązanie dla wymagających użytkowników.
          - Wysoka *jakość* wykonania i niezawodność.
          - Wysoka *wydajność* urządzenia.
          - *Minimalistyczny* design.
        ]
      ],
      block(fill: rgb("#c6ebcc"), width: 100%)[
        #pad[
          #text(size: 15pt)[*Cena*]

          - Cena produktu w zależności od wariantu: *999 - 1999 PLN*.
          - Segment *premium*, droższy niż chińska konkurencja. 
          - Rozwiązanie *tańsze* niż zakup dwóch osobnych urządzeń.
        ]
      ],
      block(fill: rgb("#b1f2e0"), width: 100%)[
        #pad[
          #text(size: 15pt)[*Promocja*]

          - Kampania marketingowa w *mediach społecznościowych*, np. Linkedin
          - Współpraca z *influencerami* w branży IT.
          - Kampania *reklamowa* w wyszukiwarkach internetowych.
          - Program partnerski z dystrybutorami i resellerami IT umożliwi szerokie dotarcie do klientów korporacyjnych.
          - Przygotowanie *materiałów promocyjnych*, takich jak filmy instruktażowe i prezentacje produktu.
        ]
      ],
      block(fill: rgb("#99fcf7"), width: 100%)[
        #pad[
          #text(size: 15pt)[*Dystrybucja*]

          - Sprzedaż *internetowa* jako główny kanał dystrybucji.
          - Własny *sklep internetowy* oraz współpraca z *platformami e-commerce*, takimi jak Allegro, Amazon.
          - Docelowo współpraca z detalistami i dystrybutorami IT.
          - Możliwość sprzedaży bezpośredniej do klientów korporacyjnych.
        ]
      ], 
    )
  ]
  #v(6cm)
]

= Analiza ryzyka

#table(
  columns: 6,
  inset: 8pt,
  align: horizon,
  table.header(
    [], [*Opis ryzyka*], [*Prawd.* \ #text(size: 8pt)[(1-5)]], [*Wpływ* \ #text(size: 8pt)[(1-5)]], [*Ocena* \ #text(size: 8pt)[Prawd. x wpływ]], [*Reakcje i działania*],
  ),
  [*1*], [Małe zainteresowanie produktem], [3], [5], [*15*], [Zwiększenie budżetu marketingowego, zmiana strategii promocji],
  [*2*], [Opóźnienia w procesie produkcji], [3], [4], [*12*], [Wybór sprawdzonego producenta, kontrola jakości],
  [*3*], [Braki komponentów], [2], [5], [*10*], [Znalezienie alternatywnych dostawców, zwiększenie zapasów],
  [*4*], [Obniżona jakość produktu], [1], [5], [*5*], [Wprowadzenie dodatkowych testów jakości, kontrola produkcji],
  [*5*], [Pojawienie się na rynku konkurencyjnych produktów], [4], [4], [*16*], [Monitorowanie rynku, dostosowanie strategii marketingowej i cenowej],
)

= Kosztorys

Produkcja w Azji z kontrolą jakości i testami funkcjonalnymi. 

Produkt w standardowej wersji - 1 złącze Thunderbolt 4, 4 złącza USB A 3.2, 2 złącza USB 4, 1 złącze HDMI 2.1 IN & OUT, 2 złącze DisplayPort 2.1 IN & OUT, 1 złącze RJ45, 2 złącza audio (jack 3.5mm), zasilanie Power Delivery 180W, aluminiową obudowę CNC, drewniane wykończenie. Droższe wersje różnią się jedynie liczbą portów i ich rodzajem. Z tego powodu koszt produkcji nie zmienia się znacząco w zależności od wersji.

#pagebreak()

== Szacunkowy koszt jednostkowy wg skali produkcji 

#table(
  columns: (1fr, auto, auto, auto, auto),
  inset: 8pt,
  align: horizon,
  table.header(
    [], [*100 szt.*], [*500 szt.*], [*1000 szt.*], [*5000 szt.*],
  ),

  [*PCB (projekt + produkcja)*], [120 zł], [90 zł], [70 zł], [50 zł],
  [*Układy Thunderbolt + kontrolery*], [250 zł], [220 zł], [200 zł], [180 zł],
  [*Konwertery video (HDMI/DP)*], [100 zł], [90 zł], [80 zł], [70 zł],
  [*Zasilanie (PD 100 W)*], [90 zł], [80 zł], [70 zł], [60 zł],
  [*Obudowa aluminiowa (CNC) + drewno*], [90 zł], [80 zł], [70 zł], [50 zł],
  [*Porty: USB, LAN, audio*], [50 zł], [45 zł], [40 zł], [35 zł],
  [*Montaż + testy*], [80 zł], [70 zł], [60 zł], [40 zł],
  [*Opakowanie + instrukcja*], [20 zł], [15 zł], [12 zł], [10 zł],

  [*Suma produkcji jednostkowej*], [*800 zł*], [*690 zł*], [*602 zł*], [*495 zł*],
)

== Koszty dodatkowe (na jednostkę)

#table(
  columns: (1fr, auto, auto, auto, auto),
  inset: 8pt,
  align: horizon,
  table.header(
    [], [*100 szt.*], [*500 szt.*], [*1000 szt.*], [*5000 szt.*],
  ),

  [*Marketing (kampanie, treści)*], [100 zł], [60 zł], [40 zł], [20 zł],
  [*Dystrybucja (logistyka, magazyn)*], [80 zł], [50 zł], [40 zł], [30 zł],
  [*Serwis i wsparcie*], [20 zł], [15 zł], [12 zł], [10 zł],

  [*Łączny koszt całkowity*], [*200 zł*], [*125 zł*], [*92 zł*], [*60 zł*],
)


== Roczne koszty personelu

#table(
  columns: (1fr, auto, auto, 1fr),
  inset: 8pt,
  align: horizon,
  table.header(
    [*Stanowisko*], [*Brutto miesięcznie*], [*Koszt pracodawcy / rok*], [*Uwagi*],
  ),

  [*Projektant PCB*], [13 000 zł], [#sym.tilde 187 248 zł], [1 etat, 12 mies.],
  [*Programista firmware*], [13 000 zł], [#sym.tilde 187 248 zł], [1 etat, 12 mies.],
  [*Konstruktor CAD*], [13 000 zł], [#sym.tilde 187 248 zł], [1 etat, 12 mies.],
  [*Tester QA*], [8 000 zł], [#sym.tilde 115 224 zł], [1 etat, 12 mies.],

  [*Suma kosztów personelu rocznie*], [], [*676 968 zł*], [],
)

== Podsumowanie kosztów

#table(
  columns: (1fr, auto, auto, auto, auto),
  inset: 8pt,
  align: horizon,
  table.header(
    [], [*100 szt.*], [*500 szt.*], [*1000 szt.*], [*5000 szt.*],
  ),
  [*Koszt produkcji jednostkowej*], [800 zł], [690 zł], [602 zł], [495 zł],
  [*Koszty dodatkowe*], [200 zł], [125 zł], [92 zł], [60 zł],
  [*Koszty personelu na jednostkę*], [6 769 zł], [1 354 zł], [677 zł], [135 zł],
  [*Łączny koszt całkowity*], [*7 769 zł*], [*2 169 zł*], [*1 271 zł*], [*690 zł*],
  [*Zysk brutto przy cenie sprzedaży 999 zł*], [-6 770 zł], [-1 170 zł], [-272 zł], [*309 zł*],
  [*Zysk brutto przy cenie sprzedaży 1499 zł*], [-6 270 zł], [-670 zł], [*228 zł*], [*809 zł*],
  [*Zysk brutto przy cenie sprzedaży 1999 zł*], [-5 770 zł], [-170 zł], [*728 zł*], [*1 309 zł*],
)

Jak można zauważyć, stałe koszty personelu (R&D) zdecydowanie przewyższają koszty produkcji i dodatkowe. Przy sprzedaży 100 oraz 500 sztuk rocznie, nie jest możliwe osiągnięcie zysku. Przy sprzedaży 1000 sztuk rocznie, możliwe jest osiągnięcie niewielkiego zysku przy cenie sprzedaży 1499 zł. Przy sprzedaży 5000 sztuk rocznie, możliwe jest osiągnięcie sporego zysku już przy cenie sprzedaży 999 zł, która jest konkurencyjna w stosunku do alternatywnych rozwiązań. 

#image("img/costs-plot.png")

= Harmonogram wprowadzenia produktu na rynek

#align(center)[
  #block(breakable: false)[
    #grid(
      columns: 13,
      gutter: 0.5cm,
      [Etap / Miesiąc], [1], [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12+],
      [Projektowanie techniczne (R&D)], grid.cell(colspan: 4, fill: green)[] , [], [], [], [], [], [], [], [],
      [Tworzenie prototypu], [], [], [], grid.cell(colspan: 2, fill: green)[], [], [], [], [], [], [], [],
      [Testowanie i optymalizacja], [], [], [], [], grid.cell(colspan: 3, fill: green)[], [], [], [], [], [],
      [Przygotowanie do produkcji], [], [], [], [], [], [], grid.cell(colspan: 2, fill: green)[], [], [], [], [],
      [Kampania przedsprzedażowa], [], [], [], [], grid.cell(colspan: 5, fill: green)[], [], [], [],
      [Oficjalna premiera i sprzedaż online], [], [], [], [], [], [], [], [], grid.cell(colspan: 4, fill: green)[],
      [Marketing i promocja], [], [], [], [], [], [], [], [], grid.cell(colspan: 4, fill: green)[],
    )
  ]
]
