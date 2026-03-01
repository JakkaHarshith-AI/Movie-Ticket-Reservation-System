-- Insert Users
INSERT INTO Users (name, email)
VALUES 
('Harshith', 'harshith@email.com'),
('Rahul', 'rahul@email.com');

-- Insert Movies
INSERT INTO Movies (title, show_time, available_seats)
VALUES
('Avengers', '2026-03-10 18:00:00', 50),
('Inception', '2026-03-10 21:00:00', 40);

-- Book Ticket
INSERT INTO Bookings (user_id, movie_id, seat_number)
VALUES (1, 1, 'A10');

-- Reduce available seats after booking
UPDATE Movies
SET available_seats = available_seats - 1
WHERE movie_id = 1;

-- View All Bookings
SELECT 
    Users.name,
    Movies.title,
    Bookings.seat_number,
    Bookings.booking_time
FROM Bookings
JOIN Users ON Bookings.user_id = Users.user_id
JOIN Movies ON Bookings.movie_id = Movies.movie_id;
