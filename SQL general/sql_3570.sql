# Write your MySQL query statement below
select l.book_id, l.title, l.author, l.genre, l.publication_year, l.total_copies as current_borrowers 
From Library_books l
join borrowing_records b
on l.book_id = b.book_id
and b.return_date is null
group by l.book_id
having count(*) = l.total_copies
order by l.total_copies desc, l.title
