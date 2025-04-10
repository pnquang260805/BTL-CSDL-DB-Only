
# __BÀI TẬP LỚN CƠ SỞ DỮ LIỆU__

Đây là phiên bản chỉ có mình phần database và script tạo dữ liệu giả về một cơ sở dữ liệu liên quan đến thương mại điện tử.

## __Thiết kế database__
### __Conceptual ERD__
![Conceptual ERD](/database_desgin/ERD%20E-commerce.jpg)
### __Database Schema__
![Database Schema](/database_desgin/Entity%20Relationships%20Schema.jpg)
### __Physical ERD__
![Physical ERD](/database_desgin/physical%20erd.png)

## __Yêu cầu cài đặt__
+ Git
+ Docker và Docker compose
+ Python
+ Pip

## __Hướng dẫn sử dụng__
Mở terminal và tải repository về
```
git clone https://github.com/pnquang260805/BTL-CSDL-DB-Only.git
```

Chuyển đường dẫn đển thư mục BTL-CSDL-DB-Only

```
cd ./BTL-CSDL-DB-Only
```
Cài đặt các thư viện cần thiết
```
pip install -r "./requirements.txt"
```

Bật Docker và chạy file docker-compose.yml
```
docker-compose up -d
```
Kết nối với MySQL bằng username ```ptit``` và mật khẩu ```ptit```

Vào file sql/create_table và tiến hành tạo bảng

Vào file src/generator.ipynb chọn ```Run All``` để tiến hành insert dữ liệu vào database

Các kịch bản truy vấn sẽ update sau
