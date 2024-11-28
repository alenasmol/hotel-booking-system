-- Найти все доступные номера
SELECT * FROM Rooms WHERE availability_status = 'available';

-- Добавить нового клиента
INSERT INTO Customers (name, email, phone_number) VALUES ('Alice Brown', 'alice@example.com', '456-789-0123');

-- Обновить статус номера
UPDATE Rooms SET availability_status = 'booked' WHERE room_id = 1;

-- Удалить бронирование
DELETE FROM Bookings WHERE booking_id = 1;
