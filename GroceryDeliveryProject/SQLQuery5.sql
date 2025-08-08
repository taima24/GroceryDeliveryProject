alter table Products
add constraint fk_products_categories
foreign key (CategoryId) references Categories(Id);

alter table CartItems
add constraint fk_cartitems_users
foreign key (UserId) references Users(Id);

alter table CartItems
add constraint fk_cartitems_products
foreign key (ProductId) references Products(Id);

alter table Orders
add constraint fk_orders_users
foreign key (UserId) references Users(Id);

alter table OrderItems
add constraint fk_orderitems_orders
foreign key (OrderId) references Orders(Id);

alter table OrderItems
add constraint fk_orderitems_Products
foreign key (ProductId) references Products(Id);