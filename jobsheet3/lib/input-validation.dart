bool validasiInput(double tinggi, double berat) {
  if (tinggi <= 0 || berat <= 0) {
    print("Input tidak valid: tinggi dan berat harus lebih besar dari 0.");
    return false;
  }
  return true;
}
