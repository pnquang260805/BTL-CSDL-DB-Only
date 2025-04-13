USE e_commerce;

CREATE TABLE IF NOT EXISTS countries(
    country_id INT AUTO_INCREMENT NOT NULL,
    country_name VARCHAR(255),
    PRIMARY KEY(country_id)
);

CREATE TABLE IF NOT EXISTS addresses(
    address_id INT AUTO_INCREMENT NOT NULL,
    address_line_1 VARCHAR(255) NOT NULL,
    address_line_2 VARCHAR(255),
    street VARCHAR(255),
    city VARCHAR(255),
    country_id INT NOT NULL,
    PRIMARY KEY(address_id),
    FOREIGN KEY(country_id) REFERENCES countries(country_id)
);

CREATE TABLE IF NOT EXISTS customers(
    customer_id INT AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    date_of_birth DATE NOT NULL,
    email VARCHAR(100) NOT NULL,
    gender VARCHAR(10) NOT NULL,
    password VARCHAR(30),

    PRIMARY KEY(customer_id)
);


CREATE TABLE IF NOT EXISTS customer_address(
    customer_id INT NOT NULL,
    address_id INT NOT NULL,
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY(address_id) REFERENCES addresses(address_id)
);

CREATE TABLE IF NOT EXISTS orders(
    order_id INT AUTO_INCREMENT NOT NULL,
    customer_id INT NOT NULL,
    order_date DATE,
    total_amount DECIMAL(10,2),
    status VARCHAR(20),

    PRIMARY KEY(order_id),
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);


CREATE TABLE IF NOT EXISTS suppliers(
    supplier_id INT NOT NULL AUTO_INCREMENT,
    supplier_name VARCHAR(255) NOT NULL,
    country VARCHAR(255),

    PRIMARY KEY(supplier_id)
);

CREATE TABLE IF NOT EXISTS categories(
    category_id INT NOT NULL AUTO_INCREMENT,
    category_name VARCHAR(100),
    description VARCHAR(255),
    tag VARCHAR(25),

    PRIMARY KEY(category_id)
);

CREATE TABLE IF NOT EXISTS products(
    product_id INT AUTO_INCREMENT NOT NULL,
    product_name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2),
    quantity_in_stock INT,
    image_url VARCHAR(255),
    supplier_id INT NOT NULL,

    PRIMARY KEY(product_id),
    FOREIGN KEY(supplier_id) REFERENCES suppliers(supplier_id)
);

CREATE TABLE IF NOT EXISTS product_category(
    product_id INT NOT NULL,
    category_id INT NOT NULL,

    FOREIGN KEY(product_id) REFERENCES products(product_id),
    FOREIGN KEY(category_id) REFERENCES categories(category_id)
);

CREATE TABLE IF NOT EXISTS order_product(
    product_id INT NOT NULL,
    order_id INT NOT NULL,
    number_of_product INT NOT NULL,
    FOREIGN KEY(product_id) REFERENCES products(product_id),
    FOREIGN KEY(order_id) REFERENCES orders(order_id)
);

CREATE TABLE IF NOT EXISTS reviews(
    review_id INT NOT NULL AUTO_INCREMENT,
    product_id INT NOT NULL,
    star VARCHAR(10),
    review VARCHAR(255),
    
    PRIMARY KEY(review_id, product_id), 
    FOREIGN KEY(product_id) REFERENCES products(product_id)
);