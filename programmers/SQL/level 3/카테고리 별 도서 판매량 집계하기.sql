SELECT B.CATEGORY AS CATEGORY, SUM(A.SALES) AS TOTAL_SALES
FROM BOOK_SALES AS A LEFT JOIN BOOK AS B
     ON A.BOOK_ID = B.BOOK_ID
WHERE YEAR(A.SALES_DATE) = '2022' AND MONTH(A.SALES_DATE) = '01'
GROUP BY B.CATEGORY
ORDER BY CATEGORY ASC ;