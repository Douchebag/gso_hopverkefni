a.
SELECT lag.nafn
FROM diskur
INNER JOIN lag
ON lag.diskur_ID = diskur.ID
WHERE diskur.nafn like 'Damn'

b.
SELECT lag.nafn
FROM lag
INNER JOIN flytjandi
ON flytjandi.lag_ID = lag.ID
WHERE flytjandi.nafn like 'Kendrick Lamar'

c.
SELECT lag.nafn
FROM tegund
INNER JOIN lag
ON lag.tegund_ID = tegund.ID
WHERE tegund.nafn like 'Rap'

d.
SELECT nafn
FROM lag
WHERE lengd_sek > 300

e.
SELECT nafn
FROM diskur
WHERE utgafudagur > '2010-01-01'

f.*****
SELECT diskur.nafn, flytjandi.nafn, diskur.utgafudagur
FROM flytjandi
INNER JOIN lag
ON flytjandi.lag_ID = lag.ID
INNER JOIN diskur
ON lag.diskur_ID = diskur.ID
INNER JOIN utgefandi
ON diskur.utgefandi_ID = utgefandi.ID
ORDER BY utgefandi.nafn
LIMIT 2

g.
SELECT flytjandi.nafn, utgefandi.nafn
FROM flytjandi
INNER JOIN lag
ON flytjandi.lag_ID = lag.ID
INNER JOIN diskur
ON lag.diskur_ID = diskur.ID
INNER JOIN utgefandi
ON diskur.utgefandi_ID = utgefandi.ID
