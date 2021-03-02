import swal from "sweetalert";

const initSweetalert = (selector, options = {}, callback = () => {}) => {
  const swalButton = document.querySelectorAll(selector);
  if (swalButton) {
    // protect other pages
    swalButton.forEach((button) => {
      button.addEventListener("click", () => {
        swal(options).then(callback); // <-- add the `.then(callback)`
      });
    });
  }
};

export { initSweetalert };
