json.extract! item, :id, :name, :color, :width, :height, :img_url, :created_at, :updated_at
json.url item_url(item, format: :json)
