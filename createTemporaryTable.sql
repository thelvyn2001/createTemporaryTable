/* TEMPARY TABLE */

CREATE TABLE #person_address (
	Address		VARCHAR(60),
	ProvinceId	INT,
	City		VARCHAR(30)
)

insert into #person_address
SELECT AddressLine1, StateProvinceID, City
FROM Person.Address

select * from #person_address

DROP TABLE #person_address

select * from Person.Address
