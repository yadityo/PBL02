let input = prompt("Masukkan input warna lampu (misal: Merah, Kuning, Hijau)", "hijau").toLowerCase()
let laluLintas;

if (input == "hijau")
    laluLintas = "Kendaraan Silahkan Berjalan"
else if (input == "kuning")
    laluLintas = "Kendaraan berhati-hati"
else if (input == "merah")
    laluLintas = "Kendaraan berhenti"
else
    laluLintas = "Mohon maaf input anda salah, silahkan refresh dan lakukan input kembali dengan warna yang benar"

document.write("<h1>" + laluLintas + "</h1>")

