-- Update existing products to use correct image paths
UPDATE add_prod 
SET Image = 'images/' + SUBSTRING(Image, CHARINDEX('/', Image) + 1, LEN(Image))
WHERE Image LIKE 'Admin/images/%';

-- Check the updated results
SELECT Id, Image, Name FROM add_prod;


