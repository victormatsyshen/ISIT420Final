importData = LOAD 'SeattleWeatherInput.csv' USING PigStorage(',') AS  (date:chararray, max:int, min:int, ave:double, departure:double, HDD:int, CDD:int, Precip:double,NewSnow:int,SnowDepth:int);

useData = FOREACH importData GENERATE date, max, min, ave, Precip;



--hourGroup = GROUP purchaseData BY hourPurch;

--hourGroupSize = FOREACH hourGroup GENERATE group , COUNT(purchaseData);

--hourGroupOrder = ORDER hourGroupSize BY $1 DESC;

--topHours =  LIMIT hourGroupOrder 10;



--dayGroup = GROUP purchaseData BY dayPurch;	

--dayGroupSize = FOREACH dayGroup GENERATE group , COUNT(purchaseData);

--dayGroupOrder = ORDER dayGroupSize BY $1 DESC;

--topDays =  LIMIT dayGroupOrder 10;


DUMP useData;










