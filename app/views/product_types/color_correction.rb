temp = ProductColor.find_by_id(14)
temp.rgb = "#b5a53f"
temp.save

prd = ProductType.find_by_id(12)
prd.name = ...
prd.description = ...
prd.save