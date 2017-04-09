mysqldump -uroot -proot new_schema>bak.sql
mysqldump -uroot -proot new_schema teacher>bak_teacher.sql
mysqldump -hlocalhost -uroot -proot --databases new_schema>file.dump
