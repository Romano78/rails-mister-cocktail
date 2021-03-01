const alertDismissible = document.querySelector(".alert-dismissible");

const initFlash = () => {
  if (alertDismissible) {
    setTimeout(() => {
      alertDismissible.style.display = "none";
    }, 1000);
  }
};

export { initFlash };
