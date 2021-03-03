#  Obtener un listado de órdenes
GET /api/v1/orders
index orders
curl -s http://localhost:3000/api/v1/orders | jq

# Obtener una orden por ID
GET /api/v1/orders/:id
show orders
curl -s http://localhost:3000/api/v1/orders/57 | jq
