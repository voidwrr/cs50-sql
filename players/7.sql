SELECT COUNT(*) FROM "players"
WHERE "bats" = 'R' AND "throw" = 'L' OR
"bats" = 'L' AND "throw" = 'R';
