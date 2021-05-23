importData = LOAD 'bikes.csv' USING PigStorage(',') AS  (date:chararray, total:int, pn:int, ps:int, bn:int, bs:int);

useData = FOREACH importData GENERATE date, total, bn, bs, pn, ps;



--hourGroup = GROUP purchaseData BY hourPurch;

--hourGroupSize = FOREACH hourGroup GENERATE group , COUNT(purchaseData);

--hourGroupOrder = ORDER hourGroupSize BY $1 DESC;

--topHours =  LIMIT hourGroupOrder 10;



--dayGroup = GROUP purchaseData BY dayPurch;	

--dayGroupSize = FOREACH dayGroup GENERATE group , COUNT(purchaseData);

--dayGroupOrder = ORDER dayGroupSize BY $1 DESC;

--topDays =  LIMIT dayGroupOrder 10;


DUMP useData;










