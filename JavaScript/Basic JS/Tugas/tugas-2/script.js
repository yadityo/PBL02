const inputNama = getValidInputName("Masukkan Nama Anda : ");
const inputJenisKelamin = getValidInputGender(
  "Masukkan Jenis Kelamin Anda (Pria/Wanita) : "
);
const inputStatus = getValidInputStatus(
  "Masukkan Status Anda (Sendiri/Kawin/Cerai) : "
);
let keterangan = "";

// keterangan sendiri
if (inputStatus === "sendiri") {
  if (inputJenisKelamin === "wanita") {
    keterangan = "Perawan";
  } else if (inputJenisKelamin === "pria") {
    keterangan = "Perjaka";
  }
}

// keterangan kawin
if (inputStatus === "kawin") {
  keterangan = "Menikah";
}

// keterangan cerai
if (inputStatus === "cerai") {
  if (inputJenisKelamin === "wanita") {
    keterangan = "Janda";
  } else if (inputJenisKelamin === "pria") {
    keterangan = "Duda";
  }
}

// cetak keterangan
document.getElementById("keterangan").innerHTML = `
      <table border="1" cellpadding="32" cellspacing="0">
      <thead>
        <tr>
          <th>Nama</th>
          <th>Jenis Kelamin</th>
          <th>Status</th>
          <th>Keterangan</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>${capitalizeFirstLetter(inputNama)}</td>
          <td>${capitalizeFirstLetter(inputJenisKelamin)}</td>
          <td>${capitalizeFirstLetter(inputStatus)}</td>
          <td>${keterangan}</td>
        </tr>
      </tbody>
    </table>
      `;

function getValidInputName(inputName) {
  let input = "";
  do {
    input = prompt(inputName);
    if (input === null || input.trim() === "") {
      alert("Input tidak boleh kosong! Silahkan isi kembali");
    }
  } while (input === null || input.trim() === "");
  return input.toLowerCase();
}

function getValidInputGender(inputGender) {
  let input = "";
  do {
    input = prompt(inputGender);
    if (input === null || input.trim() === "") {
      alert("Input tidak boleh kosong! Silahkan isi kembali");
    } else if (
      input.toLowerCase() !== "pria" &&
      input.toLowerCase() !== "wanita"
    ) {
      alert("Jenis kelamis harus diisi Pria atau Wanita!");
      input = "";
    }
  } while (input === null || input.trim() === "");
  return input.toLowerCase();
}

function getValidInputStatus(inputStatus) {
  let input = "";
  do {
    input = prompt(inputStatus);
    if (input === null || input.trim() === "") {
      alert("Input tidak boleh kosong! Silahkan isi kembali");
    } else if (
      input.toLowerCase() !== "sendiri" &&
      input.toLowerCase() !== "kawin" &&
      input.toLowerCase() !== "cerai"
    ) {
      alert("Status harus diisi Sendiri, Kawin, atau Cerai!");
      input = "";
    }
  } while (input === null || input.trim() === "");
  return input.toLowerCase();
}

function capitalizeFirstLetter(string) {
  return string.charAt(0).toUpperCase() + string.slice(1);
}
