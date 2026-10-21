CREATE DATABASE IF NOT EXISTS task_manager;
USE task_manager;

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(20) NOT NULL DEFAULT 'admin'
);

CREATE TABLE IF NOT EXISTS tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    status VARCHAR(20) NOT NULL DEFAULT 'Pending',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- username: admin | password: admin123
INSERT INTO users (username, password, role) VALUES
('admin', '$2y$10$YWfpTrkp5H.jAJ4J2cpopO1pc/XWDyYijxeXOiyVU4QrdW2xPNWkS', 'admin');

INSERT INTO tasks (title, description, status) VALUES
('Sample task', 'Ito ay sample task lang.', 'Pending');