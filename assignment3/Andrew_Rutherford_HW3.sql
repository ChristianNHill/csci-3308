SELECT name, statecode FROM states;
SELECT counties.name, states.statecode, states.population_1950, states.population_2010 FROM counties JOIN states ON states.statecode = counties.statecode WHERE counties.name LIKE '%Prince%' ORDER BY states.statecode ASC;
SELECT states.population_2010 FROM senators JOIN states ON states.statecode = senators.statecode WHERE senators.name LIKE '%Richard Lugar%';
SELECT COUNT(counties.statecode) FROM counties JOIN states ON states.statecode = counties.statecode WHERE states.name = 'Maryland';
SELECT name FROM states WHERE admitted_to_union = (SELECT MAX(admitted_to_union) FROM states);
SELECT name FROM senators WHERE affiliation = 'D' AND name not in (SELECT chairman FROM committees);