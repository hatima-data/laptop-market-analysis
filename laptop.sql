select*from laptop_data;

select 
	"Brand"
	from laptop_data

select "Rating" from laptop_data;

select
	"Brand",
	sum("Price")
	from laptop_data
	group by "Brand"
	order by sum("Price") desc;


select
	"Brand",
	max("Price")
	from laptop_data
	group by "Brand";

select
	"Brand",
	min("Price")
	from laptop_data
	group by "Brand";


select
	"Brand",
	avg("Price")
	from laptop_data
	group by "Brand";


select
	"Brand",
	"Price"
	from laptop_data
	group by "Brand", "Price";


select
	"Brand",
	count("Graphics_brand")
	from laptop_data
	group by "Brand";

Select
	"Graphics_brand",
	count("Graphics_brand")
	from laptop_data
	group by "Graphics_brand"
	order by count("Graphics_brand") desc;

select
	"Brand",
	count("Brand")
	from laptop_data
	group by "Brand"
	order by count("Brand") desc;
	

select
	"RAM_GB",
	count("RAM_GB")
	from laptop_data
	group by "RAM_GB"
	order by  "RAM_GB" desc;


select
	"RAM_GB",
	round(avg("Price"),2)
	from laptop_data
	group by "RAM_GB"
	order by round(avg("Price"),2) desc;


select
	"Price"
	from laptop_data
	where "Price">25000
	order by "Price" desc


select 
	"RAM_GB",
	count(*),
	round(avg("Price"),2)
	from laptop_data
	group by "RAM_GB"
	order by "RAM_GB";
	

select
	case
		when "Price" <40000 then 'Budget'
		when "Price" between 40000 and 80000 then 'Mid-Range'
		else 'Premium'
		end as price_category,
		count(*) as laptop_count
		from laptop_data
		group by price_category
		order by laptop_count desc




