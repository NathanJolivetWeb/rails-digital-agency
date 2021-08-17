

const initDropdownNavbar = () => {
  const avatar = document.querySelector('.avatar')

  if (avatar) {
     const dropdown = document.querySelector('.dropdownmenu')
     avatar.addEventListener('click', () => {
       dropdown.classList.toggle('d-none')
     })
  }
}

export { initDropdownNavbar }
