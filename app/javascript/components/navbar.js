const initUpdateNavBarScroll = () => {
  const navbar = document.querySelector(".not-home-navbar");

  if (navbar) {
    if (window.location.pathname === "/") {
      navbar.classList.remove("not-home-navbar");
      navbar.classList.add("home-navbar");

      window.addEventListener("scroll", () => {
        if (window.scrollY >= window.innerHeight) {
          navbar.classList.add("home-navbar-white");
        } else {
          navbar.classList.remove("home-navbar-white");
        }
      });
    }
  }
};

export { initUpdateNavBarScroll };
