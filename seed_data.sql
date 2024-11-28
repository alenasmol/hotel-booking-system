-- Добавить отели
INSERT INTO Hotels (name, location, rating) VALUES
('Ocean View Hotel', 'Miami', 4.5),
('Mountain Escape', 'Denver', 4.2);

-- Добавить номера
INSERT INTO Rooms (hotel_id, room_type, price_per_night, availability_status) VALUES
(1, 'Single', 100.00, 'available'),
(1, 'Double', 150.00, 'available'),
(2, 'Suite', 250.00, 'booked');

-- Добавить клиентов
INSERT INTO Customers (name, email, phone_number) VALUES
('John Doe', 'john@example.com', '123-456-7890'),
('Jane Smith', 'jane@example.com', '987-654-3210');

-- Добавить бронирования
INSERT INTO Bookings (customer_id, room_id, check_in_date, check_out_date, total_price) VALUES
(1, 3, '2024-12-01', '2024-12-05', 1000.00);
