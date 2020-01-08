DELETE FROM users;
INSERT INTO users (name, email, password)
VALUES ('edison', 'edison.cy.yang@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('tim', 'tim@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('jim', 'jim@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active)
VALUES
(4, 'Nanoose Bay house', 'description', 'https://image.shutterstock.com/image-vector/example-red-square-grunge-stamp-260nw-327662909.jpg', 'https://image.shutterstock.com/image-vector/example-red-square-grunge-stamp-260nw-327662909.jpg', 70, 2, 3, 4, 'Canada', 'Granville st', 'Nanaimo', 'BC', 'V6T 2K2', true),
(5, 'Vancouver house', 'description', 'https://image.shutterstock.com/image-vector/example-red-square-grunge-stamp-260nw-327662909.jpg', 'https://image.shutterstock.com/image-vector/example-red-square-grunge-stamp-260nw-327662909.jpg', 150, 2, 3, 4, 'Canada', 'Granville st', 'Vancouver', 'BC', 'V6T 2K2', true),
(6, 'Burnaby house', 'description', 'https://image.shutterstock.com/image-vector/example-red-square-grunge-stamp-260nw-327662909.jpg', 'https://image.shutterstock.com/image-vector/example-red-square-grunge-stamp-260nw-327662909.jpg', 100, 2, 3, 4, 'Canada', 'Granville st', 'Burnaby', 'BC', 'V6T 2K2', true);

INSERT INTO reservations (start_date, end_date, property_id, guest_id)
VALUES
('2019-07-25', '2019-07-28', 2, 5),
('2020-01-02', '2020-01-04', 2, 6),
('2019-12-20', '2019-12-25', 3, 4);

INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES (5, 2, 1, 5, 'great'),
(6, 2, 2, 5, 'great'),
(4, 3, 3, 5, 'good');