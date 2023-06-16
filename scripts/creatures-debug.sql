 SELECT "Entity".id_entity,
    "Entity".name,
    "Entity".x,
    "Entity".y,
    "Entity".id_game,
    "Entity".description,
    "Creature".action_points,
    "Creature"."HP"
   FROM "Entity"
     LEFT JOIN "Creature" ON "Entity".id_entity = "Creature".id_entity
     LEFT JOIN "Game" ON "Game".id_game = "Entity".id_game
  WHERE "Creature".action_points IS NOT NULL AND "Game".id_game = (( SELECT "Game_1".id_game
           FROM "Game" "Game_1"
          ORDER BY "Game_1".id_game DESC
         LIMIT 1))
  ORDER BY "Entity".id_game DESC
 LIMIT 100;
