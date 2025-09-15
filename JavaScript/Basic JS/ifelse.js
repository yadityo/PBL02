// const a = 12;

// if (a >= 10 && a <= 20) console.log("1: between 10 and 20");
// else console.log("1: not between 10 and 20");

// if (a < 10 || a > 20) console.log("2: not between 10 and 20");
// else console.log("2: between 10 and 20");

// if (!(a >= 10 && a <= 20)) console.log("3: not between 10 and 20");
// else console.log("3: between 10 and 20");

// ================================

// const number_random = Math.random();
// const input = 0.1;
// const number_input = parseFloat(input);
// const distance = Math.abs(number_random - number_input);

// if (input == null) console.log("Cancel");
// else if (input == "") console.log("No input");
// else if (isNaN(input)) console.log("No valid number");
// else if (number_input < 0 || number_input > 1)
//   console.log("No number in the valid range");
// else if (distance < 0.1) console.log("You are close");
// else console.log("You are far off");

// console.log("Random: " + number_random + "");
// console.log("Input: " + number_input + "");
// console.log("isNaN: " + isNaN(input) + "");
// console.log("isNull: " + (input == null) + "");
// console.log("isEmpty: " + (input == "") + "");
// console.log("Difference: " + distance);

// ================================

// const a = 4711;
// const b = "4711";
// const c = 4711;
// const d = true;

// console.log("a: " + a + ", " + typeof a + " ");
// console.log("b: " + b + ", " + typeof b + " ");
// console.log("c: " + c + ", " + typeof c + " ");
// console.log("d: " + d + ", " + typeof d + " ");

// if (a == b) console.log("a == b ");
// if (a === b) console.log("a === b ");
// else console.log("a !== b ");

// =================================

const NIP = "197209172005011002";

// tanggalLahirRaw: "19720917" (format: YYYYMMDD)
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
const jenisKelamin = ["Pria", "Wanita"];

const tanggalLahir = `${namaHari[dateObj.getDay()]}, ${tanggal} ${
  namaBulan[bulan]
} ${tahun}`;

const tanggalASNRaw = NIP.substring(8, 14);
const tahunASN = parseInt(tanggalASNRaw.substring(0, 4));
const bulanASN = parseInt(tanggalASNRaw.substring(4, 6)) - 1; // bulan dimulai dari 0
const tanggalASN = `${namaBulan[bulanASN]} ${tahunASN}`;

const jenisKelaminRaw = NIP.substring(14, 15) - 1;
const jenisKelaminASN = jenisKelamin[jenisKelaminRaw];
console.log(jenisKelaminASN);

console.log(NIP.substring(15, 18));
