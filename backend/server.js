const express = require('express');
const mongoose = require('mongoose');
const bodyParser = require('body-parser');

const app = express();
const PORT = process.env.PORT || 5000;

mongoose.connect('mongodb://localhost:27017/sinhvien', { useNewUrlParser: true, useUnifiedTopology: true })
  .then(() => console.log('Kết nối MongoDB thành công.'))
  .catch(err => console.error('Kết nối MongoDB thất bại:', err));

app.use(bodyParser.json());

app.get('/', (req, res) => {
  res.send('Chào mừng đến với API quản lý sinh viên!');
});

app.listen(PORT, () => {
  console.log(`Server đang chạy tại http://localhost:${PORT}`);
});