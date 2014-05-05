json.array!(@items) do |item|
  json.extract! item, :id, :user_id, :item_name, :item_type, :item_color, :item_date_owned, :quantity, :size
  json.url item_url(item, format: :json)
end
