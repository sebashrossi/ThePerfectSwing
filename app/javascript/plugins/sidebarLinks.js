const activeLinks = () => {
  const ul = document.querySelector('.top-links')
  const li = ul.querySelectorAll('li')
  li.forEach((item) => {
    item.addEventListener('click', () => {
      const active = ul.querySelector('.active')
      active.classList.remove('active')
      item.classList.add('active')
    });
  })
};

export { activeLinks };
