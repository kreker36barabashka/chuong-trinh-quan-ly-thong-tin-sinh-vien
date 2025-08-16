FROM node:14

# Sử dụng Node.js phiên bản 14 làm hình ảnh cơ sở

# Tạo thư mục làm việc
WORKDIR /usr/src/app

# Sao chép package.json và cài đặt dependencies
COPY package*.json ./
RUN npm install --production

# Sao chép mã nguồn ứng dụng vào trong hình ảnh
COPY . .

# Cho phép truy cập vào cổng 5000
EXPOSE 5000

# Lệnh khởi động ứng dụng khi hình ảnh được chạy
CMD [ "node", "backend/server.js" ]