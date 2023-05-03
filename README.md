# School_database-IT004
Đồ án 1

Hãy nghiên cứu Cổng dữ liệu quốc gia (Mục Danh sách các trường học tại TP. Hồ Chí Minh) được công bố tại https://open.data.gov.vn/dataset/danh-sach-tru-ng-h-c-t-nh-h-chi-minh và tải về các file EXCEL.

Phần 1: 

a.	Hãy xây dựng sơ đồ lược đồ CSDL TRUONGHOC (Trường học) mà bạn cho là hợp lý, gồm các lược đồ quan hệ, các khóa chính, các khóa ngoại (tương tự như Sơ đồ tại trang 11, chương 3 https://courses.uit.edu.vn/mod/resource/view.php?id=164032)

b.	Hãy viết script file CreateSchema.sql, để khi thực hiện câu lệnh mysql –u root –p < CreateSchema.sql từ shell, có thể tạo ra CSDL tên TRUONGHOC với tất cả các table kèm theo các ràng buộc PRIMARY KEY, FOREIGN KEY, NOT NULL đã xác định ở Câu 1.

Phần 2. 

Hãy viết chương trình bằng ngôn ngữ C++, Python hoặc Java:

-	Input: Đường dẫn đến folder Data chứa các file excel đã tải về.  
-	Output: các file có cùng tên trong Data, nhưng tên mở rộng là .sql: mỗi file .sql gồm các câu lệnh INSERT, khi chạy sẽ cho phép chuyển dữ liệu từ file excel vào table tương ứng trong database TRUONGHOC đã tạo ở Phần 1b.
