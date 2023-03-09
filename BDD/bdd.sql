CREATE TABLE IF NOT EXISTS user (
    user_id INT PRIMARY KEY,
    user_nom VARCHAR,
    user_mdp VARCHAR,
    user_mail VARCHAR
);

CREATE TABLE IF NOT EXISTS game (
    game_id INT PRIMARY KEY,
    game_genre VARCHAR(50),
    game_duree INT,
    game_lieu VARCHAR,
    game_id_pack INT,
    game_categorie VARCHAR(50),
    game_nbjoueur INT,
    game_environnement VARCHAR(50),
    game_nom VARCHAR,
    game_nomeng VARCHAR,
    game_description TEXT,
    game_decriptioneng TEXT,
    game_prix FLAOT
);

CREATE TABLE IF NOT EXISTS pack (
    pack_id INT PRIMARY KEY,
    pack_description TEXT,
    pack_descriptioneng TEXT,
    pack_nom TEXT,
    pack_nbgame INT,
    pack_prix INT
);

CREATE TABLE IF NOT EXISTS booking (
    resa_id INT PRIMARY KEY,
    resa_horaire INT,
    id_user INT,
    resa_idgame INT
);

CREATE TABLE IF NOT EXISTS FAQ_sujet (
    faqsj_idsujet INT PRIMARY KEY,
    faqsj_sujet TEXT,
    faqsj_titre TEXT,
    faqsj_description TEXT,
    Faqsj_rep TEXT
);

CREATE TABLE IF NOT EXISTS review (
    review_id INT PRIMARY KEY,
    review_id_game INT,
    review_message TEXT,
    review_note TINY¨SZINT
);