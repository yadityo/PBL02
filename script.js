document.getElementById("downloadBtn").addEventListener("click", () => {
  const element = document.querySelector(".proposal-container");
  html2pdf().from(element).save("Proposal.pdf");
});
