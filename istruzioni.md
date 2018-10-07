# ISTRUZIONI DIRECORY
Inserisco qui l'intestazione delle directory ed il loro funzionamento.

# @common; @SMEGen; T8; config.
https://github.com/T-800a/SME.Gen
Creazione e gestione delle task secondarie/sidemissions/logistiche:
--@SMEGen\fnc_srv\fn_createAO.sqf -- inseriamo il nome della task che vogliamo creare.
--config\maps\altis.hpp -- inseriamo a seconda della tipologia di task, la posizione ed i dati utitli alla creazione della task.
--config\missionTypes.hpp -- inseriamo la logica e la definizione per lo svolgimento missione e definizione della side.
--config\missionSites.hpp -- inseriamo la mission Types all'interno della classe di appartenenza.

# COS; EOS.
Creazione e gestione delle zone nemiche (max 4 zone per settore), e spawn zone civili.

# HG
https://github.com/Ppgtjmad/SimpleShops
Gestione risorse monetarie, player rank, negozi.

# INC_undercover
https://github.com/1ncontinentia/Incon-Undercover
Gestione undercover e reclutamento civili.
--INC_undercover\UCR_setup.sqf -- settaggio script
I civili sono inizialmente neutrali e posono essere reclutati solo se si è sotto copertura, se il comportamento nei loro confronti inizia ad essere "cattivo", potrebbero ribellarsi e creare una fazione ribelle perdendo il reclutamento.

# LARs
Spawn composizioni (per il momento non utilizzato).

# LV
Gestione IA simile EOS (per il momento non utilizzato)

# VCOMAI
Skill e comportamento IA

# RC_logic
Qui ho inserito tutti gli script da noi creati per gestire la logica ed il funzionamento della missione.
--RC_Logic\initMarkerUCM.sqf -- inizializza i marker della UCM.
--RC_Logic\ucmTasks.sqf --  logica task UCM.
--RC_Logic\initTrigger.sqf -- inizializza i trigger (settori).
--RC_Logic\initVar.sqf -- crea le variabili utili al controllo dei vari settori. I settori esistono in 4 stati (nemico, amico, neutro e contestato).
--RC_Logic\sectorControl.sqf -- logica per il controllo dei settori.
