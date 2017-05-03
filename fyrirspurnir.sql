a.
SELECT lag.nafn
FROM diskur
INNER JOIN lag
ON lag.diskur_ID = diskur.ID

b.
SELECT lag.nafn
FROM flytjandi
INNER JOIN lag
ON *******
WHERE nafn like 'Kendrick Lamar'

c.
SELECT lag.nafn
FROM tegund
INNER JOIN lag
ON lag.tegund_ID = tegund.ID
WHERE nafn like 'Rap'

d.
SELECT nafn
FROM lag
WHERE lengd_sek > 300

e.
SELECT nafn
FROM diskur
WHERE utgafudagur > '2010-01-01'

f.
SELECT diskur.nafn, flytjandi.nafn, diskur.utgafudagur
FROM utgefandi
INNER JOIN diskur
ON utgefandi.diskur_ID = diskur.ID
ORDER BY nafn
LIMIT 2

g.
SELECT flytjandi.nafn, utgefandi.nafn
FROM lag
INNER JOIN
