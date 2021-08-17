const initDropdownNavbar = () => {
  const avatar = document.querySelector(".avatar")

  if (avatar) {
    const dropdown = document.querySelector(".dropdownmenu")

    window.addEventListener('click', (event) => {
      console.log(event.target)
      if (event.target == avatar) {
        dropdown.classList.toggle("d-none")
      }
      else {
        dropdown.classList.add("d-none")
      }
    });
  }
}

export { initDropdownNavbar };
