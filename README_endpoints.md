#  Obtener un listado de órdenes
GET /api/v1/orders
index orders
curl -s http://localhost:3000/api/v1/orders | jq

# Obtener una orden por ID
GET /api/v1/orders/:id
show orders
curl -s http://localhost:3000/api/v1/orders/1 | jq

#Modificar estado de pago de una orden / modificar estado de despacho de una orden

curl -i -X PATCH                                        \
       -H 'Content-Type: application/json'              \
       -H 'X-User-Email: ok_larson@kiehn.net'               \
       -H 'X-User-Token: 9HQz-yGkCGRCHKzTHYtP'          \
       -d '{ "order": { "order_status": "entregada", "delivery_date": "2021-03-03" } }'    \
       http://localhost:3000/api/v1/orders/3

curl -i -X PATCH                                        \
       -H 'Content-Type: application/json'              \
       -H 'X-User-Email: roy_runolfsson@kuhic-gleichner.co'               \
       -H 'X-User-Token: c9RLD_VnKivAYRa_x51y'          \
       -d '{ "order": { "order_status": "en preparación" } }'    \
       http://localhost:3000/api/v1/orders/29

curl -i -X PATCH                                        \
       -H 'Content-Type: application/json'              \
       -H 'X-User-Email: roy_runolfsson@kuhic-gleichner.co'               \
       -H 'X-User-Token: c9RLD_VnKivAYRa_x51y'          \
       -d '{ "order": { "payment_status": "pagada", "payment_date": "2021-03-03" } }'    \
       http://localhost:3000/api/v1/orders/31

curl -i -X PATCH                                        \
       -H 'Content-Type: application/json'              \
       -H 'X-User-Email: roy_runolfsson@kuhic-gleichner.co'               \
       -H 'X-User-Token: c9RLD_VnKivAYRa_x51y'          \
       -d '{ "order": { "payment_status": "no pagada" } }'    \
       http://localhost:3000/api/v1/orders/25

#Crear una orden nueva orden

curl -i -X POST                                                              \
     -H 'Content-Type: application/json'                                     \
     -H 'X-User-Email: ok_larson@kiehn.net'                                      \
     -H 'X-User-Token: 9HQz-yGkCGRCHKzTHYtP'                                 \
     -d '{ "order": { "amount": "1500", "payment_status": "pendiente de pago", "order_status": "en preparación", "user_id":"1" } }' \
     http://localhost:3000/api/v1/orders

#Eliminar una orden

curl -i -X DELETE                               \
     -H 'X-User-Email: colby.upton@dooley.co'         \
     -H 'X-User-Token: aCy95pJhxqbxzvB8HRzj'    \
     http://localhost:3000/api/v1/orders/50
