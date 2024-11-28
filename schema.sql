-- Таблица для хранения информации об отелях
CREATE TABLE Hotels (
    hotel_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    location TEXT NOT NULL,
    rating REAL
);

-- Таблица для хранения информации о номерах
CREATE TABLE Rooms (
    room_id INTEGER PRIMARY KEY AUTOINCREMENT,
    hotel_id INTEGER NOT NULL,
    room_type TEXT NOT NULL,
    price_per_night REAL NOT NULL,
    availability_status TEXT NOT NULL CHECK(availability_status IN ('available', 'booked')),
    FOREIGN KEY (hotel_id) REFERENCES Hotels(hotel_id)
);

-- Таблица для хранения информации о клиентах
CREATE TABLE Customers (
    customer_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    phone_number TEXT
);

-- Таблица для хранения информации о бронированиях
CREATE TABLE Bookings (
    booking_id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER NOT NULL,
    room_id INTEGER NOT NULL,
    check_in_date DATE NOT NULL,
    check_out_date DATE NOT NULL,
    total_price REAL NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (room_id) REFERENCES Rooms(room_id)
);
