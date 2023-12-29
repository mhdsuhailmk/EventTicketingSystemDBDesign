-- Q1. No of tickets sold for the event “Mohanlal Filmshow” held on Jan 12th 2023

SELECT COUNT(otm.TicketID) AS Number_Of_Tickets
FROM Orders_Tickets_Mapping otm
JOIN Events_Tickets_Mapping etm ON otm.TicketID = etm.TicketID
JOIN Events e ON etm.EventID = e.EventID
WHERE e.Name = 'Mohanlal Filmshow' AND Date = '2023-01-12';


-- Q2. List the customer who have booked Seat no 12 at ” Lulu PVR” on Jan 12th 2023

SELECT u.username
FROM users u
JOIN Orders o ON u.UserID = o.UserID
JOIN Orders_Tickets_Mapping ot ON o.OrderID = ot.OrderID
JOIN Seats s ON ot.SeatID = s.SeatID
JOIN Events_Venue_Mapping evm ON o.EventID = evm.EventID
JOIN Venue v ON evm.VenueID = v.VenueID
WHERE v.Name = 'Lulu PVR'
  AND DATE(o.PurchaseDate) = '2023-01-12'
  AND s.SeatNumber = 12;
