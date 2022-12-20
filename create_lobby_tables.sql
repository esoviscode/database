CREATE TABLE public."Game"
(
    id_game serial NOT NULL,
    token character varying,
    id_host bigint,
    id_campaign bigint,
    game_state character varying,
    PRIMARY KEY (id_game),
    CONSTRAINT game_state_enum CHECK (game_state in ('LOBBY', 'STARTING', 'ACTIVE', 'INACTIVE', 'FINISHED'))
);

ALTER TABLE IF EXISTS public."Game"
    OWNER to admin;
	
CREATE TABLE public."User"
(
    id_user serial NOT NULL,
    id_game serial,
    discord_id bigint,
    PRIMARY KEY (id_user),
    FOREIGN KEY (id_game)
        REFERENCES public."Game" (id_game) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

ALTER TABLE IF EXISTS public."User"
    OWNER to admin;
    