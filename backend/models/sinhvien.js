const mongoose = require('mongoose');

const SinhVienSchema = new mongoose.Schema({
  ten: { type: String, required: true },
  tuoi: { type: Number, required: true },
  lop: { type: String, required: true },
  diem: { type: Number, required: true }
});

module.exports = mongoose.model('SinhVien', SinhVienSchema);