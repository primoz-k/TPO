-- Lokacije vhodov v določeno halo
CREATE VIEW VhodiVHalo ASSELECT IDHale, LokacijaFROM VhodNATURAL JOIN Hala

-- Lokacije trgovine
CREATE VIEW LokacijeTrgovine ASSELECT IDTrgovine, LokacijaFROM TrgovinaNATURAL JOIN HalaNATURAL JOIN Vhod