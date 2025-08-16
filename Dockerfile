FROM node:14

# Sử dụng Node.js phiên bản 14 làm hình ảnh cơ sở

# Tạo thư mục làm việc
WORKDIR /usr/src/app

# Sao chép file package.json và package-lock.json, sau đó cài đặt các dependencies cần thiết
COPY package*.json ./
RUN npm install --production

# Sao chép toàn bộ mã nguồn ứng dụng vào hình ảnh
COPY . .

# Cho phép truy cập vào cổng 5000, nơi ứng dụng sẽ hoạt động
EXPOSE 5000

# Lệnh khởi động ứng dụng khi hình ảnh được chạy
CMD [ "node", "backend/server.js" ]