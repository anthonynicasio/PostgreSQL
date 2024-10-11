# Mario Database: Table Structure and Data

This file provides an overview of the database schema, table structure, and sample data used in the Mario Database.

## Table Structures

### 1. `characters` Table
| Column           | Type        | Constraints           |
|------------------|-------------|-----------------------|
| `character_id`   | SERIAL      | PRIMARY KEY           |
| `name`           | VARCHAR(30) | NOT NULL              |
| `homeland`       | VARCHAR(30) |                       |
| `favorite_color` | VARCHAR(30) |                       |

### 2. `more_info` Table
| Column         | Type        | Constraints                       |
|----------------|-------------|-----------------------------------|
| `more_info_id` | SERIAL      | PRIMARY KEY                       |
| `birthday`     | DATE        |                                   |
| `height_in_cm` | INT         |                                   |
| `weight_in_kg` | NUMERIC(4,1)|                                   |
| `character_id` | INT         | UNIQUE, FOREIGN KEY (characters)  |

### 3. `sounds` Table
| Column         | Type        | Constraints                       |
|----------------|-------------|-----------------------------------|
| `sound_id`     | SERIAL      | PRIMARY KEY                       |
| `filename`     | VARCHAR(40) | NOT NULL, UNIQUE                  |
| `character_id` | INT         | FOREIGN KEY (characters)          |

### 4. `actions` Table
| Column         | Type        | Constraints                       |
|----------------|-------------|-----------------------------------|
| `action_id`    | SERIAL      | PRIMARY KEY                       |
| `action`       | VARCHAR(20) | UNIQUE, NOT NULL                  |

### 5. `character_actions` Table (Many-to-Many Join Table)
| Column         | Type        | Constraints                                                     |
|----------------|-------------|-----------------------------------------------------------------|
| `character_id` | INT         | FOREIGN KEY (characters), PRIMARY KEY (character_id, action_id) |
| `action_id`    | INT         | FOREIGN KEY (actions), PRIMARY KEY (character_id, action_id)    |

## Sample Data

### `characters` Table
| character_id | name   | homeland          | favorite_color |
|--------------|--------|-------------------|----------------|
| 1            | Mario  | Mushroom Kingdom  | Red            |
| 2            | Luigi  | Mushroom Kingdom  | Green          |
| 3            | Bowser | Koopa Kingdom     | Green          |
| 4            | Daisy  | Sarasaland        | Yellow         |
| 5            | Yoshi  | Dinosaur Land     | Green          |

### `more_info` Table
| more_info_id | birthday   | height_in_cm | weight_in_kg | character_id |
|--------------|------------|--------------|--------------|--------------|
| 1            | 1981-07-09 | 155          | 64.5         | 1            |
| 2            | 1983-07-14 | 175          | 48.8         | 2            |
| 3            | 1985-10-18 | 173          | 52.2         | 3            |
| 4            | 1950-01-10 | 66           | 35.6         | 4            |
| 5            | 1990-10-29 | 258          | 300          | 5            |
