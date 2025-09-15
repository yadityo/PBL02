const nama = prompt("Masukkan Nama Anda: ");
const NIP = prompt("Masukkan NIP Anda: ");

// Tanggal Lahir
const tanggalLahirRaw = NIP.substring(0, 8);
const tahun = parseInt(tanggalLahirRaw.substring(0, 4));
const bulan = parseInt(tanggalLahirRaw.substring(4, 6)) - 1; // bulan dimulai dari 0
const tanggal = parseInt(tanggalLahirRaw.substring(6, 8));
const dateObj = new Date(tahun, bulan, tanggal);
const namaHari = [
  "Minggu",
  "Senin",
  "Selasa",
  "Rabu",
  "Kamis",
  "Jumat",
  "Sabtu",
];
const namaBulan = [
  "Januari",
  "Februari",
  "Maret",
  "April",
  "Mei",
  "Juni",
  "Juli",
  "Agustus",
  "September",
  "Oktober",
  "November",
  "Desember",
];

const tanggalLahir = `${namaHari[dateObj.getDay()]}, ${tanggal} ${
  namaBulan[bulan]
} ${tahun}`;

// Tanggal ASN
const tanggalASNRaw = NIP.substring(8, 14);
const tahunASN = parseInt(tanggalASNRaw.substring(0, 4));
const bulanASN = parseInt(tanggalASNRaw.substring(4, 6)) - 1; // bulan dimulai dari 0
const tanggalASN = `${namaBulan[bulanASN]} ${tahunASN}`;

// Jenis Kelamin
const jenisKelamin = ["Pria", "Wanita"];
const jenisKelaminRaw = NIP.substring(14, 15) - 1;
const jenisKelaminASN = jenisKelamin[jenisKelaminRaw];
console.log(jenisKelaminASN);

// No Urut
const noUrut = NIP.substring(15, 18);

const namaEl = document.getElementById("nama");
namaEl.innerText = nama;
const lahirEl = document.getElementById("lahir");
lahirEl.innerText = tanggalLahir;
const asnEl = document.getElementById("asn");
asnEl.innerText = tanggalASN;
const genderEl = document.getElementById("kelamin");
genderEl.innerText = jenisKelaminASN;
const urutEl = document.getElementById("urut");
urutEl.innerText = noUrut;
