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

/* Create ant insert with other tables
Base AdventureWordk2019 */
create table #product (
	productId	int			not null,
	name		varchar(50) null,
	number		varchar(25) null ,
	ListPrice	money		null,
	idCategory	int			null,
	category	varchar(50)			null
)

insert into #product
select ProductId, Name, ProductNumber, null, ProductSubcategoryID, null
from Production.Product


update #product
set #product.ListPrice = Product.ListPrice
from Production.Product
where #product.productId = Product.ProductID


update #product
set category = pdtCat.Name
from Production.ProductCategory pdtCat
where idCategory = pdtCat.ProductCategoryID

select * from #product
--where name like 'a%'


drop table #product


