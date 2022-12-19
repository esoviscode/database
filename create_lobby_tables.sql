CREATE TABLE public."Game"
(
    id_game bigint NOT NULL,
    password character varying,
    id_host bigint,
    id_campaign bigint,
    game_state character varying,
    PRIMARY KEY (id_game),
    CONSTRAINT game_state_enum CHECK (game_state in ('LOBBY', 'STARTING', 'ACTIVE', 'INACTIVE'))
);

ALTER TABLE IF EXISTS public."Game"
    OWNER to admin;
	
CREATE TABLE public."User"
(
    id_user bigint NOT NULL,
    id_game bigint,
    discord_id bigint,
    PRIMARY KEY (id_user),
    FOREIGN KEY (id_game)
        REFERENCES public."Game" (id_game) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

ALTER TABLE IF EXISTS public."User"
    OWNER to admin;