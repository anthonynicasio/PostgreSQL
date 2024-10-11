-- Create characters table
CREATE TABLE characters (
  character_id SERIAL PRIMARY KEY,
  name VARCHAR(30) NOT NULL,
  homeland VARCHAR(30),
  favorite_color VARCHAR(30)
);

-- Insert data into characters table
INSERT INTO characters (name, homeland, favorite_color) 
VALUES 
  ('Mario', 'Mushroom Kingdom', 'Red'),
  ('Luigi', 'Mushroom Kingdom', 'Green'),
  ('Bowser', 'Koopa Kingdom', 'Green'),
  ('Daisy', 'Sarasaland', 'Yellow'),
  ('Yoshi', 'Dinosaur Land', 'Green');

-- Create more_info table
CREATE TABLE more_info (
  more_info_id SERIAL PRIMARY KEY,
  birthday DATE,
  height_in_cm INT,
  weight_in_kg NUMERIC(4,1),
  character_id INT NOT NULL UNIQUE REFERENCES characters(character_id)
);

-- Insert data into more_info table
INSERT INTO more_info (birthday, height_in_cm, weight_in_kg, character_id)
VALUES
  ('1981-07-09', 155, 64.5, 1),
  ('1983-07-14', 175, 48.8, 2),
  ('1985-10-18', 173, 52.2, 3),
  ('1950-01-10', 66, 35.6, 4),
  ('1990-10-29', 258, 300, 5);

-- Create sounds table
CREATE TABLE sounds (
  sound_id SERIAL PRIMARY KEY,
  filename VARCHAR(40) NOT NULL UNIQUE,
  character_id INT NOT NULL REFERENCES characters(character_id)
);

-- Insert data into sounds table
INSERT INTO sounds (filename, character_id)
VALUES
  ('its-a-me.wav', 1),
  ('yippee.wav', 1),
  ('ha-ha.wav', 2),
  ('yay.wav', 3),
  ('woo-hoo.wav', 3),
  ('mm-hmm.wav', 3),
  ('yahoo.wav', 1);

-- Create actions table
CREATE TABLE actions (
  action_id SERIAL PRIMARY KEY,
  action VARCHAR(20) UNIQUE NOT NULL
);

-- Insert data into actions table
INSERT INTO actions (action)
VALUES
  ('run'),
  ('jump'),
  ('duck');

-- Create character_actions table (join table)
CREATE TABLE character_actions (
  character_id INT NOT NULL,
  action_id INT NOT NULL,
  PRIMARY KEY (character_id, action_id),
  FOREIGN KEY (character_id) REFERENCES characters(character_id),
  FOREIGN KEY (action_id) REFERENCES actions(action_id)
);

-- Insert data into character_actions table
INSERT INTO character_actions (character_id, action_id)
VALUES
  (1, 1), (1, 2), (1, 3),
  (2, 1), (2, 2), (2, 3),
  (3, 1), (3, 2), (3, 3),
  (4, 1), (4, 2), (4, 3),
  (5, 1), (5, 2), (5, 3);
