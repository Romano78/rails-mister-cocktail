const alertDismissible = document.querySelector(".alert-dismissible");

console.log(alertDismissible);
const initFlash = () => {
  if (alertDismissible) {
    setTimeout(() => {
      alertDismissible.style.display = "none";
    }, 1000);
  }
};

export { initFlash };
