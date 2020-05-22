CREATE TABLE "users"
(
    "id"       INTEGER PRIMARY KEY AUTOINCREMENT,
    "username" TEXT    NOT NULL,
    "password" TEXT    NOT NULL
);

-- 'Alek' has password 'tutor'
-- 'Alla' has password 'student'

INSERT INTO "users"
VALUES (NULL, 'Alek', 'pbkdf2:sha256:150000$pb3cl2c7$a6b25f684e9c5f6b2bf420cb03ef3d37bb5600f38aff2287c88aad229e451fc6'),
       (NULL, 'Alla', 'pbkdf2:sha256:150000$oucQs5n9$4ebd3a7d23c2f7cd9cef1d7ecbe95b64b0a5394dc7a2fd3f4cccd7deac782599');
