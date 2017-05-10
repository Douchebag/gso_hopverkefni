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

f.
SELECT diskur.nafn, flytjandi.nafn, diskur.utgafudagur
FROM flytjandi
INNER JOIN lag
ON flytjandi.lag_ID = lag.ID
INNER JOIN diskur
ON lag.diskur_ID = diskur.ID
INNER JOIN utgefandi
ON diskur.utgefandi_ID = utgefandi.ID
ORDER BY 'utgefandi.nafn' ASC
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
ORDER BY 'lag.lengd_sek' DESC
LIMIT 5

h.
SELECT tegund.nafn, COUNT(diskur.nafn)
FROM lag
INNER JOIN diskur
ON lag.diskur_ID = diskur.ID
INNER JOIN tegund
ON lag.tegund_ID = tegund.ID
GROUP BY diskur.nafn
ORDER BY COUNT(diskur.nafn) DESC
LIMIT 2

i.
SELECT utgefandi.nafn, COUNT(diskur.nafn)
FROM diskur
INNER JOIN utgefandi
ON diskur.utgefandi_ID = utgefandi.ID
GROUP BY utgefandi.nafn
ORDER BY COUNT(diskur.nafn) ASC
LIMIT 1

j.*
SELECT diskur.nafn, tegund.nafn, utgefandi.nafn
FROM lag
INNER JOIN diskur
ON lag.diskur_ID = diskur.ID
INNER JOIN tegund
ON lag.tegund_ID = tegund.ID
INNER JOIN utgefandi
ON diskur.utgefandi_ID = utgefandi.ID
WHERE diskur.utgafudagur BETWEEN '1998-01-01' AND '2017-01-01'
GROUP BY utgefandi.nafn

k.
SELECT nafn, COUNT(nafn)
FROM lag
WHERE nafn LIKE 'A%' AND nafn LIKE '%s%'
group by nafn

l.
SELECT nafn, TIMESTAMPDIFF(YEAR, faedingardagur, CURDATE())
FROM flytjandi

m.
SELECT AVG(lengd_sek) as medaltalSek
FROM lag

n.
SELECT flytjandi.nafn, COUNT(lag.nafn)
FROM flytjandi
INNER JOIN lag
ON flytjandi.lag_ID = lag.ID
GROUP BY flytjandi.nafn
HAVING COUNT(lag.nafn) > 4

o.
SELECT flytjandi.nafn, lag.nafn
FROM flytjandi
INNER JOIN lag
ON flytjandi.lag_ID = lag.id
ORDER BY faedingardagur ASC
LIMIT 1
