json.extract! order, :id, :type, :notes, :customer_id, :tailor_id, :created_at, :updated_at
json.url order_url(order, format: :json)
