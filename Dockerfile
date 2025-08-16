FROM node:14

# Tạo thư mục làm việc
WORKDIR /usr/src/app

# Sao chép package.json và cài đặt dependencies
COPY package*.json ./
RUN npm install

# Sao chép mã nguồn ứng dụng
COPY . .

# Expose cổng ứng dụng
EXPOSE 5000

# Lệnh khởi động ứng dụng
CMD [ "node", "backend/server.js" ]