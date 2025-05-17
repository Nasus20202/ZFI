#set text(
  font: "New Computer Modern",
  size: 10pt,
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

Punktem wyjścia dla opracowania produktu WFH KVM była rosnąca potrzeba wygodnej pracy zdalnej i hybrydowej. Pracownicy coraz częściej korzystają równolegle z dwóch komputerów - służbowego i prywatnego - co rodzi potrzebę szybkiego przełączania się między nimi przy zachowaniu jednego zestawu peryferiów. Zidentyfikowano również potrzebę stworzenia urządzenia klasy premium tworzonego przez lokalnego producenta. Obecnie rynek KVM jest zdominowany przez budżetowych chińskich producentów, takich jak _Unitek_ czy _UGreen_.

W toku analizy rozważono kilka koncepcji:
- klasyczną stację dokującą z wieloma portami,
- samodzielny przełącznik KVM,
- urządzenie łączące KVM i stację dokującą.

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

= Analiza SWOT

= Metoda 4P

= Kosztorys

= Wprowadzenie produktu na rynek
