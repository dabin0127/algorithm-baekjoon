SELECT b.TITLE, r.BOARD_ID, r.REPLY_ID, r.WRITER_ID, r.CONTENTS, DATE_FORMAT(r.CREATED_DATE, "%Y-%m-%d") as CREATED_DATE
FROM USED_GOODS_REPLY as r
INNER JOIN USED_GOODS_BOARD as b
ON r.BOARD_ID = b.BOARD_ID
WHERE YEAR(b.CREATED_DATE) = 2022 AND MONTH(b.CREATED_DATE) = 10
ORDER BY r.CREATED_DATE, b.TITLE