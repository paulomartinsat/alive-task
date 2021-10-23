json.extract! inventory, :id, :manufacturer, :model, :color, :carrier_plan_type, :quantity, :price, :created_at, :updated_at
json.url inventory_url(inventory, format: :json)
