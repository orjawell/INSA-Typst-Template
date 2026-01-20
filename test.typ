#import "./insa-template/document-template.typ": *
#let name_document = [*TD 5 - Sécurité Réseaux*]

#show: doc => insa-report(
  insa: "cvl",
  title: name_document,
  authors: [
    *BARBIER Ted*


    Département STI
  ],
  date: "20/01/2026",
  doc,
)
