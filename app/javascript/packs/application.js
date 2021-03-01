// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs";
import Turbolinks from "turbolinks";
import * as ActiveStorage from "@rails/activestorage";
import "channels";
import "bootstrap";
import { initUpdateNavBarScroll } from "../components/navbar";
import { initSelect2 } from "../components/select2";
import { initSweetalert } from "../components/sweetAlert";
import { initFlash } from "../components/flash";

Rails.start();
Turbolinks.start();
ActiveStorage.start();

document.addEventListener("turbolinks:load", () => {
  initUpdateNavBarScroll();
  initSelect2();
  initFlash();

  initSweetalert(
    "#sweet-alert-demo",
    {
      title: "Are you sure?",
      text:
        "Once deleted, you will not be able to recover this imaginary file!",
      icon: "warning",
      buttons: true,
      dangerMode: true,
    },
    (value) => {
      if (value) {
        swal("Poof! Your imaginary file has been deleted!", {
          icon: "success",
        });
        setTimeout(() => {
          const link = document.querySelector("#delete-link");
          link.click();
        }, 1500);
      } else {
        swal("Your imaginary file is safe!");
      }
    }
  );
});
